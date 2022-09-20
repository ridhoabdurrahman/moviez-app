import 'package:flutter/material.dart';
import 'package:moviez_app/components/list_movie_card.dart';
import 'package:moviez_app/components/list_movie_search_card.dart';
import 'package:moviez_app/models/movie.dart';

class ListMovieSearch extends StatelessWidget {
  const ListMovieSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: listMovieSearch.length,
      itemBuilder: ((context, index) {
        return GestureDetector(
          onTap: () {},
          child: ListMovieSearchCard(
            movie: listMovieSearch[index],
          ),
        );
      }),
    );
  }
}
