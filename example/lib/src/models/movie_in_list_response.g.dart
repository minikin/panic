// GENERATED CODE - DO NOT MODIFY BY HAND

part of movie_in_list_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MovieInListResponse> _$movieInListResponseSerializer =
    new _$MovieInListResponseSerializer();

class _$MovieInListResponseSerializer
    implements StructuredSerializer<MovieInListResponse> {
  @override
  final Iterable<Type> types = const [
    MovieInListResponse,
    _$MovieInListResponse
  ];
  @override
  final String wireName = 'MovieInListResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, MovieInListResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'adult',
      serializers.serialize(object.adult, specifiedType: const FullType(bool)),
      'backdrop_path',
      serializers.serialize(object.backdropPath,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'original_language',
      serializers.serialize(object.originalLanguage,
          specifiedType: const FullType(String)),
      'original_title',
      serializers.serialize(object.originalTitle,
          specifiedType: const FullType(String)),
      'overview',
      serializers.serialize(object.overview,
          specifiedType: const FullType(String)),
      'popularity',
      serializers.serialize(object.popularity,
          specifiedType: const FullType(double)),
      'poster_path',
      serializers.serialize(object.posterPath,
          specifiedType: const FullType(String)),
      'release_date',
      serializers.serialize(object.releaseDate,
          specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'video',
      serializers.serialize(object.video, specifiedType: const FullType(bool)),
      'vote_average',
      serializers.serialize(object.voteAverage,
          specifiedType: const FullType(double)),
      'vote_count',
      serializers.serialize(object.voteCount,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  MovieInListResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MovieInListResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'adult':
          result.adult = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'backdrop_path':
          result.backdropPath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'original_language':
          result.originalLanguage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'original_title':
          result.originalTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'overview':
          result.overview = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'popularity':
          result.popularity = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'poster_path':
          result.posterPath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'release_date':
          result.releaseDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'video':
          result.video = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'vote_average':
          result.voteAverage = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'vote_count':
          result.voteCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$MovieInListResponse extends MovieInListResponse {
  @override
  final bool adult;
  @override
  final String backdropPath;
  @override
  final int id;
  @override
  final String originalLanguage;
  @override
  final String originalTitle;
  @override
  final String overview;
  @override
  final double popularity;
  @override
  final String posterPath;
  @override
  final String releaseDate;
  @override
  final String title;
  @override
  final bool video;
  @override
  final double voteAverage;
  @override
  final int voteCount;

  factory _$MovieInListResponse(
          [void Function(MovieInListResponseBuilder)? updates]) =>
      (new MovieInListResponseBuilder()..update(updates)).build();

  _$MovieInListResponse._(
      {required this.adult,
      required this.backdropPath,
      required this.id,
      required this.originalLanguage,
      required this.originalTitle,
      required this.overview,
      required this.popularity,
      required this.posterPath,
      required this.releaseDate,
      required this.title,
      required this.video,
      required this.voteAverage,
      required this.voteCount})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        adult, 'MovieInListResponse', 'adult');
    BuiltValueNullFieldError.checkNotNull(
        backdropPath, 'MovieInListResponse', 'backdropPath');
    BuiltValueNullFieldError.checkNotNull(id, 'MovieInListResponse', 'id');
    BuiltValueNullFieldError.checkNotNull(
        originalLanguage, 'MovieInListResponse', 'originalLanguage');
    BuiltValueNullFieldError.checkNotNull(
        originalTitle, 'MovieInListResponse', 'originalTitle');
    BuiltValueNullFieldError.checkNotNull(
        overview, 'MovieInListResponse', 'overview');
    BuiltValueNullFieldError.checkNotNull(
        popularity, 'MovieInListResponse', 'popularity');
    BuiltValueNullFieldError.checkNotNull(
        posterPath, 'MovieInListResponse', 'posterPath');
    BuiltValueNullFieldError.checkNotNull(
        releaseDate, 'MovieInListResponse', 'releaseDate');
    BuiltValueNullFieldError.checkNotNull(
        title, 'MovieInListResponse', 'title');
    BuiltValueNullFieldError.checkNotNull(
        video, 'MovieInListResponse', 'video');
    BuiltValueNullFieldError.checkNotNull(
        voteAverage, 'MovieInListResponse', 'voteAverage');
    BuiltValueNullFieldError.checkNotNull(
        voteCount, 'MovieInListResponse', 'voteCount');
  }

  @override
  MovieInListResponse rebuild(
          void Function(MovieInListResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MovieInListResponseBuilder toBuilder() =>
      new MovieInListResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MovieInListResponse &&
        adult == other.adult &&
        backdropPath == other.backdropPath &&
        id == other.id &&
        originalLanguage == other.originalLanguage &&
        originalTitle == other.originalTitle &&
        overview == other.overview &&
        popularity == other.popularity &&
        posterPath == other.posterPath &&
        releaseDate == other.releaseDate &&
        title == other.title &&
        video == other.video &&
        voteAverage == other.voteAverage &&
        voteCount == other.voteCount;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc($jc(0, adult.hashCode),
                                                    backdropPath.hashCode),
                                                id.hashCode),
                                            originalLanguage.hashCode),
                                        originalTitle.hashCode),
                                    overview.hashCode),
                                popularity.hashCode),
                            posterPath.hashCode),
                        releaseDate.hashCode),
                    title.hashCode),
                video.hashCode),
            voteAverage.hashCode),
        voteCount.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MovieInListResponse')
          ..add('adult', adult)
          ..add('backdropPath', backdropPath)
          ..add('id', id)
          ..add('originalLanguage', originalLanguage)
          ..add('originalTitle', originalTitle)
          ..add('overview', overview)
          ..add('popularity', popularity)
          ..add('posterPath', posterPath)
          ..add('releaseDate', releaseDate)
          ..add('title', title)
          ..add('video', video)
          ..add('voteAverage', voteAverage)
          ..add('voteCount', voteCount))
        .toString();
  }
}

class MovieInListResponseBuilder
    implements Builder<MovieInListResponse, MovieInListResponseBuilder> {
  _$MovieInListResponse? _$v;

  bool? _adult;
  bool? get adult => _$this._adult;
  set adult(bool? adult) => _$this._adult = adult;

  String? _backdropPath;
  String? get backdropPath => _$this._backdropPath;
  set backdropPath(String? backdropPath) => _$this._backdropPath = backdropPath;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _originalLanguage;
  String? get originalLanguage => _$this._originalLanguage;
  set originalLanguage(String? originalLanguage) =>
      _$this._originalLanguage = originalLanguage;

  String? _originalTitle;
  String? get originalTitle => _$this._originalTitle;
  set originalTitle(String? originalTitle) =>
      _$this._originalTitle = originalTitle;

  String? _overview;
  String? get overview => _$this._overview;
  set overview(String? overview) => _$this._overview = overview;

  double? _popularity;
  double? get popularity => _$this._popularity;
  set popularity(double? popularity) => _$this._popularity = popularity;

  String? _posterPath;
  String? get posterPath => _$this._posterPath;
  set posterPath(String? posterPath) => _$this._posterPath = posterPath;

  String? _releaseDate;
  String? get releaseDate => _$this._releaseDate;
  set releaseDate(String? releaseDate) => _$this._releaseDate = releaseDate;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  bool? _video;
  bool? get video => _$this._video;
  set video(bool? video) => _$this._video = video;

  double? _voteAverage;
  double? get voteAverage => _$this._voteAverage;
  set voteAverage(double? voteAverage) => _$this._voteAverage = voteAverage;

  int? _voteCount;
  int? get voteCount => _$this._voteCount;
  set voteCount(int? voteCount) => _$this._voteCount = voteCount;

  MovieInListResponseBuilder();

  MovieInListResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _adult = $v.adult;
      _backdropPath = $v.backdropPath;
      _id = $v.id;
      _originalLanguage = $v.originalLanguage;
      _originalTitle = $v.originalTitle;
      _overview = $v.overview;
      _popularity = $v.popularity;
      _posterPath = $v.posterPath;
      _releaseDate = $v.releaseDate;
      _title = $v.title;
      _video = $v.video;
      _voteAverage = $v.voteAverage;
      _voteCount = $v.voteCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MovieInListResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MovieInListResponse;
  }

  @override
  void update(void Function(MovieInListResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MovieInListResponse build() {
    final _$result = _$v ??
        new _$MovieInListResponse._(
            adult: BuiltValueNullFieldError.checkNotNull(
                adult, 'MovieInListResponse', 'adult'),
            backdropPath: BuiltValueNullFieldError.checkNotNull(
                backdropPath, 'MovieInListResponse', 'backdropPath'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'MovieInListResponse', 'id'),
            originalLanguage: BuiltValueNullFieldError.checkNotNull(
                originalLanguage, 'MovieInListResponse', 'originalLanguage'),
            originalTitle: BuiltValueNullFieldError.checkNotNull(
                originalTitle, 'MovieInListResponse', 'originalTitle'),
            overview: BuiltValueNullFieldError.checkNotNull(
                overview, 'MovieInListResponse', 'overview'),
            popularity: BuiltValueNullFieldError.checkNotNull(
                popularity, 'MovieInListResponse', 'popularity'),
            posterPath: BuiltValueNullFieldError.checkNotNull(
                posterPath, 'MovieInListResponse', 'posterPath'),
            releaseDate: BuiltValueNullFieldError.checkNotNull(releaseDate, 'MovieInListResponse', 'releaseDate'),
            title: BuiltValueNullFieldError.checkNotNull(title, 'MovieInListResponse', 'title'),
            video: BuiltValueNullFieldError.checkNotNull(video, 'MovieInListResponse', 'video'),
            voteAverage: BuiltValueNullFieldError.checkNotNull(voteAverage, 'MovieInListResponse', 'voteAverage'),
            voteCount: BuiltValueNullFieldError.checkNotNull(voteCount, 'MovieInListResponse', 'voteCount'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
