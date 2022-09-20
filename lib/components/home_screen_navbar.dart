import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class HomeScreenNavbar extends StatelessWidget {
  const HomeScreenNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Moviez",
                style: Theme.of(context).textTheme.headline1,
              ),
              Text(
                "Watch much easier",
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 24),
          child: GestureDetector(
            child: Container(
              height: 24,
              width: 24,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: Svg(
                  'assets/svg/icon-search.svg',
                  size: Size(24, 24),
                )),
              ),
            ),
            onTap: () {
              Navigator.of(context).pushNamed(
                '/search_movie',
              );
            },
          ),
        )
      ],
    );
  }
}
