import 'dart:developer';

import 'package:flexflix_flutter/models/movie_model.dart';
import 'package:flexflix_flutter/services/dio_service.dart';

class FeaturedController {
  Future getFeatured() async {
    try {
      var response = await DioService.dio().get('discover/movie?language=pt-BR');
      List<MovieModel> moviesList = [];

      for (var movie in response.data['results']) {
        moviesList.add(
          MovieModel(
            title: movie['title'],
            id: movie['id'].toString(),
            backgrop_path: movie['backdrop_path'],
            poster_path: movie['poster_path'],
          ),
        );
      }

      return moviesList;
    } catch (e) {
      print(e);
    }
  }
}
