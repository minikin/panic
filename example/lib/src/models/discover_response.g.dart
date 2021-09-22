// GENERATED CODE - DO NOT MODIFY BY HAND

part of discover_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DiscoverResponse> _$discoverResponseSerializer =
    new _$DiscoverResponseSerializer();

class _$DiscoverResponseSerializer
    implements StructuredSerializer<DiscoverResponse> {
  @override
  final Iterable<Type> types = const [DiscoverResponse, _$DiscoverResponse];
  @override
  final String wireName = 'DiscoverResponse';

  @override
  Iterable<Object?> serialize(Serializers serializers, DiscoverResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'page',
      serializers.serialize(object.page, specifiedType: const FullType(int)),
      'results',
      serializers.serialize(object.results,
          specifiedType: const FullType(
              BuiltList, const [const FullType(MovieInListResponse)])),
      'total_pages',
      serializers.serialize(object.totalPages,
          specifiedType: const FullType(int)),
      'total_results',
      serializers.serialize(object.totalResults,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  DiscoverResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DiscoverResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'page':
          result.page = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'results':
          result.results.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(MovieInListResponse)]))!
              as BuiltList<Object>);
          break;
        case 'total_pages':
          result.totalPages = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'total_results':
          result.totalResults = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$DiscoverResponse extends DiscoverResponse {
  @override
  final int page;
  @override
  final BuiltList<MovieInListResponse> results;
  @override
  final int totalPages;
  @override
  final int totalResults;

  factory _$DiscoverResponse(
          [void Function(DiscoverResponseBuilder)? updates]) =>
      (new DiscoverResponseBuilder()..update(updates)).build();

  _$DiscoverResponse._(
      {required this.page,
      required this.results,
      required this.totalPages,
      required this.totalResults})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(page, 'DiscoverResponse', 'page');
    BuiltValueNullFieldError.checkNotNull(
        results, 'DiscoverResponse', 'results');
    BuiltValueNullFieldError.checkNotNull(
        totalPages, 'DiscoverResponse', 'totalPages');
    BuiltValueNullFieldError.checkNotNull(
        totalResults, 'DiscoverResponse', 'totalResults');
  }

  @override
  DiscoverResponse rebuild(void Function(DiscoverResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DiscoverResponseBuilder toBuilder() =>
      new DiscoverResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DiscoverResponse &&
        page == other.page &&
        results == other.results &&
        totalPages == other.totalPages &&
        totalResults == other.totalResults;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, page.hashCode), results.hashCode), totalPages.hashCode),
        totalResults.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DiscoverResponse')
          ..add('page', page)
          ..add('results', results)
          ..add('totalPages', totalPages)
          ..add('totalResults', totalResults))
        .toString();
  }
}

class DiscoverResponseBuilder
    implements Builder<DiscoverResponse, DiscoverResponseBuilder> {
  _$DiscoverResponse? _$v;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  ListBuilder<MovieInListResponse>? _results;
  ListBuilder<MovieInListResponse> get results =>
      _$this._results ??= new ListBuilder<MovieInListResponse>();
  set results(ListBuilder<MovieInListResponse>? results) =>
      _$this._results = results;

  int? _totalPages;
  int? get totalPages => _$this._totalPages;
  set totalPages(int? totalPages) => _$this._totalPages = totalPages;

  int? _totalResults;
  int? get totalResults => _$this._totalResults;
  set totalResults(int? totalResults) => _$this._totalResults = totalResults;

  DiscoverResponseBuilder();

  DiscoverResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _page = $v.page;
      _results = $v.results.toBuilder();
      _totalPages = $v.totalPages;
      _totalResults = $v.totalResults;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DiscoverResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DiscoverResponse;
  }

  @override
  void update(void Function(DiscoverResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DiscoverResponse build() {
    _$DiscoverResponse _$result;
    try {
      _$result = _$v ??
          new _$DiscoverResponse._(
              page: BuiltValueNullFieldError.checkNotNull(
                  page, 'DiscoverResponse', 'page'),
              results: results.build(),
              totalPages: BuiltValueNullFieldError.checkNotNull(
                  totalPages, 'DiscoverResponse', 'totalPages'),
              totalResults: BuiltValueNullFieldError.checkNotNull(
                  totalResults, 'DiscoverResponse', 'totalResults'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'results';
        results.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DiscoverResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
