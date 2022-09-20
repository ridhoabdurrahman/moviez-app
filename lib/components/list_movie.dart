import 'package:flutter/material.dart';
import 'package:moviez_app/components/list_movie_card.dart';
import 'package:moviez_app/models/movie.dart';

class ListMovie extends StatelessWidget {
  const ListMovie({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: listMovie.length,
      itemBuilder: ((context, index) {
        return GestureDetector(
          onTap: () {},
          child: ListMovieCard(
            movie: listMovie[index],
          ),
        );
      }),
    );
  }
}
