import 'package:arijit_movies/controller/YtsMovieController.dart';
import 'package:flutter/material.dart';

class MovieGridView extends StatefulWidget {
  const MovieGridView({super.key});

  @override
  State<MovieGridView> createState() => _MovieGridViewState();
}

class _MovieGridViewState extends State<MovieGridView> {
  YtsMovieController ytsMovieController = YtsMovieController();
  @override
  Widget build(BuildContext context) {
    Future YtsMovieList = ytsMovieController.getMovieList();

    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.7,
      child: Container(
        child: FutureBuilder(
          future: YtsMovieList,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
               List movies = snapshot.data;
              return GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.5),
                itemCount: movies.length,
                itemBuilder: (context, index) {
                 
                  return Column(
                    children: [
                      Image.network(movies[index]["medium_cover_image"]),
                      Text(movies[index]["title"]),
                    ],
                  );
                },
              );
            } else {
              return CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }
}
