import 'package:flutter/material.dart';
import 'package:moviez_app/components/list_movie_search.dart';
import 'package:moviez_app/constants.dart';

class SearchMovieScreen extends StatelessWidget {
  const SearchMovieScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(top: 38, left: 24, right: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 45,
                padding: const EdgeInsets.only(
                  right: 22,
                  left: 22,
                  bottom: 11,
                  top: 11,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: kWhiteColor,
                ),
                child: TextField(
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2!
                      .copyWith(color: kBlueColor),
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.search,
                      color: kBlueColor,
                      size: 24,
                    ),
                    prefixIconConstraints: const BoxConstraints(
                        maxHeight: 22, maxWidth: 42, minWidth: 40),
                    hintText: "Search Movie",
                    hintStyle: Theme.of(context).textTheme.bodyText2,
                    contentPadding: const EdgeInsets.only(
                      bottom: 8,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Text('Search Result',
                          style: Theme.of(context).textTheme.headline2),
                      Text(
                        " (3)",
                        style: Theme.of(context)
                            .textTheme
                            .headline2!
                            .copyWith(fontFamily: "Avenir-Roman"),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const ListMovieSearch(),
              const SizedBox(
                height: 73,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RawMaterialButton(
                    fillColor: kBlueColor,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 55.0, vertical: 14),
                      child: Text(
                        "Suggest Movie",
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    ),
                    onPressed: () {},
                    shape: const StadiumBorder(),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
