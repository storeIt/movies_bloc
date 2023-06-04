// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieEntity _$MovieEntityFromJson(Map<String, dynamic> json) => MovieEntity(
      title: json['title'] as String,
      imageUrl: json['posterurl'] as String,
      rating: json['averageRating'] as int,
    );

Map<String, dynamic> _$MovieEntityToJson(MovieEntity instance) =>
    <String, dynamic>{
      'title': instance.title,
      'posterurl': instance.imageUrl,
      'averageRating': instance.rating,
    };
