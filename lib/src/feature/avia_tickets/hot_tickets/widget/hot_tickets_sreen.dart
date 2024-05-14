import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HotTicketsScreen extends StatelessWidget {
  const HotTicketsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        physics: const ClampingScrollPhysics(),
        slivers: [
          SliverAppBar(
            leading: IconButton(
              onPressed: () => GoRouter.of(context).pop(),
              color: Colors.white,
              icon: const Icon(Icons.arrow_back_ios_new),
            ),
            backgroundColor: const Color(0xff242529),
            title: const Text(
              'Горячие билеты',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
