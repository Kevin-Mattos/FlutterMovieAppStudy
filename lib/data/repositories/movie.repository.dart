import 'dart:convert';

import 'package:base_flutter_app/data/constants.dart';
import 'package:base_flutter_app/data/model/genre.model.dart';
import 'package:base_flutter_app/data/model/movie.model.dart';
import 'package:base_flutter_app/data/model/similarmovies.model.dart';
import 'package:http/http.dart' as http;

class MovieRepository {

  final String apiKey = "c108085f50217432acf2932b479570a7";


  Future<Movie> getMovie(int movieId) async {
    final queryParams = {
      "api_key": apiKey
    };
    var url = Uri.https(baseUrl, '/3/movie/$movieId', queryParams);
    var resp = await http.get(url);
    var movie = Movie.fromJson(jsonDecode(resp.body));
    return movie;
  }

  Future<SimilarMovies> getSimilarMovies(int movieId) async {
    final queryParams = {
      "api_key": apiKey
    };
    var similarMovieUrl = Uri.https(
        baseUrl, '/3/movie/$movieId/similar', queryParams);
    var genresUrl = Uri.https(baseUrl, '/3/genre/movie/list', queryParams);

    var resps = await Future.wait([
      http.get(similarMovieUrl),
      http.get(genresUrl)]);

    var movie = SimilarMovies.fromJson(jsonDecode(resps[0].body));
    var iterable = jsonDecode(resps[1].body)['genres'] as List;
    var genres = iterable.map((i) => Genre.fromJson(i)).toList();
    movie.similar.forEach((element) {
      Iterable<Genre> genderStrings = genres.where((value) => element.genreIds.contains(value.id));
      element.genres.addAll(genderStrings.map((e) => e.name));
    });
    return movie;
  }

}