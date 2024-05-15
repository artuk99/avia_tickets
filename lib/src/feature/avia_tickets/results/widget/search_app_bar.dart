import 'dart:ui';

import 'package:avia_tickets/src/core/theme/app_colors_extension.dart';
import 'package:avia_tickets/src/core/utils/extensions/date_extension.dart';
import 'package:avia_tickets/src/feature/avia_tickets/search/widget/search_scope.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class SearchAppBar extends StatefulWidget {
  const SearchAppBar({super.key});

  @override
  State<SearchAppBar> createState() => _SearchAppBarState();
}

class _SearchAppBarState extends State<SearchAppBar> {
  void _onBackIconTap() {
    GoRouter.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      delegate: _AppBarDelegate(
        onBackIconTap: _onBackIconTap,
        topSafePadding: MediaQuery.paddingOf(context).top,
      ),
      pinned: true,
    );
  }
}

class _AppBarDelegate extends SliverPersistentHeaderDelegate {
  _AppBarDelegate({
    required this.onBackIconTap,
    required this.topSafePadding,
  });

  final VoidCallback onBackIconTap;
  final double topSafePadding;

  final _outterPaddingTween = Tween<double>(
    begin: 16,
    end: 0,
  );

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    final t = shrinkOffset.clamp(0, maxExtent - minExtent) / (maxExtent - minExtent);
    final height = lerpDouble(minExtent - topSafePadding, maxExtent, t)!;
    final outterPadding = lerpDouble(_outterPaddingTween.begin, _outterPaddingTween.end, t);

    final textTheme = Theme.of(context).textTheme;
    final appColors = Theme.of(context).extension<BasicColors>()!;
    return ColoredBox(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: outterPadding!),
          child: ColoredBox(
            color: appColors.grey_2,
            child: SizedBox(
              height: height,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: onBackIconTap,
                        icon: SvgPicture.asset(
                          'assets/icons/arrow_back.svg',
                          colorFilter: ColorFilter.mode(
                            appColors.blue,
                            BlendMode.srcIn,
                          ),
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Builder(builder: (context) {
                            final searchQuery = SearchScope.of(context).searchQuery;
                            final departure = searchQuery.departure.town;

                            final arrival = searchQuery.arrival?.town;

                            return Text(
                              '$departure - $arrival',
                              style: textTheme.bodyLarge,
                            );
                          }),
                          const SizedBox(height: 4),
                          Builder(builder: (context) {
                            final searchQuery = SearchScope.of(context).searchQuery;
                            final flightDate = searchQuery.flightDate;
                            final passengers = searchQuery.passengers;

                            final String dates = flightDate.back == null
                                ? flightDate.departure.dayMonth
                                : '${flightDate.departure.daymonthAbbreviated} - ${flightDate.back!.daymonthAbbreviated}';

                            return Text(
                              '$dates, ${passengers.adults} пассажир',
                              style: textTheme.titleSmall!.copyWith(
                                fontStyle: FontStyle.italic,
                                color: appColors.grey_6,
                              ),
                            );
                          }),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  double get maxExtent => 72 + topSafePadding;

  @override
  double get minExtent => 59 + topSafePadding;

  @override
  bool shouldRebuild(_AppBarDelegate oldDelegate) =>
      oldDelegate.maxExtent != maxExtent || oldDelegate.minExtent != minExtent;
}
