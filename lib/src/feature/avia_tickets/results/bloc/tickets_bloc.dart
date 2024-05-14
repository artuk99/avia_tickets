import 'package:avia_tickets/src/feature/avia_tickets/results/data/tickets_repository.dart';
import 'package:avia_tickets/src/feature/avia_tickets/results/model/ticket.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tickets_bloc.freezed.dart';

/// Entity placeholder for TicketsState
typedef DataEntity = List<Ticket>;

/// Tickets Events
@freezed
sealed class TicketsEvent with _$TicketsEvent {
  const TicketsEvent._();

  const factory TicketsEvent.fetch() = _FetchTickets;
}

/// Tickets States
@freezed
abstract class TicketsState with _$TicketsState {
  const TicketsState._();

  const factory TicketsState.processing({
    required DataEntity data,
    @Default('Processing') String message,
  }) = _ProcessingTicketsState;

  const factory TicketsState.successful({
    required DataEntity data,
    @Default('Successful') String message,
  }) = _SuccessfulTicketsState;

  const factory TicketsState.error({
    required DataEntity data,
    @Default('An error has occurred.') String message,
  }) = _ErrorTicketsState;
}

/// Business Logic Component TicketsBloc
final class TicketsBloc extends Bloc<TicketsEvent, TicketsState> {
  TicketsBloc({
    required TicketsRepository ticketsRepository,
    final TicketsState? initialState,
  })  : _ticketsRepository = ticketsRepository,
        super(
          initialState ??
              const TicketsState.processing(
                data: [],
                message: 'Initial state',
              ),
        ) {
    on<TicketsEvent>(
      (event, emit) => event.map(
        fetch: (event) => _fetch(event, emit),
      ),
      transformer: bloc_concurrency.sequential(),
    );
  }

  final TicketsRepository _ticketsRepository;

  /// Fetch event handler
  Future<void> _fetch(
    _FetchTickets event,
    Emitter<TicketsState> emit,
  ) async {
    try {
      emit(TicketsState.processing(data: state.data));
      final targets = await _ticketsRepository.getTickets();
      emit(TicketsState.successful(data: targets));
    } on Object catch (err) {
      emit(TicketsState.error(data: state.data, message: err.toString()));
      rethrow;
    }
  }
}
