import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:moviez_app/constants.dart';
import 'package:moviez_app/models/movie.dart';

class FeaturedMovies extends StatelessWidget {
  const FeaturedMovies({super.key, this.movie});

  final Movie? movie;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 12, left: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(21),
                    child: Image.asset(
                      'assets/images/featured-movie-1.png',
                      height: 207,
                      width: 360,
                      fit: BoxFit.cover,
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(21),
                    boxShadow: const [
                      BoxShadow(
                        color: kBlueColor,
                        spreadRadius: 0.1,
                        blurRadius: 5,
                        offset: Offset(0, 4), // changes position of shadow
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 19,
                ),
                SizedBox(
                  width: 360,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Jhon Wick 4",
                            style: Theme.of(context).textTheme.headline3,
                          ),
                          Text(
                            "Action, Crime",
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ],
                      ),
                      RatingBar.builder(
                        itemSize: 18,
                        initialRating: 5,
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
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(21),
                    child: Image.asset(
                      'assets/images/featured-movie-2.png',
                      height: 207,
                      width: 360,
                      fit: BoxFit.cover,
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(21),
                    boxShadow: const [
                      BoxShadow(
                        color: kYellowColor,
                        spreadRadius: 0.1,
                        blurRadius: 5,
                        offset: Offset(0, 4), // changes position of shadow
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 19,
                ),
                SizedBox(
                  width: 360,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Bohemian",
                            style: Theme.of(context).textTheme.headline3,
                          ),
                          Text(
                            "Documentary",
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ],
                      ),
                      RatingBar.builder(
                        itemSize: 18,
                        initialRating: double.parse("3"),
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
        ],
      ),
    );
  }
}
