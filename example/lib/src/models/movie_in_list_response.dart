library movie_in_list_response;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import '../services/networking/themoviedb_api_configs.dart';
import 'serializers.dart';

part 'movie_in_list_response.g.dart';

abstract class MovieInListResponse
    implements Built<MovieInListResponse, MovieInListResponseBuilder> {
  static Serializer<MovieInListResponse> get serializer =>
      _$movieInListResponseSerializer;
  factory MovieInListResponse(
          [void Function(MovieInListResponseBuilder) updates]) =
      _$MovieInListResponse;

  MovieInListResponse._();

  bool get adult;

  @BuiltValueField(wireName: 'backdrop_path')
  String get backdropPath;

  int get id;

  @BuiltValueField(wireName: 'original_language')
  String get originalLanguage;

  @BuiltValueField(wireName: 'original_title')
  String get originalTitle;

  String get overview;

  double get popularity;

  @BuiltValueField(wireName: 'poster_path')
  String get posterPath;

  @BuiltValueField(wireName: 'release_date')
  String get releaseDate;

  String get title;

  bool get video;

  @BuiltValueField(wireName: 'vote_average')
  double get voteAverage;

  @BuiltValueField(wireName: 'vote_count')
  int get voteCount;

  String get posterImagePath => '$baseImageUrl$posterPath';

  String toJson() {
    return json.encode(
      serializers.serializeWith(
        MovieInListResponse.serializer,
        this,
      ),
    );
  }

  static MovieInListResponse? fromJson(String jsonString) {
    return serializers.deserializeWith(
      MovieInListResponse.serializer,
      json.decode(jsonString),
    );
  }
}
