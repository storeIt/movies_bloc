// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_raw.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieRaw _$MovieRawFromJson(Map<String, dynamic> json) => MovieRaw(
      title: json['title'] as String,
      imageUrl: json['posterurl'] as String,
      rating: json['averageRating'] as int,
    );

Map<String, dynamic> _$MovieRawToJson(MovieRaw instance) => <String, dynamic>{
      'title': instance.title,
      'posterurl': instance.imageUrl,
      'averageRating': instance.rating,
    };
