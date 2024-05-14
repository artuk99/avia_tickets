import 'package:avia_tickets/src/core/router/routes.dart';
import 'package:avia_tickets/src/feature/avia_tickets/search/model/search_query.dart';
import 'package:avia_tickets/src/feature/avia_tickets/search/widget/search_scope.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchAppBar extends StatefulWidget {
  const SearchAppBar({
    required this.focusDeparture,
    required this.focusDestination,
    super.key,
  });

  final bool focusDeparture;
  final bool focusDestination;

  @override
  State<SearchAppBar> createState() => _SearchAppBarState();
}

class _SearchAppBarState extends State<SearchAppBar> {
  late final TextEditingController _departureSearchController;
  late final FocusNode _departureFocusNode;
  late final TextEditingController _destinationSearchController;
  late final FocusNode _destinationFocusNode;

  final _departureHasFocus = ValueNotifier<bool>(false);
  final _destinationHasFocus = ValueNotifier<bool>(false);

  @override
  void initState() {
    super.initState();

    _departureSearchController = TextEditingController()
      ..text = SearchScope.of(context, listen: false).searchQuery.departure.town;
    _departureFocusNode = FocusNode()..addListener(_onDepartureFocusChange);
    if (widget.focusDeparture) {
      _departureSearchController.selection = TextSelection(
        baseOffset: 0,
        extentOffset: _departureSearchController.text.length,
      );
      _departureFocusNode.requestFocus();
    }

    _destinationSearchController = TextEditingController();
    // ..text = SearchScope.of(context, listen: false).arrival ?? '';

    _destinationFocusNode = FocusNode()..addListener(_onDestinationFocusChange);
    if (widget.focusDestination) _destinationFocusNode.requestFocus();
  }

  @override
  void didChangeDependencies() {
    _destinationSearchController.text = SearchScope.of(context).searchQuery.arrival?.town ?? '';
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _departureSearchController.dispose();
    _destinationSearchController.dispose();
    super.dispose();
  }

  void _onDepartureFocusChange() {
    _departureHasFocus.value = _departureFocusNode.hasFocus;
  }

  void _onDestinationFocusChange() {
    _destinationHasFocus.value = _destinationFocusNode.hasFocus;
  }

  void _onDepartureClearTap() {
    _departureSearchController.clear();
  }

  void _onDestinationClearTap() {
    _destinationSearchController.clear();
  }

  void _onChanged(final String value) {
    final searchQuery = SearchScope.of(context, listen: false).searchQuery;

    SearchScope.of(context, listen: false).search(searchQuery.copyWith(
      arrival: Point(town: value),
    ));
  }

  void _onEditingComplete() {
    Navigator.of(context).pop();
    SearchResultRoute().go(context);
  }

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color(0xff2F3035),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {},
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
              child: SizedBox(
                height: 47.5,
                child: ValueListenableBuilder<bool>(
                  valueListenable: _departureHasFocus,
                  builder: (context, hasFocus, child) => TextField(
                    controller: _departureSearchController,
                    focusNode: _departureFocusNode,
                    style: const TextStyle(
                      height: 1.3,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'SfProDisplay',
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: IconButton(
                          onPressed: null,
                          icon: SvgPicture.asset(
                            'assets/icons/departure.svg',
                            colorFilter: const ColorFilter.mode(
                              Colors.white,
                              BlendMode.srcIn,
                            ),
                          ),
                        ),
                        suffixIcon: hasFocus
                            ? IconButton(
                                onPressed: _onDepartureClearTap,
                                icon: SvgPicture.asset(
                                  'assets/icons/close.svg',
                                  colorFilter: const ColorFilter.mode(
                                    Colors.white,
                                    BlendMode.srcIn,
                                  ),
                                ),
                              )
                            : null),
                  ),
                ),
              ),
            ),
          ),
          const Divider(
            color: Color(0xff5E5F61),
            indent: 16,
            endIndent: 16,
            height: 1,
          ),
          Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {},
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
              child: SizedBox(
                height: 47.5,
                child: ValueListenableBuilder<bool>(
                  valueListenable: _destinationHasFocus,
                  builder: (context, hasFocus, child) => TextField(
                    controller: _destinationSearchController,
                    focusNode: _destinationFocusNode,
                    onChanged: _onChanged,
                    onEditingComplete: _onEditingComplete,
                    style: const TextStyle(
                      height: 1.3,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'SfProDisplay',
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: IconButton(
                        onPressed: null,
                        icon: SvgPicture.asset(
                          'assets/icons/search.svg',
                          colorFilter: const ColorFilter.mode(
                            Colors.white,
                            BlendMode.srcIn,
                          ),
                        ),
                      ),
                      suffixIcon: hasFocus
                          ? IconButton(
                              onPressed: _onDestinationClearTap,
                              icon: SvgPicture.asset(
                                'assets/icons/close.svg',
                                colorFilter: const ColorFilter.mode(
                                  Colors.white,
                                  BlendMode.srcIn,
                                ),
                              ),
                            )
                          : null,
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
}
