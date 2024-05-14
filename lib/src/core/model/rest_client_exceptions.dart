abstract base class RestClientException implements Exception {
  final String message;
  final Object? cause;
  final int? statusCode;

  RestClientException({required this.message, this.statusCode, this.cause});
}

final class UnexpectedResponseBodyException extends RestClientException {
  UnexpectedResponseBodyException({required super.message, super.statusCode});

  @override
  String toString() => 'UnexpectedResponseBodyException('
      'message: $message,'
      'statusCode: $statusCode,'
      ')';
}

final class ClientException extends RestClientException {
  ClientException({required super.message, super.statusCode, super.cause});

  @override
  String toString() => 'ClientException('
      'message: $message,'
      'statusCode: $statusCode,'
      'cause: $cause}'
      ')';
}

final class ConnectionException extends RestClientException {
  ConnectionException({required super.message, super.statusCode, super.cause});

  @override
  String toString() => 'ConnectionException('
      'message: $message,'
      'statusCode: $statusCode,'
      'cause: $cause}'
      ')';
}
