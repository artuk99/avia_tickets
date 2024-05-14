import 'package:avia_tickets/src/feature/avia_tickets/search/widget/hints_list.dart';
import 'package:avia_tickets/src/feature/avia_tickets/search/widget/popular_places.dart';
import 'package:avia_tickets/src/feature/avia_tickets/search/widget/search_app_bar.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({
    required this.scrollController,
    required this.focusDeparture,
    required this.focusDestination,
    super.key,
  });

  final ScrollController scrollController;
  final bool focusDeparture;
  final bool focusDestination;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        color: Color(0xff242529),
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 37),
            child: ListView(
              controller: scrollController,
              children: [
                const SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: SearchAppBar(
                    focusDeparture: focusDeparture,
                    focusDestination: focusDestination,
                  ),
                ),
                const SizedBox(height: 24),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: HintsList(),
                ),
                const SizedBox(height: 30),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: PopularPlaces(),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: SizedBox(
                height: 5,
                width: 38,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: const Color(0xff5E5F61),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
