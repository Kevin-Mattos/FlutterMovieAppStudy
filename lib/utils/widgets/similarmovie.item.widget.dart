import 'package:base_flutter_app/data/constants.dart';
import 'package:base_flutter_app/data/model/similarmovie.model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class MovieItem extends StatelessWidget {
  const MovieItem(this.similarMovie, {Key? key}) : super(key: key);
  final SimilarMovie similarMovie;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 100,
          height: 150,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CachedNetworkImage(
                fit: BoxFit.cover,
                placeholder: (context, url) =>
                    Center(child: CircularProgressIndicator()),
                imageUrl: '$imageUrl${similarMovie.posterPath}'),
          ),
        ),
        Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(similarMovie.originalTitle, style: Theme.of(context).textTheme.bodyText1,),
              Container(height: 6,),
              Text(similarMovie.genres.join(', '), style: Theme.of(context).textTheme.caption,)
            ])
      ],
    );
  }
}
