import 'package:base_flutter_app/data/model/similarmovie.model.dart';
import 'package:base_flutter_app/data/repositories/movie.repository.dart';
import 'package:base_flutter_app/utils/widgets/similarmovie.item.widget.dart';
import 'package:flutter/material.dart';

class SimilarMovieList extends StatefulWidget {
  const SimilarMovieList(this.movieId, {Key? key}) : super(key: key);
  final int movieId;

  @override
  _SimilarMovieListState createState() => _SimilarMovieListState();
}

class _SimilarMovieListState extends State<SimilarMovieList> {
  List<SimilarMovie>? movies;

  @override
  void initState() {
    MovieRepository().getSimilarMovies(500).then((value) {
      setState(() {
        movies = value.similar;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // if(movies == null) return CircularProgressIndicator();
    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        if(movies == null) return Center(child: CircularProgressIndicator());
          return MovieItem(movies![index]);
      },
      childCount: movies?.length ?? 1),
    );
  }
}
