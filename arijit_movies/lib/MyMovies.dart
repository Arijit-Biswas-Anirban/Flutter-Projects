import 'package:arijit_movies/models/movie_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class MyMovies extends StatefulWidget {
  const MyMovies({super.key});

  @override
  State<MyMovies> createState() => _MyMoviesState();
}

class _MyMoviesState extends State<MyMovies> {
  Future<Response> movies =
      get(Uri.parse("https://yts.mx/api/v2/list_movies.json"));

  @override
  Widget build(BuildContext context) {
    // return Text("HELLO", style: TextStyle(color: Colors.white),);
    return Container(
      child: FutureBuilder(
        future: movies,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var data = snapshot.data?.body;
            YtsMovies movies = YtsMovies.fromRawJson(data as String);
            return GridView.builder(
              // scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: movies.data.movies.length,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
              itemBuilder: (context, position) {
                return Container(
                  // color: Colors.amber,
                  // decoration: BoxDecoration(
                  //     image: DecorationImage(
                  //         image: NetworkImage(movies
                  //             .data.movies[position].smallCoverImage))),
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: MediaQuery.of(context).size.width * 0.4,
                        child: ClipRRect(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(10)),
                          child: Image.network(
                            '${movies.data.movies[position].smallCoverImage}',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text(movies.data.movies[position].title),
                    ],
                  ),
                );
              },
            );
          } else {
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
