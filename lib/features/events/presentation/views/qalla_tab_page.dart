// lib/features/events/presentation/pages/qalla_tab_page.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gowagr_assessment/features/events/presentation/bloc/public_events_bloc.dart';
import 'package:gowagr_assessment/features/events/presentation/bloc/public_events_event.dart';
import 'package:gowagr_assessment/features/events/presentation/bloc/public_events_state.dart';
import 'package:gowagr_assessment/features/events/presentation/widgets/event_card.dart';

class QallaTabPage extends StatefulWidget {
  const QallaTabPage({super.key});

  @override
  State<QallaTabPage> createState() => _QallaTabPageState();
}

class _QallaTabPageState extends State<QallaTabPage> {
  final TextEditingController _searchController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  String _selectedCategory = 'Trending';

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
    _searchController.addListener(_onSearchChanged);
  }

  void _onScroll() {
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
      context
          .read<PublicEventBloc>()
          .add(const PublicEventsEvent.loadMoreEvents());
    }
  }

  void _onSearchChanged() {
    final blocState = context.read<PublicEventBloc>().state;

    blocState.maybeMap(
      loaded: (loadedState) {
        if (_searchController.text.isEmpty &&
            loadedState.currentKeyword != null) {
          context.read<PublicEventBloc>().add(PublicEventsEvent.loadEvents(
                initialLoad: true,
                category: _selectedCategory,
                keyword: null,
              ));
        } else if (_searchController.text.isNotEmpty &&
            _searchController.text != loadedState.currentKeyword) {
          context
              .read<PublicEventBloc>()
              .add(PublicEventsEvent.searchEvents(_searchController.text));
        }
      },
      orElse: () {
        if (_searchController.text.isNotEmpty) {
          blocState.mapOrNull(
            loading: (_) => null,
            initial: (_) {
              context
                  .read<PublicEventBloc>()
                  .add(PublicEventsEvent.searchEvents(_searchController.text));
            },
            empty: (_) {
              context
                  .read<PublicEventBloc>()
                  .add(PublicEventsEvent.searchEvents(_searchController.text));
            },
            error: (_) {
              context
                  .read<PublicEventBloc>()
                  .add(PublicEventsEvent.searchEvents(_searchController.text));
            },
          );
        }
      },
    );
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    _searchController.removeListener(_onSearchChanged);
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            controller: _searchController,
            decoration: InputDecoration(
              hintText: 'Search for a market',
              prefixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: Theme.of(context).cardColor,
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
            ),
          ),
        ),
        _buildCategoryFilter(),
        Expanded(
          child: BlocConsumer<PublicEventBloc, PublicEventsState>(
            listener: (context, state) {
              state.mapOrNull(
                error: (errorState) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(errorState.message)),
                  );
                },
              );
            },
            builder: (context, state) {
              return state.map(
                initial: (_) =>
                    const Center(child: Text('Start exploring events.')),
                loading: (_) =>
                    const Center(child: CircularProgressIndicator()),
                loadingMore: (loadedState) => ListView.builder(
                  controller: _scrollController,
                  itemCount: loadedState.events.length + 1,
                  itemBuilder: (context, index) {
                    if (index < loadedState.events.length) {
                      return EventCard(event: loadedState.events[index]);
                    } else {
                      return const Padding(
                        padding: EdgeInsets.symmetric(vertical: 16.0),
                        child: Center(child: CircularProgressIndicator()),
                      );
                    }
                  },
                ),
                loaded: (loadedState) {
                  if (loadedState.events.isEmpty) {
                    return const Center(
                        child: Text('No events found for this selection.'));
                  }
                  return ListView.builder(
                    controller: _scrollController,
                    itemCount: loadedState.events.length +
                        (loadedState.pagination.page <
                                loadedState.pagination.lastPage
                            ? 1
                            : 0),
                    itemBuilder: (context, index) {
                      if (index < loadedState.events.length) {
                        return EventCard(event: loadedState.events[index]);
                      } else {
                        return const Padding(
                          padding: EdgeInsets.symmetric(vertical: 16.0),
                          child: Center(child: CircularProgressIndicator()),
                        );
                      }
                    },
                  );
                },
                error: (errorState) {
                  final currentEvents =
                      context.read<PublicEventBloc>().allEvents;
                  if (currentEvents.isNotEmpty) {
                    return ListView.builder(
                      controller: _scrollController,
                      itemCount: currentEvents.length,
                      itemBuilder: (context, index) {
                        return EventCard(event: currentEvents[index]);
                      },
                    );
                  }
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Error: ${errorState.message}'),
                        ElevatedButton(
                          onPressed: () {
                            context.read<PublicEventBloc>().add(
                                const PublicEventsEvent.loadEvents(
                                    initialLoad: true, category: 'Trending'));
                          },
                          child: const Text('Retry'),
                        ),
                      ],
                    ),
                  );
                },
                empty: (emptyState) => Center(child: Text(emptyState.message)),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildCategoryFilter() {
    final categories = ['Trending', 'Watchlist', 'Entertainment', 'Sports'];
    return Container(
      height: 50,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          final isSelected = _selectedCategory == category;
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: ChoiceChip(
              label: Text(category),
              selected: isSelected,
              onSelected: (selected) {
                if (selected) {
                  setState(() => _selectedCategory = category);
                  _searchController.clear();
                  context
                      .read<PublicEventBloc>()
                      .add(PublicEventsEvent.loadEvents(
                        initialLoad: true,
                        category: category,
                      ));
                }
              },
              selectedColor: Theme.of(context).primaryColor.withOpacity(0.2),
              labelStyle: GoogleFonts.archivo(
                color: isSelected
                    ? Theme.of(context).primaryColor
                    : Theme.of(context).textTheme.bodyLarge?.color,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              ),
              backgroundColor: Theme.of(context).cardColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: BorderSide(
                  color: isSelected
                      ? Theme.of(context).primaryColor
                      : Colors.transparent,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
