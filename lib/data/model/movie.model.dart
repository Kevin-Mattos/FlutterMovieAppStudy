import 'package:base_flutter_app/data/model/genre.model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'movie.model.g.dart';

@JsonSerializable(explicitToJson: true)
class Movie {
  Movie(this.genres, this.id, this.backdrop_path, this.original_title, this.poster_path);

  final List<Genre> genres;
  final int id;
  final String backdrop_path;
  final String original_title;
  final String poster_path;


  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);


  Map<String, dynamic> toJson() => _$MovieToJson(this);
}