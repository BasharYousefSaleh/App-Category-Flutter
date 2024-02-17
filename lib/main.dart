import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home/screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    var colorScheme = ColorScheme.fromSeed(
      seedColor: Colors.blue,
    );
    var darkColorScheme = ColorScheme.fromSeed(
      seedColor: Colors.blue,
      brightness: Brightness.dark,
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        colorScheme: colorScheme,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
          backgroundColor: colorScheme.primary,
          foregroundColor: colorScheme.onPrimary,
        ),
        textTheme: GoogleFonts.cairoTextTheme(),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: colorScheme.primaryContainer,
          selectedItemColor: colorScheme.onPrimaryContainer,
          unselectedItemColor: colorScheme.secondary,
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: colorScheme.background,
          systemOverlayStyle: SystemUiOverlayStyle(
            systemNavigationBarColor: colorScheme.primaryContainer,
            statusBarColor: colorScheme.background,
            systemNavigationBarIconBrightness: Brightness.dark,
            statusBarBrightness: Brightness.dark,
            statusBarIconBrightness: Brightness.dark,
          ),
        ),
        cardTheme: const CardTheme(clipBehavior: Clip.antiAlias),
        hoverColor: colorScheme.primary.withOpacity(.25),
      ),
      darkTheme: ThemeData.dark().copyWith(
        colorScheme: darkColorScheme,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
          backgroundColor: darkColorScheme.primary,
          foregroundColor: darkColorScheme.onPrimary,
        ),
        textTheme: GoogleFonts.cairoTextTheme(Typography.whiteCupertino),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: darkColorScheme.primaryContainer,
          selectedItemColor: darkColorScheme.onPrimaryContainer,
          unselectedItemColor: darkColorScheme.secondary,
        ),
        cardTheme: const CardTheme(clipBehavior: Clip.antiAlias),
        appBarTheme: AppBarTheme(
          backgroundColor: darkColorScheme.background,
          systemOverlayStyle: SystemUiOverlayStyle(
            systemNavigationBarColor: darkColorScheme.primaryContainer,
            statusBarColor: darkColorScheme.background,
            systemNavigationBarIconBrightness: Brightness.light,
            statusBarBrightness: Brightness.dark,
            statusBarIconBrightness: Brightness.light,
          ),
        ),
        hoverColor: darkColorScheme.primary.withOpacity(.25),
      ),
      // themeMode: ThemeMode.light,
      // themeMode: ThemeMode.dark,
      home: HomeScreen(),
      builder: (context, child) => Directionality(
          textDirection: TextDirection.rtl, child: child ?? Container()),
    );
  }
}
