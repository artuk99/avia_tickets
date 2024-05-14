import 'package:avia_tickets/src/core/router/routes.dart';
import 'package:avia_tickets/src/feature/avia_tickets/search/data/destination_offers.dart';
import 'package:avia_tickets/src/feature/avia_tickets/search/model/city.dart';
import 'package:avia_tickets/src/feature/avia_tickets/search/model/search_query.dart';
import 'package:avia_tickets/src/feature/avia_tickets/search/widget/search_scope.dart';
import 'package:flutter/material.dart';

class PopularPlaces extends StatefulWidget {
  const PopularPlaces({super.key});

  @override
  State<PopularPlaces> createState() => _PopularPlacesState();
}

class _PopularPlacesState extends State<PopularPlaces> {
  void _onPopularPlaceTap(final City city) async {
    final searchQuery = SearchScope.of(context, listen: false).searchQuery;

    SearchScope.of(context, listen: false).search(searchQuery.copyWith(
      arrival: Point(town: city.title),
    ));
    SearchResultRoute().go(context);
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: const Color(0xff2F3035),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Column(
          children: [
            for (var city in destinationOffers)
              _PopularPlace(
                onTap: () => _onPopularPlaceTap(city),
                city: city,
              ),
          ],
        ),
      ),
    );
  }
}

class _PopularPlace extends StatelessWidget {
  const _PopularPlace({
    required this.onTap,
    required this.city,
  });

  final VoidCallback onTap;
  final City city;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
          child: DecoratedBox(
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Color(0xff3E3F43),
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Row(
                children: [
                  SizedBox.square(
                    dimension: 40,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        city.image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        city.title,
                        style: const TextStyle(
                          height: 1.2,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'SfProDisplay',
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        'Популярное направление',
                        style: TextStyle(
                          height: 1.2,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'SfProDisplay',
                          color: Color(0xff5E5F61),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
