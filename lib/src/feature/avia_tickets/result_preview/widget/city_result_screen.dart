import 'package:avia_tickets/src/core/router/routes.dart';
import 'package:avia_tickets/src/feature/avia_tickets/result_preview/bloc/recommendations_bloc.dart';
import 'package:avia_tickets/src/feature/avia_tickets/result_preview/widget/recommended_flights.dart';
import 'package:avia_tickets/src/feature/avia_tickets/result_preview/widget/search_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snap_scroll_physics/snap_scroll_physics.dart';

class ResultPreviewScreen extends StatefulWidget {
  const ResultPreviewScreen({super.key});

  @override
  State<ResultPreviewScreen> createState() => _ResultPreviewScreenState();
}

class _ResultPreviewScreenState extends State<ResultPreviewScreen> {
  @override
  void initState() {
    super.initState();

    context.read<RecommendationsBloc>().add(const RecommendationsEvent.fetch());
  }

  void _onAllTicketsTap() {
    AllTicketsRoute().go(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: CustomScrollView(
          physics: SnapScrollPhysics.preventStopBetween(0, 80),
          slivers: [
            const SearchAppBar(),
            const SliverToBoxAdapter(
              child: SizedBox(height: 12),
            ),
            const SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              sliver: SliverToBoxAdapter(
                child: RecommendedFlights(),
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(height: 23),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              sliver: SliverToBoxAdapter(
                child: SizedBox(
                  height: 42,
                  child: TextButton(
                    onPressed: _onAllTicketsTap,
                    style: TextButton.styleFrom(
                        backgroundColor: const Color(0xff2261BC),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        )),
                    child: const Text(
                      'Посмотреть все билеты',
                      style: TextStyle(
                        height: 1.3,
                        fontSize: 16,
                        fontStyle: FontStyle.italic,
                        fontFamily: 'SfProDisplay',
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            /// For scroll test
            SliverToBoxAdapter(
              child: SizedBox(
                height: MediaQuery.sizeOf(context).height / 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
