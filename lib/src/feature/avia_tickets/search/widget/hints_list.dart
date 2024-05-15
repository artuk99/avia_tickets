import 'package:avia_tickets/src/core/router/routes.dart';
import 'package:avia_tickets/src/core/theme/app_colors_extension.dart';
import 'package:avia_tickets/src/feature/avia_tickets/search/model/search_query.dart';
import 'package:avia_tickets/src/feature/avia_tickets/search/widget/search_scope.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HintsList extends StatelessWidget {
  const HintsList({super.key});

  @override
  Widget build(BuildContext context) {
    final appColors = Theme.of(context).extension<BasicColors>()!;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _HintWidget(
          onTap: () {
            CustomJourneyRoute().push(context);
            Navigator.of(context).pop();
          },
          iconAsset: 'assets/icons/route.svg',
          iconBackgroundColor: appColors.green,
          title: 'Сложный \nмаршрут',
        ),
        const SizedBox(width: 16),
        _HintWidget(
          onTap: () {
            final searchQuery = SearchScope.of(context, listen: false).searchQuery;

            SearchScope.of(context, listen: false).search(searchQuery.copyWith(
              arrival: const Point(town: 'Куда угодно'),
            ));
          },
          iconAsset: 'assets/icons/web.svg',
          iconBackgroundColor: appColors.blue,
          title: 'Куда угодно',
        ),
        const SizedBox(width: 16),
        _HintWidget(
          onTap: () {
            WeekendsRoute().push(context);
            Navigator.of(context).pop();
          },
          iconAsset: 'assets/icons/calendar.svg',
          iconBackgroundColor: appColors.darkBlue,
          title: 'Выходные',
        ),
        const SizedBox(width: 16),
        _HintWidget(
          onTap: () {
            HotTicketsRoute().push(context);
            Navigator.of(context).pop();
          },
          iconAsset: 'assets/icons/fire.svg',
          iconBackgroundColor: appColors.red,
          title: 'Горячие \nбилеты',
        ),
      ],
    );
  }
}

class _HintWidget extends StatefulWidget {
  const _HintWidget({
    required this.onTap,
    required this.iconBackgroundColor,
    required this.iconAsset,
    required this.title,
  });

  final VoidCallback onTap;
  final Color iconBackgroundColor;
  final String iconAsset;
  final String title;

  @override
  State<_HintWidget> createState() => _HintWidgetState();
}

class _HintWidgetState extends State<_HintWidget> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      value: 1,
      lowerBound: 0.92,
      duration: const Duration(milliseconds: 300),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        _animationController.reverse();
      },
      onTapUp: (_) {
        widget.onTap();
        _animationController.forward();
      },
      onTapCancel: () {
        _animationController.forward();
      },
      behavior: HitTestBehavior.opaque,
      child: ScaleTransition(
        scale: _animationController,
        child: Column(
          children: [
            SizedBox.square(
              dimension: 48,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: widget.iconBackgroundColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: SvgPicture.asset(
                  widget.iconAsset,
                  fit: BoxFit.none,
                  colorFilter: const ColorFilter.mode(
                    Colors.white,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              widget.title,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ],
        ),
      ),
    );
  }
}
