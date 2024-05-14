import 'package:avia_tickets/src/feature/avia_tickets/results/bloc/tickets_bloc.dart';
import 'package:avia_tickets/src/feature/avia_tickets/results/widget/search_app_bar.dart';
import 'package:avia_tickets/src/feature/avia_tickets/results/widget/tickets_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:snap_scroll_physics/snap_scroll_physics.dart';

class AllTicketsScreen extends StatefulWidget {
  const AllTicketsScreen({super.key});

  @override
  State<AllTicketsScreen> createState() => _AllTicketsScreenState();
}

class _AllTicketsScreenState extends State<AllTicketsScreen> {
  @override
  void initState() {
    super.initState();

    context.read<TicketsBloc>().add(const TicketsEvent.fetch());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        physics: SnapScrollPhysics.preventStopBetween(0, 13),
        slivers: const [
          SearchAppBar(),
          SliverPadding(
            padding: EdgeInsets.fromLTRB(16, 26, 16, 34),
            sliver: TicketsList(),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: _ActionButtons(),
      ),
    );
  }
}

class _ActionButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Material(
          color: const Color(0xff2261BC),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(50),
            bottomLeft: Radius.circular(50),
          ),
          child: InkWell(
            onTap: () {},
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(50),
              bottomLeft: Radius.circular(50),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 8, 10),
              child: Row(
                children: [
                  SvgPicture.asset(
                    'assets/icons/filter.svg',
                    colorFilter: const ColorFilter.mode(
                      Colors.white,
                      BlendMode.srcIn,
                    ),
                  ),
                  const SizedBox(width: 4),
                  const Text(
                    'Фильтр',
                    style: TextStyle(
                      height: 1.2,
                      fontSize: 14,
                      fontStyle: FontStyle.italic,
                      fontFamily: 'SfProDisplay',
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Material(
          color: const Color(0xff2261BC),
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(50),
            bottomRight: Radius.circular(50),
          ),
          child: InkWell(
            onTap: () {},
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 10, 10, 10),
              child: Row(
                children: [
                  SvgPicture.asset(
                    'assets/icons/chart.svg',
                    colorFilter: const ColorFilter.mode(
                      Colors.white,
                      BlendMode.srcIn,
                    ),
                  ),
                  const SizedBox(width: 4),
                  const Text(
                    'График цен',
                    style: TextStyle(
                      height: 1.2,
                      fontSize: 14,
                      fontStyle: FontStyle.italic,
                      fontFamily: 'SfProDisplay',
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
