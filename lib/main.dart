// // lib/main.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gowagr_assessment/di/injector.dart';
import 'package:gowagr_assessment/features/events/presentation/bloc/public_events_bloc.dart';
import 'package:gowagr_assessment/features/events/presentation/bloc/public_events_event.dart';
import 'package:gowagr_assessment/features/events/presentation/views/qalla_tab_page.dart';
import 'package:gowagr_assessment/features/theme/presentation/app_theme.dart';
import 'package:gowagr_assessment/features/theme/presentation/bloc/theme_bloc.dart';
import 'package:gowagr_assessment/features/theme/presentation/bloc/theme_state.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final appDocumentDir = await path_provider.getApplicationDocumentsDirectory();
  Hive.init(appDocumentDir.path);
  await configureDependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => sl<ThemeBloc>()),
        BlocProvider(
          create: (context) => sl<PublicEventBloc>()
            ..add(const PublicEventsEvent.loadEvents(
                initialLoad: true, category: 'Trending')),
        ),
      ],
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, themeState) {
          return MaterialApp(
            title: 'Gowagr Assessment',
            theme: AppTheme.lightTheme(),
            darkTheme: AppTheme.darkTheme(),
            themeMode: themeState.themeMode,
            debugShowCheckedModeBanner: false,
            home: const QallaTabPage(),
          );
        },
      ),
    );
  }
}
