// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'similarmovie.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SimilarMovie _$SimilarMovieFromJson(Map<String, dynamic> json) {
  return SimilarMovie(
    json['id'] as int,
    json['backdrop_path'] as String,
    json['original_title'] as String,
    json['poster_path'] as String,
  )..genreIds =
      (json['genre_ids'] as List<dynamic>).map((e) => e as int).toList();
}

Map<String, dynamic> _$SimilarMovieToJson(SimilarMovie instance) =>
    <String, dynamic>{
      'id': instance.id,
      'backdrop_path': instance.backdropPath,
      'poster_path': instance.posterPath,
      'original_title': instance.originalTitle,
      'genre_ids': instance.genreIds,
    };
