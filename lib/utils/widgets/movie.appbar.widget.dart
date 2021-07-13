import 'package:base_flutter_app/data/constants.dart';
import 'package:base_flutter_app/data/model/movie.model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatefulWidget {
  const MyAppBar(this.movie, {Key? key}) : super(key: key);

  final Movie movie;

  @override
  _MyAppBarState createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> with TickerProviderStateMixin  {

  AnimationController? anim;
  @override
  void initState() {
    super.initState();
    anim = AnimationController(vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      brightness: Brightness.dark,
      expandedHeight: 500,
      // snap: true,
      pinned: false,
      stretch: true,
      flexibleSpace: FlexibleSpaceBar(
        background: CachedNetworkImage(
            fit: BoxFit.cover,
            placeholder: (context, url) =>
                Center(child: CircularProgressIndicator()),
            imageUrl: '$imageUrl${widget.movie.backdrop_path}'),
      ),
    );
  }
}
