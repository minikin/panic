library movie_details_response;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import '../services/networking/themoviedb_api_configs.dart';
import 'serializers.dart';

part 'movie_details_response.g.dart';

abstract class MovieDetailsResponse
    implements Built<MovieDetailsResponse, MovieDetailsResponseBuilder> {
  static Serializer<MovieDetailsResponse> get serializer =>
      _$movieDetailsResponseSerializer;

  factory MovieDetailsResponse(
          [void Function(MovieDetailsResponseBuilder) updates]) =
      _$MovieDetailsResponse;
  MovieDetailsResponse._();

  bool get adult;

  @BuiltValueField(wireName: 'backdrop_path')
  String get backdropPath;

  int get budget;

  String get homepage;

  int get id;

  @BuiltValueField(wireName: 'imdb_id')
  String get imdbId;

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

  int get revenue;

  int get runtime;

  String get status;

  String get tagline;

  String get title;

  bool get video;

  @BuiltValueField(wireName: 'vote_average')
  double get voteAverage;

  @BuiltValueField(wireName: 'vote_count')
  int get voteCount;

  String get backdropImagePath => '$baseImageUrl$backdropPath';

  String toJson() {
    return json.encode(
      serializers.serializeWith(
        MovieDetailsResponse.serializer,
        this,
      ),
    );
  }

  static MovieDetailsResponse? fromJson(String jsonString) {
    return serializers.deserializeWith(
      MovieDetailsResponse.serializer,
      json.decode(jsonString),
    );
  }
}
