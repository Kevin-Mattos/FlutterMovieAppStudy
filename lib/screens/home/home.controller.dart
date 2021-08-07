import 'package:base_flutter_app/data/model/movie.model.dart';
import 'package:base_flutter_app/data/repositories/movie.repository.dart';

class HomeController {

  MovieRepository repo = MovieRepository();

  Future<Movie> getMovie(int movieId) {
    return repo.getMovie(movieId);
  }


}