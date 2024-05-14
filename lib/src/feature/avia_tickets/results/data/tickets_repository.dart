import 'package:avia_tickets/src/feature/avia_tickets/results/data/tickets_data_source.dart';
import 'package:avia_tickets/src/feature/avia_tickets/results/model/ticket.dart';
import 'package:avia_tickets/src/feature/avia_tickets/result_preview/model/ticket_recomendation.dart';

abstract interface class TicketsRepository {
  Future<List<TicketRecomendation>> getRecomendation();

  Future<List<Ticket>> getTickets();
}

final class TicketsRepositoryImpl implements TicketsRepository {
  TicketsRepositoryImpl({required TicketsRemoteDataSource remoteDataSource})
      : _remoteDataSource = remoteDataSource;

  final TicketsRemoteDataSource _remoteDataSource;

  @override
  Future<List<TicketRecomendation>> getRecomendation() => _remoteDataSource.getRecomendation();

  @override
  Future<List<Ticket>> getTickets() => _remoteDataSource.getTickets();
}
