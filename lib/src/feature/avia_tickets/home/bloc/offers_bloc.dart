import 'package:avia_tickets/src/feature/avia_tickets/home/data/offers_repository.dart';
import 'package:avia_tickets/src/feature/avia_tickets/home/model/offer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'offers_bloc.freezed.dart';

/// Entity placeholder for OffersState
typedef OffersEntity = List<Offer>;

/// Offers Events
@freezed
sealed class OffersEvent with _$OffersEvent {
  const OffersEvent._();

  const factory OffersEvent.fetch() = _FetchOffers;
}

/// Offers States
@freezed
abstract class OffersState with _$OffersState {
  const OffersState._();

  const factory OffersState.processing({
    required OffersEntity data,
    @Default('Processing') String message,
  }) = _ProcessingOffersState;

  const factory OffersState.successful({
    required OffersEntity data,
    @Default('Successful') String message,
  }) = _SuccessfulOffersState;

  const factory OffersState.error({
    required OffersEntity data,
    @Default('An error has occurred.') String message,
  }) = _ErrorOffersState;
}

/// Business Logic Component OffersBloc
final class OffersBloc extends Bloc<OffersEvent, OffersState> {
  OffersBloc({
    required OffersRepository offersRepository,
    final OffersState? initialState,
  })  : _offersRepository = offersRepository,
        super(
          initialState ??
              const OffersState.processing(
                data: [],
                message: 'Initial state',
              ),
        ) {
    on<OffersEvent>(
      (event, emit) => event.map(
        fetch: (event) => _fetch(event, emit),
      ),
      transformer: bloc_concurrency.sequential(),
    );
  }

  final OffersRepository _offersRepository;

  /// Fetch event handler
  Future<void> _fetch(
    _FetchOffers event,
    Emitter<OffersState> emit,
  ) async {
    try {
      emit(OffersState.processing(data: state.data));
      final targets = await _offersRepository.getOffers();
      emit(OffersState.successful(data: targets));
    } on Object catch (err) {
      emit(OffersState.error(data: state.data, message: err.toString()));
      rethrow;
    }
  }
}
