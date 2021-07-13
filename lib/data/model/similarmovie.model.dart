import 'package:base_flutter_app/data/model/genre.model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'similarmovie.model.g.dart';

@JsonSerializable(explicitToJson: true)
class SimilarMovie {
  SimilarMovie(this.id, this.backdropPath, this.originalTitle, this.posterPath);

  final int id;
  @JsonKey(name: 'backdrop_path')
  final String backdropPath;
  @JsonKey(name: 'poster_path')
  final String posterPath;
  @JsonKey(name: 'original_title')
  final String originalTitle;
  @JsonKey(name: 'genre_ids')
  List<int> genreIds = [];

  @JsonKey(ignore: true)
  List<String> genres = [];

  factory SimilarMovie.fromJson(Map<String, dynamic> json) => _$SimilarMovieFromJson(json);
  Map<String, dynamic> toJson() => _$SimilarMovieToJson(this);
}