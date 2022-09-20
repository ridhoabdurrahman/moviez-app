import 'package:flutter/material.dart';
import 'package:moviez_app/components/featured_movies.dart';
import 'package:moviez_app/components/home_screen_navbar.dart';
import 'package:moviez_app/components/list_movie.dart';
import 'package:moviez_app/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 29, bottom: 13),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HomeScreenNavbar(),
                const SizedBox(
                  height: 30,
                ),
                const FeaturedMovies(),
                const SizedBox(
                  height: 30,
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 24, bottom: 20),
                      child: Text('From Disney',
                          style: Theme.of(context).textTheme.headline2),
                    ),
                  ],
                ),
                const ListMovie(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
