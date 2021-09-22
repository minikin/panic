import 'package:flutter/foundation.dart';

@immutable
class NetworkError implements Exception {
  final int code;
  final String description;

  factory NetworkError(int code) {
    if (code == 400) {
      return _NetworkErrorExtension.badRequest;
    } else if (code == 401) {
      return _NetworkErrorExtension.unauthorized;
    } else if (code == 403) {
      return _NetworkErrorExtension.forbidden;
    } else if (code == 404) {
      return _NetworkErrorExtension.notFound;
    } else if (code == 500) {
      return _NetworkErrorExtension.serverError;
    } else if (code == 502) {
      return _NetworkErrorExtension.badGateway;
    } else if (code == 503) {
      return _NetworkErrorExtension.serviceUnavailable;
    } else if (code == 504) {
      return _NetworkErrorExtension.gatewayTimeout;
    } else {
      return _NetworkErrorExtension.unknown;
    }
  }

  const NetworkError._({
    required this.code,
    required this.description,
  });

  @override
  int get hashCode => code.hashCode ^ description.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is NetworkError &&
        other.code == code &&
        other.description == description;
  }

  @override
  String toString() => 'NetworkError(code: $code, description: $description)';
}

extension _NetworkErrorExtension on NetworkError {
  static const badRequest = NetworkError._(
    code: 400,
    description: ' Bad Request',
  );

  static const unauthorized = NetworkError._(
    code: 401,
    description: 'Unauthorized',
  );

  static const forbidden = NetworkError._(
    code: 403,
    description: 'Forbidden',
  );

  static const notFound = NetworkError._(
    code: 404,
    description: 'Not Found',
  );

  static const serverError = NetworkError._(
    code: 500,
    description: 'Internal Server Error',
  );

  static const badGateway = NetworkError._(
    code: 502,
    description: 'Bad Gateway',
  );

  static const serviceUnavailable = NetworkError._(
    code: 503,
    description: 'Service Unavailable',
  );

  static const gatewayTimeout = NetworkError._(
    code: 504,
    description: 'Gateway Timeout',
  );

  static const unknown = NetworkError._(
    code: 0,
    description: 'Unknown Error',
  );
}
