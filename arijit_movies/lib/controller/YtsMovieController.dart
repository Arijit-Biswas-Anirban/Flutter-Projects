import 'dart:convert';

import 'package:http/http.dart';

class YtsMovieController{
  String url = "https://yts.mx/api/v2/list_movies.json";
  Future <dynamic> getMovieList() async{
    String jsonData = await getYtsMovieJson();
    Map<String, dynamic> movieMap = jsonDecode(jsonData);

    return movieMap["data"]["movies"];
  }



  Future <String> getYtsMovieJson() async{
    Response ytsResponse = await get(Uri.parse(url));
    return ytsResponse.body as String;
  }

}