import 'package:avia_tickets/src/feature/avia_tickets/results/data/tickets_repository.dart';
import 'package:avia_tickets/src/feature/avia_tickets/result_preview/model/ticket_recomendation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recommendations_bloc.freezed.dart';

/// Entity placeholder for RecommendationsState
typedef DataEntity = List<TicketRecomendation>;

/// Recommendations Events
@freezed
sealed class RecommendationsEvent with _$RecommendationsEvent {
  const RecommendationsEvent._();

  const factory RecommendationsEvent.fetch() = _FetchRecommendations;
}

/// Recommendations States
@freezed
abstract class RecommendationsState with _$RecommendationsState {
  const RecommendationsState._();

  const factory RecommendationsState.processing({
    required DataEntity data,
    @Default('Processing') String message,
  }) = _ProcessingState;

  const factory RecommendationsState.successful({
    required DataEntity data,
    @Default('Successful') String message,
  }) = _SuccessfulState;

  const factory RecommendationsState.error({
    required DataEntity data,
    @Default('An error has occurred.') String message,
  }) = _ErrorState;
}

/// Business Logic Component TicketsBloc
final class RecommendationsBloc extends Bloc<RecommendationsEvent, RecommendationsState> {
  RecommendationsBloc({
    required TicketsRepository ticketsRepository,
    final RecommendationsState? initialState,
  })  : _ticketsRepository = ticketsRepository,
        super(
          initialState ??
              const RecommendationsState.processing(
                data: [],
                message: 'Initial state',
              ),
        ) {
    on<RecommendationsEvent>(
      (event, emit) => event.map(
        fetch: (event) => _fetch(event, emit),
      ),
      transformer: bloc_concurrency.sequential(),
    );
  }

  final TicketsRepository _ticketsRepository;

  /// Fetch event handler
  Future<void> _fetch(
    _FetchRecommendations event,
    Emitter<RecommendationsState> emit,
  ) async {
    try {
      emit(RecommendationsState.processing(data: state.data));
      final recommendations = await _ticketsRepository.getRecomendation();
      emit(RecommendationsState.successful(data: recommendations));
    } on Object catch (err) {
      emit(RecommendationsState.error(data: state.data, message: err.toString()));
      rethrow;
    }
  }
}
