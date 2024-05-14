import 'package:avia_tickets/src/feature/avia_tickets/home/bloc/offers_bloc.dart';
import 'package:avia_tickets/src/feature/avia_tickets/home/widget/offers.dart';
import 'package:avia_tickets/src/feature/avia_tickets/home/widget/search_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snap_scroll_physics/snap_scroll_physics.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();

    context.read<OffersBloc>().add(const OffersEvent.fetch());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        physics: SnapScrollPhysics.preventStopBetween(
          0,
          163,
          parent: const BouncingScrollPhysics(),
        ),
        slivers: [
          const SearchAppBar(),
          const SliverToBoxAdapter(
            child: Offers(),
          ),

          /// For scroll test
          SliverToBoxAdapter(
            child: SizedBox(
              height: MediaQuery.sizeOf(context).height / 2,
            ),
          ),
        ],
      ),
    );
  }
}
