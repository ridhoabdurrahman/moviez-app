import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:moviez_app/constants.dart';
import 'package:moviez_app/models/movie.dart';

class ListMovieSearchCard extends StatelessWidget {
  const ListMovieSearchCard({Key? key, this.movie}) : super(key: key);

  final Movie? movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 30,
      ),
      child: Container(
        color: Colors.transparent,
        height: 127,
        width: MediaQuery.of(context).size.width - 48,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(21),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/${movie!.moviePicture}'),
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    movie!.movieName,
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    movie!.movieGenre,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  RatingBar.builder(
                    itemSize: 18,
                    initialRating: double.parse(movie!.movieRating),
                    minRating: 1,
                    direction: Axis.horizontal,
                    itemCount: 5,
                    itemPadding: EdgeInsets.zero,
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: kYellowColor,
                    ),
                    onRatingUpdate: (rating) {
                      debugPrint(rating.toString());
                    },
                    unratedColor: kGrayColor100,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
