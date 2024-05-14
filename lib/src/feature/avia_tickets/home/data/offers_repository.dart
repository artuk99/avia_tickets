import 'package:avia_tickets/src/feature/avia_tickets/home/data/offers_data_source.dart';
import 'package:avia_tickets/src/feature/avia_tickets/home/model/offer.dart';

abstract interface class OffersRepository {
  Future<List<Offer>> getOffers();
}

final class OffersRepositoryImpl implements OffersRepository {
  OffersRepositoryImpl({required OffersRemoteDataSource remoteDataSource})
      : _remoteDataSource = remoteDataSource;

  final OffersRemoteDataSource _remoteDataSource;

  @override
  Future<List<Offer>> getOffers() => _remoteDataSource.getOffers();
}
