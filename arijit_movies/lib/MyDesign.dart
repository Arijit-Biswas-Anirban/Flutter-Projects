//import 'package:arijit_movies/MyMovies.dart';
import 'package:arijit_movies/elements/MovieGridView.dart';
import 'package:flutter/material.dart';

class MyDesign extends StatefulWidget {
  const MyDesign({super.key});

  @override
  State<MyDesign> createState() => _MyDesignState();
}

class _MyDesignState extends State<MyDesign> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            child: Expanded(
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .07,
                    child: TextFormField(
                      style: const TextStyle(color: Colors.white54),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.blueGrey[800],
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24),
                          borderSide: BorderSide.none,
                        ),
                        prefixIcon: const Padding(
                          padding: EdgeInsets.only(left: 24),
                          child:
                              Icon(Icons.search_rounded, color: Colors.white54),
                        ),
                        hintText: "Search Movies",
                        hintStyle: const TextStyle(color: Colors.white54),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
          //MyMovies(),
          MovieGridView(),
        ],
      ),
    );
  }
}
