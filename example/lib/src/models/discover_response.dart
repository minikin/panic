library discover_response;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'index.dart';

part 'discover_response.g.dart';

abstract class DiscoverResponse
    implements Built<DiscoverResponse, DiscoverResponseBuilder> {
  static Serializer<DiscoverResponse> get serializer =>
      _$discoverResponseSerializer;
  factory DiscoverResponse([void Function(DiscoverResponseBuilder) updates]) =
      _$DiscoverResponse;

  DiscoverResponse._();

  int get page;

  BuiltList<MovieInListResponse> get results;

  @BuiltValueField(wireName: 'total_pages')
  int get totalPages;

  @BuiltValueField(wireName: 'total_results')
  int get totalResults;

  String toJson() {
    return json.encode(
      serializers.serializeWith(
        DiscoverResponse.serializer,
        this,
      ),
    );
  }

  static DiscoverResponse? fromJson(String jsonString) {
    return serializers.deserializeWith(
      DiscoverResponse.serializer,
      json.decode(jsonString),
    );
  }
}
