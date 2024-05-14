import 'package:avia_tickets/src/core/model/rest_client_exceptions.dart';
import 'package:avia_tickets/src/feature/avia_tickets/results/model/ticket.dart';
import 'package:avia_tickets/src/feature/avia_tickets/result_preview/model/ticket_recomendation.dart';
import 'package:dio/dio.dart';

abstract interface class TicketsRemoteDataSource {
  Future<List<TicketRecomendation>> getRecomendation();

  Future<List<Ticket>> getTickets();
}

final class TicketsRemoteDataSourceImpl implements TicketsRemoteDataSource {
  TicketsRemoteDataSourceImpl(Dio client, {required String baseUrl})
      : _client = client,
        _baseUrl = baseUrl;

  final Dio _client;
  final String _baseUrl;

  @override
  Future<List<TicketRecomendation>> getRecomendation() async {
    try {
      final response = await _client.get(
        '$_baseUrl/7e55bf02-89ff-4847-9eb7-7d83ef884017',
        options: Options(
          headers: {
            'Content-Type': 'application/json',
          },
        ),
      );

      if (response.data
          case <String, Object?>{
            'tickets_offers': List<dynamic> data,
          }) {
        return List<TicketRecomendation>.from(data.map((x) => TicketRecomendation.fromJson(x)));
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

  @override
  Future<List<Ticket>> getTickets() async {
    try {
      final response = await _client.get(
        '$_baseUrl/670c3d56-7f03-4237-9e34-d437a9e56ebf',
        options: Options(
          headers: {
            'Content-Type': 'application/json',
          },
        ),
      );

      if (response.data
          case <String, Object?>{
            'tickets': List<dynamic> data,
          }) {
        return List<Ticket>.from(data.map((x) => Ticket.fromJson(x)));
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
