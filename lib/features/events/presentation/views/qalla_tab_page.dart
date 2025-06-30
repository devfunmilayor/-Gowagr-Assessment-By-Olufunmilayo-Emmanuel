import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gowagr_assessment/core/shared/adaptive_loader.dart';
import 'package:gowagr_assessment/features/events/presentation/bloc/public_events_bloc.dart';
import 'package:gowagr_assessment/features/events/presentation/bloc/public_events_event.dart';
import 'package:gowagr_assessment/features/events/presentation/bloc/public_events_state.dart';
import 'package:gowagr_assessment/features/events/presentation/widgets/event_card.dart';
import 'package:gowagr_assessment/features/events/presentation/widgets/event_category_chip.dart';
import 'package:gowagr_assessment/features/events/presentation/widgets/search_input.dart';
import 'package:gowagr_assessment/features/theme/presentation/bloc/theme_bloc.dart';
import 'package:gowagr_assessment/features/theme/presentation/bloc/theme_event.dart';

class QallaTabPage extends StatefulWidget {
  const QallaTabPage({super.key});

  @override
  State<QallaTabPage> createState() => _QallaTabPageState();
}

class _QallaTabPageState extends State<QallaTabPage> {
  final TextEditingController _searchController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  String _selectedCategory = 'Trending';

  final List<String> _topTabs = ['Explore', 'Portfolio', 'Activity'];
  String _selectedTopTab = 'Explore';

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
    _searchController.addListener(_onSearchChanged);
    context.read<PublicEventBloc>().add(PublicEventsEvent.loadEvents(
        initialLoad: true, category: _selectedCategory, keyword: null));
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

    blocState.maybeMap(loaded: (loadedState) {
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
    }, orElse: () {
      if (_searchController.text.isNotEmpty) {
        context
            .read<PublicEventBloc>()
            .add(PublicEventsEvent.searchEvents(_searchController.text));
      }
    });
  }

  void _onCategorySelected(String category) {
    setState(() {
      _selectedCategory = category;
    });
    _searchController.clear();
    context.read<PublicEventBloc>().add(PublicEventsEvent.loadEvents(
          initialLoad: true,
          category: category,
          keyword: null,
        ));
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
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: _buildCustomAppBar(context),
      body: Column(
        children: [
          CustomSearchBar(
            controller: _searchController,
            hintText: 'Search for a market',
            onChanged: (text) {},
          ),
          CategoryFilterChips(
            categories: const [
              'Trending',
              'Watchlist',
              'Entertainment',
              'Sports'
            ],
            selectedCategory: _selectedCategory,
            onSelected: _onCategorySelected,
          ),
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
                  initial: (_) => Center(
                      child: Text('Start exploring events.',
                          style: Theme.of(context).textTheme.bodyLarge)),
                  loading: (_) =>
                      const Center(child: BuildAdaptiveProgressWid()),
                  loadingMore: (loadedState) => ListView.builder(
                    controller: _scrollController,
                    itemCount: loadedState.events.length + 1,
                    itemBuilder: (context, index) {
                      if (index < loadedState.events.length) {
                        return EventCard(event: loadedState.events[index]);
                      } else {
                        return const Padding(
                          padding: EdgeInsets.symmetric(vertical: 16.0),
                          child: Center(child: BuildAdaptiveProgressWid()),
                        );
                      }
                    },
                  ),
                  loaded: (loadedState) {
                    if (loadedState.events.isEmpty) {
                      return Center(
                          child: Text('No events found for this selection.',
                              style: Theme.of(context).textTheme.bodyLarge));
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
                            child: Center(child: BuildAdaptiveProgressWid()),
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
                          Text('Error: ${errorState.message}',
                              style: Theme.of(context).textTheme.bodyLarge),
                          ElevatedButton(
                            onPressed: () {
                              context.read<PublicEventBloc>().add(
                                    const PublicEventsEvent.loadEvents(
                                        initialLoad: true,
                                        category: 'Trending'),
                                  );
                            },
                            child: Text(
                              'Retry',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge
                                  ?.copyWith(
                                    color:
                                        Theme.of(context).colorScheme.onPrimary,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  empty: (emptyState) => Center(
                      child: Text(emptyState.message,
                          style: Theme.of(context).textTheme.bodyLarge)),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  PreferredSizeWidget _buildCustomAppBar(BuildContext context) {
    final currentThemeMode =
        context.select((ThemeBloc bloc) => bloc.state.themeMode);

    return PreferredSize(
      preferredSize: const Size.fromHeight(100.0),
      child: Container(
        color: Theme.of(context).scaffoldBackgroundColor,
        child: Column(
          children: [
            const SizedBox(height: 50.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildLogoContainer(),
                  IconButton(
                    icon: Icon(
                      currentThemeMode == ThemeMode.light
                          ? Icons.dark_mode
                          : Icons.light_mode,
                    ),
                    onPressed: () {
                      context.read<ThemeBloc>().add(ThemeEvent.toggleTheme());
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: _topTabs.map((tab) {
                  final isSelected = _selectedTopTab == tab;
                  return GestureDetector(
                    onTap: () => setState(() => _selectedTopTab = tab),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          tab,
                          style:
                              Theme.of(context).textTheme.bodyLarge?.copyWith(
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 0,
                                    fontSize: 20,
                                    color: isSelected
                                        ? Theme.of(context)
                                            .textTheme
                                            .bodyLarge
                                            ?.color
                                        : Theme.of(context)
                                            .textTheme
                                            .bodySmall
                                            ?.color,
                                  ),
                        )
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
