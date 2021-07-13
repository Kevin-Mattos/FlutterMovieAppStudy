// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'similarmovies.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SimilarMovies _$SimilarMoviesFromJson(Map<String, dynamic> json) {
  return SimilarMovies(
    json['page'] as int,
    json['total_pages'] as int,
    json['total_results'] as int,
    (json['results'] as List<dynamic>)
        .map((e) => SimilarMovie.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$SimilarMoviesToJson(SimilarMovies instance) =>
    <String, dynamic>{
      'page': instance.page,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
      'results': instance.similar.map((e) => e.toJson()).toList(),
    };
