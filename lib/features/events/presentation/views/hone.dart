// lib/features/events/presentation/pages/home_page.dart (Example)

import 'package:flutter/material.dart';
import 'package:gowagr_assessment/features/events/presentation/views/qalla_tab_page.dart';
// import other tabs if you have them

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this); // Example: 2 tabs
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Scaffold and AppBar implicitly pick up the theme
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gowagr Events'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: 'Public Events'),
            Tab(text: 'Watchlist'), // Example tab
          ],
          labelColor:
              Theme.of(context).colorScheme.primary, // Thematic tab label color
          unselectedLabelColor: Theme.of(context)
              .colorScheme
              .onSurface
              .withOpacity(0.7), // Thematic unselected label color
          indicatorColor:
              Theme.of(context).colorScheme.primary, // Thematic indicator color
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          QallaTabPage(),
          Center(
              child:
                  Text('Watchlist Tab Content')), // Placeholder for watchlist
        ],
      ),
    );
  }
}
