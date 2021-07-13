import 'package:base_flutter_app/data/model/similarmovie.model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'similarmovies.model.g.dart';

@JsonSerializable(explicitToJson: true)
class SimilarMovies {
  SimilarMovies(this.page, this.totalPages, this.totalResults, this.similar);


  final int page;
  @JsonKey(name: 'total_pages')
  final int totalPages;
  @JsonKey(name: 'total_results')
  final int totalResults;
  @JsonKey(name: 'results')
  final List<SimilarMovie> similar;


  factory SimilarMovies.fromJson(Map<String, dynamic> json) => _$SimilarMoviesFromJson(json);
  Map<String, dynamic> toJson() => _$SimilarMoviesToJson(this);
}