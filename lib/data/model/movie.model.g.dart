// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Movie _$MovieFromJson(Map<String, dynamic> json) {
  return Movie(
    (json['genres'] as List<dynamic>)
        .map((e) => Genre.fromJson(e as Map<String, dynamic>))
        .toList(),
    json['id'] as int,
    json['backdrop_path'] as String,
    json['original_title'] as String,
    json['poster_path'] as String,
  );
}

Map<String, dynamic> _$MovieToJson(Movie instance) => <String, dynamic>{
      'genres': instance.genres.map((e) => e.toJson()).toList(),
      'id': instance.id,
      'backdrop_path': instance.backdrop_path,
      'original_title': instance.original_title,
      'poster_path': instance.poster_path,
    };
