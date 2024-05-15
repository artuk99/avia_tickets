import 'dart:math';
import 'dart:ui';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:avia_tickets/src/core/theme/app_colors_extension.dart';
import 'package:avia_tickets/src/core/utils/text_measure.dart';
import 'package:avia_tickets/src/core/widget/animated_text.dart';
import 'package:avia_tickets/src/feature/avia_tickets/search/model/search_query.dart';
import 'package:avia_tickets/src/feature/avia_tickets/search/widget/search_screen.dart';
import 'package:avia_tickets/src/feature/avia_tickets/search/widget/search_scope.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchAppBar extends StatefulWidget {
  const SearchAppBar({super.key});

  @override
  State<SearchAppBar> createState() => _SearchAppBarState();
}

class _SearchAppBarState extends State<SearchAppBar> {
  Size _textSize = Size.zero;

  @override
  void didChangeDependencies() {
    _textSize = TextMeasure.measure(
      'Поиск дешевых \nавиабилетов',
      width: double.infinity,
      style: Theme.of(context).textTheme.titleLarge!.copyWith(
        shadows: [
          BoxShadow(
            offset: const Offset(0, 4),
            blurRadius: 4,
            color: Colors.black.withOpacity(0.25),
          ),
        ],
      ),
    );

    super.didChangeDependencies();
  }

  void _onSearchFieldTap({
    bool focusDeparture = false,
    bool focusDestination = false,
  }) {
    final searchQuery = SearchScope.of(context).searchQuery;

    SearchScope.of(context).search(
      SearchQuery(
        departure: searchQuery.departure,
        flightDate: FlightDate(departure: DateTime.now()),
      ),
    );

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
      delegate: _SearchFieldDelegate(
        onDepartureTap: () => _onSearchFieldTap(focusDeparture: true),
        onDestinationTap: () => _onSearchFieldTap(focusDestination: true),
        topSafePadding: MediaQuery.paddingOf(context).top,
        textSize: _textSize,
      ),
      pinned: true,
    );
  }
}

class _SearchFieldDelegate extends SliverPersistentHeaderDelegate {
  _SearchFieldDelegate({
    required this.onDepartureTap,
    required this.onDestinationTap,
    required this.topSafePadding,
    required this.textSize,
  });

  final VoidCallback onDepartureTap;
  final VoidCallback onDestinationTap;
  final double topSafePadding;
  final Size textSize;

  static const _searchFieldHeight = 122;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    /// Title
    final titleStyle = Theme.of(context).textTheme.titleLarge!.copyWith(
      shadows: [
        BoxShadow(
          offset: const Offset(0, 4),
          blurRadius: 4,
          color: Colors.black.withOpacity(0.25),
        ),
      ],
    );
    final titleTopPadding = (maxExtent - _searchFieldHeight - textSize.height + topSafePadding) / 2;

    /// SearchField
    final t_1 = shrinkOffset.clamp(0, maxExtent - minExtent) / (maxExtent - minExtent);
    final topPosition = lerpDouble(maxExtent - _searchFieldHeight, 0, t_1);
    final height = lerpDouble(_searchFieldHeight, minExtent, t_1);
    final outterPadding = lerpDouble(16, 0, t_1);
    final outterBorder = BorderRadiusTween(
      begin: BorderRadius.circular(16),
      end: BorderRadius.zero,
    ).lerp(t_1);

    final innerTopPadding = lerpDouble(10, topSafePadding, t_1);

    final t_3 = 2 * shrinkOffset.clamp(0, _searchFieldHeight) / _searchFieldHeight;
    final contentOpacityExpanded = lerpDouble(1, 0, min(t_3, 1));
    final contentOpacityCollapsed = lerpDouble(0, 1, min(t_3 <= 1 ? 0 : t_3 - 1, 1));

    final appColors = Theme.of(context).extension<BasicColors>()!;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: outterPadding!),
      child: Stack(
        children: [
          Positioned(
            top: titleTopPadding,
            left: 0,
            right: 0,
            child: Transform.translate(
              offset: Offset(0, -shrinkOffset * 1.3),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Text(
                    'Поиск дешевых \nавиабилетов',
                    textAlign: TextAlign.center,
                    style: titleStyle.copyWith(
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 1
                        ..color = Colors.black,
                    ),
                  ),
                  Text(
                    'Поиск дешевых \nавиабилетов',
                    textAlign: TextAlign.center,
                    style: titleStyle,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: topPosition,
            left: 0,
            right: 0,
            child: SizedBox(
              height: height,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: appColors.grey_3,
                  borderRadius: outterBorder,
                ),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, max(10, innerTopPadding!), 10, 10),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: appColors.grey_4,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          blurRadius: 4,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Stack(
                      children: [
                        Opacity(
                          opacity: contentOpacityExpanded!,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                fit: FlexFit.tight,
                                child: Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                    onTap: onDepartureTap,
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(16),
                                      topRight: Radius.circular(16),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 40, top: 16, bottom: 12),
                                      child: Builder(
                                        builder: (context) {
                                          final departure =
                                              SearchScope.of(context).searchQuery.departure.town;

                                          return Text(
                                            departure,
                                            style: Theme.of(context).textTheme.bodySmall!,
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Divider(
                                color: appColors.grey_5,
                                indent: 40,
                                endIndent: 16,
                                height: 1,
                              ),
                              Flexible(
                                fit: FlexFit.tight,
                                child: Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                    onTap: onDestinationTap,
                                    borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(16),
                                      bottomRight: Radius.circular(16),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 40, bottom: 16, top: 12),
                                      child: RichText(
                                        text: TextSpan(
                                          children: [
                                            WidgetSpan(
                                              child: Text(
                                                'Куда - ',
                                                style:
                                                    Theme.of(context).textTheme.bodySmall!.copyWith(
                                                          color: appColors.grey_6,
                                                        ),
                                              ),
                                            ),
                                            WidgetSpan(
                                              child: AnimatedTextKit(
                                                repeatForever: true,
                                                animatedTexts: [
                                                  TyperAndDelitingAnimatedText(
                                                    'Турция',
                                                    speed: const Duration(milliseconds: 200),
                                                    textStyle: Theme.of(context)
                                                        .textTheme
                                                        .bodySmall!
                                                        .copyWith(
                                                          color: appColors.grey_6,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
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
                              child: Text(
                                'Откуда - Куда',
                                style: Theme.of(context).textTheme.bodySmall!,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 10,
                          top: 0,
                          bottom: 0,
                          child: IgnorePointer(
                            child: SvgPicture.asset(
                              'assets/icons/search.svg',
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
          ),
        ],
      ),
    );
  }

  @override
  double get maxExtent => 238 + topSafePadding;

  @override
  double get minExtent => 75 + topSafePadding;

  @override
  bool shouldRebuild(covariant _SearchFieldDelegate oldDelegate) =>
      oldDelegate.maxExtent != maxExtent || oldDelegate.minExtent != minExtent;
}
