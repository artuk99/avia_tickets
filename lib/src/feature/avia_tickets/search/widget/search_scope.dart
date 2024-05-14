import 'package:avia_tickets/src/core/utils/extensions/context_extension.dart';
import 'package:avia_tickets/src/feature/avia_tickets/search/model/search_query.dart';
import 'package:avia_tickets/src/feature/initialization/widget/dependencies_scope.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SearchScope extends StatefulWidget {
  const SearchScope({
    required this.child,
    super.key,
  });

  final Widget child;

  /// Obtain the scope state from the given [context].
  static SearchScopeState of(BuildContext context, {bool listen = true}) =>
      context.inhOf<_SearchInherited>(listen: listen).scopeState;

  @override
  State<SearchScope> createState() => SearchScopeState();
}

class SearchScopeState extends State<SearchScope> {
  static const _keyDeparture = 'key_departure';

  late final SharedPreferences _sharedPreferences;
  late SearchQuery searchQuery;

  // late String departure;
  // String? arrival;

  @override
  void initState() {
    super.initState();

    // departure = 'Москва';

    _sharedPreferences = DependenciesScope.of(context).sharedPreferences;
    final cacheDeparture = _sharedPreferences.getString(_keyDeparture);
    searchQuery = SearchQuery(
      departure: Point(town: cacheDeparture ?? 'Москва'),
      flightDate: FlightDate(departure: DateTime.now()),
    );
  }

  // void setArrival(String? newArrival) => setState(() {
  //       // arrival = newArrival;
  //       searchQuery =
  //           searchQuery.copyWith(arrival: newArrival == null ? null : Point(town: newArrival));
  //     });

  // void swipe() => setState(() {
  //       // final departureOld = departure;
  //       // departure = arrival!;
  //       // arrival = departureOld;
  //       final departure = searchQuery.departure;
  //       final arrival = searchQuery.arrival;
  //       if (arrival == null) return;

  //       searchQuery = searchQuery.copyWith(
  //         arrival: departure,
  //         departure: arrival,
  //       );
  //     });

  void search(SearchQuery query) {
    setState(() => searchQuery = query);

    if (searchQuery.departure != query.departure) _cacheDeparture(query.departure.town);
  }

  void _cacheDeparture(String town) => _sharedPreferences.setString(_keyDeparture, town);

  @override
  Widget build(BuildContext context) {
    return _SearchInherited(
      scopeState: this,
      searchQuery: searchQuery,
      child: widget.child,
    );
  }
}

class _SearchInherited extends InheritedWidget {
  const _SearchInherited({
    required this.scopeState,
    required this.searchQuery,
    required super.child,
  });

  final SearchScopeState scopeState;
  final SearchQuery searchQuery;

  @override
  bool updateShouldNotify(_SearchInherited oldWidget) => searchQuery != oldWidget.searchQuery;
}
