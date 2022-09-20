import 'package:flutter/material.dart';
import 'package:moviez_app/moviez_app_theme.dart';
import 'package:moviez_app/screens/home_screen.dart';
import 'package:moviez_app/screens/search_movie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MoviezAppTheme.lightTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/search_movie': (context) => const SearchMovieScreen(),
      },
    );
  }
}
