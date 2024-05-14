import 'package:avia_tickets/src/core/model/rest_client_exceptions.dart';
import 'package:avia_tickets/src/feature/avia_tickets/home/model/offer.dart';
import 'package:dio/dio.dart';

abstract interface class OffersRemoteDataSource {
  Future<List<Offer>> getOffers();
}

final class OffersRemoteDataSourceImpl implements OffersRemoteDataSource {
  OffersRemoteDataSourceImpl(Dio client, {required String baseUrl})
      : _client = client,
        _baseUrl = baseUrl;

  final Dio _client;
  final String _baseUrl;

  @override
  Future<List<Offer>> getOffers() async {
    try {
      final response = await _client.get(
        '$_baseUrl/214a1713-bac0-4853-907c-a1dfc3cd05fd',
        options: Options(
          headers: {
            'Content-Type': 'application/json',
          },
        ),
      );

      if (response.data
          case <String, Object?>{
            'offers': List<dynamic> data,
          }) {
        return List<Offer>.from(data.map((x) => Offer.fromJson(x)));
      }

      throw UnexpectedResponseBodyException(
        message: 'Unexpected response body',
        statusCode: response.statusCode,
      );
    } on DioException catch (err) {
      if (err.type == DioExceptionType.connectionError ||
          err.type == DioExceptionType.sendTimeout ||
          err.type == DioExceptionType.receiveTimeout) {
        Error.throwWithStackTrace(
            ConnectionException(
              message: 'ConnectionException',
              statusCode: err.response?.statusCode,
              cause: err,
            ),
            err.stackTrace);
      }

      Error.throwWithStackTrace(
          ClientException(
            message: 'ClientException:',
            statusCode: err.response?.statusCode,
            cause: err,
          ),
          err.stackTrace);
    } on Object catch (err, stackTrace) {
      Error.throwWithStackTrace(
          ClientException(
            message: 'ClientException:',
            cause: err,
          ),
          stackTrace);
    }
  }
}
