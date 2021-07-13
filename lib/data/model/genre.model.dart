import 'package:json_annotation/json_annotation.dart';

part 'genre.model.g.dart';

@JsonSerializable()
class Genre {

  Genre(this.id, this.name);

  int id;
  String name;

  /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$UserFromJson()` constructor.
  /// The constructor is named after the source class, in this case, User.
  factory Genre.fromJson(Map<String, dynamic> json) => _$GenreFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$GenreToJson(this);

}