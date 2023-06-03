import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'movie_raw.g.dart';

@JsonSerializable()
class MovieRaw extends Equatable {
  final String title;
  @JsonKey(name: 'posterurl')
  final String imageUrl;
  @JsonKey(name: 'averageRating')
  final int rating;

  const MovieRaw({
    required this.title,
    required this.imageUrl,
    required this.rating,
  });

  factory MovieRaw.fromJson(Map<String, dynamic> json) => _$MovieRawFromJson(json);

  @override
  List<Object?> get props => [title, imageUrl, rating];
}
