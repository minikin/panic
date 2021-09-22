// GENERATED CODE - DO NOT MODIFY BY HAND

part of movie_details_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MovieDetailsResponse> _$movieDetailsResponseSerializer =
    new _$MovieDetailsResponseSerializer();

class _$MovieDetailsResponseSerializer
    implements StructuredSerializer<MovieDetailsResponse> {
  @override
  final Iterable<Type> types = const [
    MovieDetailsResponse,
    _$MovieDetailsResponse
  ];
  @override
  final String wireName = 'MovieDetailsResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, MovieDetailsResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'adult',
      serializers.serialize(object.adult, specifiedType: const FullType(bool)),
      'backdrop_path',
      serializers.serialize(object.backdropPath,
          specifiedType: const FullType(String)),
      'budget',
      serializers.serialize(object.budget, specifiedType: const FullType(int)),
      'homepage',
      serializers.serialize(object.homepage,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'imdb_id',
      serializers.serialize(object.imdbId,
          specifiedType: const FullType(String)),
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
      'revenue',
      serializers.serialize(object.revenue, specifiedType: const FullType(int)),
      'runtime',
      serializers.serialize(object.runtime, specifiedType: const FullType(int)),
      'status',
      serializers.serialize(object.status,
          specifiedType: const FullType(String)),
      'tagline',
      serializers.serialize(object.tagline,
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
  MovieDetailsResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MovieDetailsResponseBuilder();

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
        case 'budget':
          result.budget = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'homepage':
          result.homepage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'imdb_id':
          result.imdbId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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
        case 'revenue':
          result.revenue = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'runtime':
          result.runtime = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tagline':
          result.tagline = serializers.deserialize(value,
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

class _$MovieDetailsResponse extends MovieDetailsResponse {
  @override
  final bool adult;
  @override
  final String backdropPath;
  @override
  final int budget;
  @override
  final String homepage;
  @override
  final int id;
  @override
  final String imdbId;
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
  final int revenue;
  @override
  final int runtime;
  @override
  final String status;
  @override
  final String tagline;
  @override
  final String title;
  @override
  final bool video;
  @override
  final double voteAverage;
  @override
  final int voteCount;

  factory _$MovieDetailsResponse(
          [void Function(MovieDetailsResponseBuilder)? updates]) =>
      (new MovieDetailsResponseBuilder()..update(updates)).build();

  _$MovieDetailsResponse._(
      {required this.adult,
      required this.backdropPath,
      required this.budget,
      required this.homepage,
      required this.id,
      required this.imdbId,
      required this.originalLanguage,
      required this.originalTitle,
      required this.overview,
      required this.popularity,
      required this.posterPath,
      required this.releaseDate,
      required this.revenue,
      required this.runtime,
      required this.status,
      required this.tagline,
      required this.title,
      required this.video,
      required this.voteAverage,
      required this.voteCount})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        adult, 'MovieDetailsResponse', 'adult');
    BuiltValueNullFieldError.checkNotNull(
        backdropPath, 'MovieDetailsResponse', 'backdropPath');
    BuiltValueNullFieldError.checkNotNull(
        budget, 'MovieDetailsResponse', 'budget');
    BuiltValueNullFieldError.checkNotNull(
        homepage, 'MovieDetailsResponse', 'homepage');
    BuiltValueNullFieldError.checkNotNull(id, 'MovieDetailsResponse', 'id');
    BuiltValueNullFieldError.checkNotNull(
        imdbId, 'MovieDetailsResponse', 'imdbId');
    BuiltValueNullFieldError.checkNotNull(
        originalLanguage, 'MovieDetailsResponse', 'originalLanguage');
    BuiltValueNullFieldError.checkNotNull(
        originalTitle, 'MovieDetailsResponse', 'originalTitle');
    BuiltValueNullFieldError.checkNotNull(
        overview, 'MovieDetailsResponse', 'overview');
    BuiltValueNullFieldError.checkNotNull(
        popularity, 'MovieDetailsResponse', 'popularity');
    BuiltValueNullFieldError.checkNotNull(
        posterPath, 'MovieDetailsResponse', 'posterPath');
    BuiltValueNullFieldError.checkNotNull(
        releaseDate, 'MovieDetailsResponse', 'releaseDate');
    BuiltValueNullFieldError.checkNotNull(
        revenue, 'MovieDetailsResponse', 'revenue');
    BuiltValueNullFieldError.checkNotNull(
        runtime, 'MovieDetailsResponse', 'runtime');
    BuiltValueNullFieldError.checkNotNull(
        status, 'MovieDetailsResponse', 'status');
    BuiltValueNullFieldError.checkNotNull(
        tagline, 'MovieDetailsResponse', 'tagline');
    BuiltValueNullFieldError.checkNotNull(
        title, 'MovieDetailsResponse', 'title');
    BuiltValueNullFieldError.checkNotNull(
        video, 'MovieDetailsResponse', 'video');
    BuiltValueNullFieldError.checkNotNull(
        voteAverage, 'MovieDetailsResponse', 'voteAverage');
    BuiltValueNullFieldError.checkNotNull(
        voteCount, 'MovieDetailsResponse', 'voteCount');
  }

  @override
  MovieDetailsResponse rebuild(
          void Function(MovieDetailsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MovieDetailsResponseBuilder toBuilder() =>
      new MovieDetailsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MovieDetailsResponse &&
        adult == other.adult &&
        backdropPath == other.backdropPath &&
        budget == other.budget &&
        homepage == other.homepage &&
        id == other.id &&
        imdbId == other.imdbId &&
        originalLanguage == other.originalLanguage &&
        originalTitle == other.originalTitle &&
        overview == other.overview &&
        popularity == other.popularity &&
        posterPath == other.posterPath &&
        releaseDate == other.releaseDate &&
        revenue == other.revenue &&
        runtime == other.runtime &&
        status == other.status &&
        tagline == other.tagline &&
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
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc(0, adult.hashCode),
                                                                                backdropPath.hashCode),
                                                                            budget.hashCode),
                                                                        homepage.hashCode),
                                                                    id.hashCode),
                                                                imdbId.hashCode),
                                                            originalLanguage.hashCode),
                                                        originalTitle.hashCode),
                                                    overview.hashCode),
                                                popularity.hashCode),
                                            posterPath.hashCode),
                                        releaseDate.hashCode),
                                    revenue.hashCode),
                                runtime.hashCode),
                            status.hashCode),
                        tagline.hashCode),
                    title.hashCode),
                video.hashCode),
            voteAverage.hashCode),
        voteCount.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MovieDetailsResponse')
          ..add('adult', adult)
          ..add('backdropPath', backdropPath)
          ..add('budget', budget)
          ..add('homepage', homepage)
          ..add('id', id)
          ..add('imdbId', imdbId)
          ..add('originalLanguage', originalLanguage)
          ..add('originalTitle', originalTitle)
          ..add('overview', overview)
          ..add('popularity', popularity)
          ..add('posterPath', posterPath)
          ..add('releaseDate', releaseDate)
          ..add('revenue', revenue)
          ..add('runtime', runtime)
          ..add('status', status)
          ..add('tagline', tagline)
          ..add('title', title)
          ..add('video', video)
          ..add('voteAverage', voteAverage)
          ..add('voteCount', voteCount))
        .toString();
  }
}

class MovieDetailsResponseBuilder
    implements Builder<MovieDetailsResponse, MovieDetailsResponseBuilder> {
  _$MovieDetailsResponse? _$v;

  bool? _adult;
  bool? get adult => _$this._adult;
  set adult(bool? adult) => _$this._adult = adult;

  String? _backdropPath;
  String? get backdropPath => _$this._backdropPath;
  set backdropPath(String? backdropPath) => _$this._backdropPath = backdropPath;

  int? _budget;
  int? get budget => _$this._budget;
  set budget(int? budget) => _$this._budget = budget;

  String? _homepage;
  String? get homepage => _$this._homepage;
  set homepage(String? homepage) => _$this._homepage = homepage;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _imdbId;
  String? get imdbId => _$this._imdbId;
  set imdbId(String? imdbId) => _$this._imdbId = imdbId;

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

  int? _revenue;
  int? get revenue => _$this._revenue;
  set revenue(int? revenue) => _$this._revenue = revenue;

  int? _runtime;
  int? get runtime => _$this._runtime;
  set runtime(int? runtime) => _$this._runtime = runtime;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _tagline;
  String? get tagline => _$this._tagline;
  set tagline(String? tagline) => _$this._tagline = tagline;

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

  MovieDetailsResponseBuilder();

  MovieDetailsResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _adult = $v.adult;
      _backdropPath = $v.backdropPath;
      _budget = $v.budget;
      _homepage = $v.homepage;
      _id = $v.id;
      _imdbId = $v.imdbId;
      _originalLanguage = $v.originalLanguage;
      _originalTitle = $v.originalTitle;
      _overview = $v.overview;
      _popularity = $v.popularity;
      _posterPath = $v.posterPath;
      _releaseDate = $v.releaseDate;
      _revenue = $v.revenue;
      _runtime = $v.runtime;
      _status = $v.status;
      _tagline = $v.tagline;
      _title = $v.title;
      _video = $v.video;
      _voteAverage = $v.voteAverage;
      _voteCount = $v.voteCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MovieDetailsResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MovieDetailsResponse;
  }

  @override
  void update(void Function(MovieDetailsResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MovieDetailsResponse build() {
    final _$result = _$v ??
        new _$MovieDetailsResponse._(
            adult: BuiltValueNullFieldError.checkNotNull(
                adult, 'MovieDetailsResponse', 'adult'),
            backdropPath: BuiltValueNullFieldError.checkNotNull(
                backdropPath, 'MovieDetailsResponse', 'backdropPath'),
            budget: BuiltValueNullFieldError.checkNotNull(
                budget, 'MovieDetailsResponse', 'budget'),
            homepage: BuiltValueNullFieldError.checkNotNull(
                homepage, 'MovieDetailsResponse', 'homepage'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'MovieDetailsResponse', 'id'),
            imdbId: BuiltValueNullFieldError.checkNotNull(
                imdbId, 'MovieDetailsResponse', 'imdbId'),
            originalLanguage: BuiltValueNullFieldError.checkNotNull(
                originalLanguage, 'MovieDetailsResponse', 'originalLanguage'),
            originalTitle: BuiltValueNullFieldError.checkNotNull(
                originalTitle, 'MovieDetailsResponse', 'originalTitle'),
            overview: BuiltValueNullFieldError.checkNotNull(overview, 'MovieDetailsResponse', 'overview'),
            popularity: BuiltValueNullFieldError.checkNotNull(popularity, 'MovieDetailsResponse', 'popularity'),
            posterPath: BuiltValueNullFieldError.checkNotNull(posterPath, 'MovieDetailsResponse', 'posterPath'),
            releaseDate: BuiltValueNullFieldError.checkNotNull(releaseDate, 'MovieDetailsResponse', 'releaseDate'),
            revenue: BuiltValueNullFieldError.checkNotNull(revenue, 'MovieDetailsResponse', 'revenue'),
            runtime: BuiltValueNullFieldError.checkNotNull(runtime, 'MovieDetailsResponse', 'runtime'),
            status: BuiltValueNullFieldError.checkNotNull(status, 'MovieDetailsResponse', 'status'),
            tagline: BuiltValueNullFieldError.checkNotNull(tagline, 'MovieDetailsResponse', 'tagline'),
            title: BuiltValueNullFieldError.checkNotNull(title, 'MovieDetailsResponse', 'title'),
            video: BuiltValueNullFieldError.checkNotNull(video, 'MovieDetailsResponse', 'video'),
            voteAverage: BuiltValueNullFieldError.checkNotNull(voteAverage, 'MovieDetailsResponse', 'voteAverage'),
            voteCount: BuiltValueNullFieldError.checkNotNull(voteCount, 'MovieDetailsResponse', 'voteCount'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
