import 'package:base_flutter_app/data/model/movie.model.dart';
import 'package:base_flutter_app/data/repositories/movie.repository.dart';
import 'package:base_flutter_app/utils/widgets/movie.appbar.widget.dart';
import 'package:base_flutter_app/utils/widgets/similarmovie.list.widget.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Movie? movie;

  @override
  void initState() {
    MovieRepository().getMovie(500).then((value) {
      setState(() {
        movie = value;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (movie == null)
      return Scaffold(body: Center(child: CircularProgressIndicator()));
    return Scaffold(
      body: CustomScrollView(
        controller: ScrollController(),
      slivers: <Widget>[
        MyAppBar(movie!),
        SliverToBoxAdapter(
          child: MovieTitleBar(movie!),
        ),
        SimilarMovieList(movie!.id),
      ],
      ),
    );
  }
}

class MovieTitleBar extends StatelessWidget {
  const MovieTitleBar(this.movie, {Key? key}) : super(key: key);
  final Movie movie;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 8, right: 8),
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(movie.original_title, style: Theme.of(context).textTheme.bodyText1?.apply(color: Colors.white, fontSizeDelta: 12),),
        ],
      ),
    );
  }
}
