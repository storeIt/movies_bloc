import 'package:equatable/equatable.dart';

class Movie extends Equatable {
  final String title;
  final String imageUrl;
  final int rating;

  const Movie({
    required this.title,
    required this.imageUrl,
    required this.rating,
  });

  Movie copyWith({
    String? title,
    String? imageUrl,
    int? rating,
  }) {
    return Movie(
      title: title ?? this.title,
      imageUrl: imageUrl ?? this.imageUrl,
      rating: rating ?? this.rating,
    );
  }

  @override
  List<Object?> get props => [title, imageUrl, rating];
}
