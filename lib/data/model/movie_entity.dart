import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'movie_entity.g.dart';

@JsonSerializable()
class MovieEntity extends Equatable {
  final String title;
  @JsonKey(name: 'posterurl')
  final String imageUrl;
  @JsonKey(name: 'averageRating')
  final int rating;

  const MovieEntity({
    required this.title,
    required this.imageUrl,
    required this.rating,
  });

  factory MovieEntity.fromJson(Map<String, dynamic> json) => _$MovieEntityFromJson(json);

  @override
  List<Object?> get props => [title, imageUrl, rating];
}
