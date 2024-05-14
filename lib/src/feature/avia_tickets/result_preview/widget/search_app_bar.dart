import 'dart:math';
import 'dart:ui';

import 'package:avia_tickets/src/feature/avia_tickets/result_preview/widget/search_filters.dart';
import 'package:avia_tickets/src/feature/avia_tickets/search/widget/search_screen.dart';
import 'package:avia_tickets/src/feature/avia_tickets/search/widget/search_scope.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class SearchAppBar extends StatefulWidget {
  const SearchAppBar({super.key});

  @override
  State<SearchAppBar> createState() => _SearchAppBarState();
}

class _SearchAppBarState extends State<SearchAppBar> with SingleTickerProviderStateMixin {
  void _onBackIconTap() {
    GoRouter.of(context).pop();
  }

  void _onSwipeIconTap() {
    final searchQuery = SearchScope.of(context).searchQuery;
    final departure = searchQuery.departure;
    final arrival = searchQuery.arrival;

    if (arrival == null) return;

    SearchScope.of(context).search(searchQuery.copyWith(
      arrival: departure,
      departure: arrival,
    ));
  }

  void _onClearIconTap() {
    GoRouter.of(context).pop();
  }

  void _onSearchFieldTap({
    bool focusDeparture = false,
    bool focusDestination = false,
  }) {
    showModalBottomSheet(
      clipBehavior: Clip.hardEdge,
      context: context,
      isScrollControlled: false,
      enableDrag: false,
      elevation: 0,
      useSafeArea: true,
      backgroundColor: Colors.transparent,
      scrollControlDisabledMaxHeightRatio: 0.95,
      builder: (context) => DraggableScrollableSheet(
        initialChildSize: 1,
        minChildSize: 0.9,
        snap: true,
        builder: (context, scrollController) => SearchScreen(
          scrollController: scrollController,
          focusDeparture: focusDeparture,
          focusDestination: focusDestination,
        ),
      ),
      useRootNavigator: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      pinned: true,
      floating: true,
      delegate: _SearchAppBarDelegate(
        onDepartureTap: () => _onSearchFieldTap(focusDeparture: true),
        onDestinationTap: () => _onSearchFieldTap(focusDestination: true),
        onBackIconTap: _onBackIconTap,
        onSwipeIconTap: _onSwipeIconTap,
        onClearIconTap: _onClearIconTap,
        topSafePadding: MediaQuery.paddingOf(context).top,
        vsync: this,
      ),
    );
  }
}

class _SearchAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SearchAppBarDelegate({
    required this.onDepartureTap,
    required this.onDestinationTap,
    required this.onBackIconTap,
    required this.onSwipeIconTap,
    required this.topSafePadding,
    required this.onClearIconTap,
    required this.vsync,
  });

  final VoidCallback onDepartureTap;
  final VoidCallback onDestinationTap;
  final VoidCallback onBackIconTap;
  final VoidCallback onSwipeIconTap;
  final VoidCallback onClearIconTap;
  final double topSafePadding;

  static const _expandedBottomPosition = 46.0;
  static const _expandedSearchFieldHeight = 96.0;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    /// SearchField
    final t_1 = shrinkOffset / _expandedBottomPosition;
    final contentOpacityExpanded = lerpDouble(1, 0, min(t_1, 1));
    final contentOpacityCollapsed = lerpDouble(0, 1, min(t_1 <= 1 ? 0 : t_1 - 1, 1));

    /// Filters
    final t_2 = shrinkOffset.clamp(0, _expandedBottomPosition) / _expandedBottomPosition;
    final filtersOpacity = lerpDouble(1, 0, t_2);

    final t_3 = (shrinkOffset - _expandedBottomPosition)
            .clamp(0, (maxExtent - minExtent - _expandedBottomPosition)) /
        (maxExtent - minExtent - _expandedBottomPosition);
    final height = lerpDouble(_expandedSearchFieldHeight, minExtent - 8 - 8, t_3);

    return ColoredBox(
      color: Colors.black,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Opacity(
              opacity: filtersOpacity!,
              child: const SearchFilters(),
            ),
          ),
          Positioned(
            top: 8,
            left: 0,
            right: 0,
            child: SizedBox(
              height: height,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Card(
                  margin: EdgeInsets.zero,
                  color: const Color(0xff2F3035),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      Opacity(
                        opacity: contentOpacityExpanded!,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Flexible(
                              child: Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  onTap: onDepartureTap,
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(16),
                                    topRight: Radius.circular(16),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 40),
                                    child: Stack(
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Builder(builder: (context) {
                                            final departure =
                                                SearchScope.of(context).searchQuery.departure.town;

                                            return Text(
                                              departure,
                                              style: const TextStyle(
                                                height: 1.3,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                                fontFamily: 'SfProDisplay',
                                                color: Colors.white,
                                              ),
                                            );
                                          }),
                                        ),
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: IconButton(
                                            onPressed: onSwipeIconTap,
                                            icon: SvgPicture.asset(
                                              'assets/icons/change.svg',
                                              colorFilter: const ColorFilter.mode(
                                                Colors.white,
                                                BlendMode.srcIn,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const Divider(
                              color: Color(0xff3E3F43),
                              indent: 40,
                              endIndent: 16,
                              height: 1,
                            ),
                            Flexible(
                              child: Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  onTap: onDestinationTap,
                                  borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(16),
                                    bottomRight: Radius.circular(16),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 40),
                                    child: Stack(
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Builder(builder: (context) {
                                            final arrival =
                                                SearchScope.of(context).searchQuery.arrival?.town;
                                            return Text(
                                              arrival ?? '',
                                              style: const TextStyle(
                                                height: 1.3,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                                fontFamily: 'SfProDisplay',
                                                color: Colors.white,
                                              ),
                                            );
                                          }),
                                        ),
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: IconButton(
                                            onPressed: onClearIconTap,
                                            icon: SvgPicture.asset(
                                              'assets/icons/close.svg',
                                              colorFilter: const ColorFilter.mode(
                                                Colors.white,
                                                BlendMode.srcIn,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Opacity(
                            opacity: contentOpacityCollapsed!,
                            child: Builder(
                              builder: (context) {
                                final departure =
                                    SearchScope.of(context).searchQuery.departure.town;
                                final arrival = SearchScope.of(context).searchQuery.arrival?.town;

                                return Text(
                                  '$departure - $arrival',
                                  style: const TextStyle(
                                    height: 1.3,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'SfProDisplay',
                                    color: Colors.white,
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: IconButton(
                          onPressed: onBackIconTap,
                          icon: SvgPicture.asset(
                            'assets/icons/arrow_back.svg',
                            colorFilter: const ColorFilter.mode(
                              Colors.white,
                              BlendMode.srcIn,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  double get maxExtent => 150;

  @override
  double get minExtent => 70;

  @override
  final TickerProvider vsync;

  @override
  PersistentHeaderShowOnScreenConfiguration? get showOnScreenConfiguration =>
      PersistentHeaderShowOnScreenConfiguration(
        minShowOnScreenExtent: maxExtent,
      );

  @override
  bool shouldRebuild(_SearchAppBarDelegate oldDelegate) =>
      oldDelegate.maxExtent != maxExtent || oldDelegate.minExtent != minExtent;
}
