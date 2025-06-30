// // lib/main.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gowagr_assessment/di/injector.dart';
import 'package:gowagr_assessment/features/events/presentation/bloc/public_events_bloc.dart';
import 'package:gowagr_assessment/features/events/presentation/bloc/public_events_event.dart';
import 'package:gowagr_assessment/features/events/presentation/views/qalla_tab_page.dart';
import 'package:gowagr_assessment/features/theme/presentation/app_theme.dart';
import 'package:gowagr_assessment/features/theme/presentation/bloc/theme_bloc.dart';
import 'package:gowagr_assessment/features/theme/presentation/bloc/theme_event.dart';
import 'package:gowagr_assessment/features/theme/presentation/bloc/theme_state.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:google_fonts/google_fonts.dart';

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

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final currentThemeMode =
        context.select((ThemeBloc bloc) => bloc.state.themeMode);

    return Scaffold(
      appBar: AppBar(
        title: Text('Qalla.',
            style: GoogleFonts.archivo(fontWeight: FontWeight.bold)),
        actions: [
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
      body: const QallaTabPage(),
    );
  }
}
