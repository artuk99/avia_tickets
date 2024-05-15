import 'package:avia_tickets/src/core/theme/app_colors_extension.dart';
import 'package:avia_tickets/src/core/utils/extensions/date_extension.dart';
import 'package:avia_tickets/src/feature/avia_tickets/search/model/search_query.dart';
import 'package:avia_tickets/src/feature/avia_tickets/search/widget/search_scope.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchFilters extends StatelessWidget {
  const SearchFilters({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 33,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [
            _DateFilters(),
            const SizedBox(width: 8),
            Builder(
              builder: (context) {
                final passengers = SearchScope.of(context).searchQuery.passengers;

                return ActionChip(
                  onPressed: () {},
                  label: Row(
                    children: [
                      const Icon(
                        Icons.person,
                        size: 16,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        '${passengers.adults},${passengers.type}',
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                              fontStyle: FontStyle.italic,
                            ),
                      ),
                    ],
                  ),
                );
              },
            ),
            const SizedBox(width: 8),
            ActionChip(
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              onPressed: () {},
              color: MaterialStateColor.resolveWith((states) => const Color(0xff2F3035)),
              side: BorderSide.none,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              label: Row(
                children: [
                  SvgPicture.asset(
                    'assets/icons/filter.svg',
                    width: 16,
                    height: 16,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    'фильтры',
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          fontStyle: FontStyle.italic,
                        ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _DateFilters extends StatefulWidget {
  @override
  State<_DateFilters> createState() => _DateFiltersState();
}

class _DateFiltersState extends State<_DateFilters> {
  void _onDepartureTap() async {
    final searchQuery = SearchScope.of(context, listen: false).searchQuery;
    final now = DateTime.now();

    final selectedDate = await showDatePicker(
      context: context,
      initialDate: searchQuery.flightDate.departure,
      firstDate: now,
      initialEntryMode: DatePickerEntryMode.calendarOnly,
      lastDate: DateTime(now.year + 1, now.month, now.day),
    );

    if (selectedDate != null && mounted) {
      FlightDate fightDate = searchQuery.flightDate.copyWith(departure: selectedDate);
      if (fightDate.back?.isBefore(selectedDate) ?? false) {
        fightDate = fightDate.copyWith(back: null);
      }

      SearchScope.of(context, listen: false).search(searchQuery.copyWith(flightDate: fightDate));
    }
  }

  void _onReturnTap() async {
    final searchQuery = SearchScope.of(context, listen: false).searchQuery;
    final now = DateTime.now();

    final selectedDate = await showDatePicker(
      context: context,
      firstDate: searchQuery.flightDate.departure,
      initialEntryMode: DatePickerEntryMode.calendarOnly,
      lastDate: DateTime(now.year + 1, now.month, now.day),
    );

    if (mounted) {
      final fightDate = searchQuery.flightDate.copyWith(back: selectedDate);

      SearchScope.of(context, listen: false).search(searchQuery.copyWith(flightDate: fightDate));
    }
  }

  @override
  Widget build(BuildContext context) {
    final fightDate = SearchScope.of(context).searchQuery.flightDate;
    final departureDate = fightDate.departure;
    final backDate = fightDate.back;

    final textTheme = Theme.of(context).textTheme;
    final appColors = Theme.of(context).extension<BasicColors>()!;
    return backDate != null
        ? Builder(
            builder: (context) {
              final returnDay = backDate.dayAbbreviated;

              return DecoratedBox(
                decoration: BoxDecoration(
                  color: appColors.grey_3,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: IntrinsicHeight(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: _onDepartureTap,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(50),
                            bottomLeft: Radius.circular(50),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 8, 6, 8),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  WidgetSpan(
                                    child: Text(
                                      departureDate.daymonthAbbreviated,
                                      style: textTheme.titleSmall!.copyWith(
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                  ),
                                  TextSpan(
                                    text: ', ${departureDate.dayAbbreviated}',
                                    style: textTheme.titleSmall!.copyWith(
                                      fontStyle: FontStyle.italic,
                                      color: appColors.grey_6,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      VerticalDivider(
                        color: appColors.grey_6,
                        indent: 8,
                        endIndent: 8,
                        width: 1,
                      ),
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: _onReturnTap,
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(50),
                            bottomRight: Radius.circular(50),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(6, 8, 10, 8),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  WidgetSpan(
                                    child: Text(
                                      backDate.daymonthAbbreviated,
                                      style: textTheme.titleSmall!.copyWith(
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                  ),
                                  TextSpan(
                                    text: ', $returnDay',
                                    style: textTheme.titleSmall!.copyWith(
                                      fontStyle: FontStyle.italic,
                                      color: appColors.grey_6,
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
              );
            },
          )
        : Row(
            children: [
              ActionChip(
                onPressed: _onReturnTap,
                label: Row(
                  children: [
                    const Icon(
                      Icons.add,
                      size: 16,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      'обратно',
                      style: textTheme.titleSmall!.copyWith(
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 8),
              ActionChip(
                onPressed: _onDepartureTap,
                label: RichText(
                  text: TextSpan(
                    children: [
                      WidgetSpan(
                        child: Text(
                          departureDate.daymonthAbbreviated,
                          style: textTheme.titleSmall!.copyWith(
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                      TextSpan(
                        text: ', ${departureDate.dayAbbreviated}',
                        style: textTheme.titleSmall!.copyWith(
                          fontStyle: FontStyle.italic,
                          color: appColors.grey_6,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
  }
}
