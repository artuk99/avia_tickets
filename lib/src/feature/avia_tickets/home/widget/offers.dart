import 'dart:developer';

import 'package:avia_tickets/src/core/utils/extensions/price_extension.dart';
import 'package:avia_tickets/src/core/widget/shimmer.dart';
import 'package:avia_tickets/src/feature/avia_tickets/home/bloc/offers_bloc.dart';
import 'package:avia_tickets/src/feature/avia_tickets/home/model/offer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Offers extends StatelessWidget {
  const Offers({super.key});

  static String _getOfferImage(int offerId) {
    return switch (offerId) {
      1 => 'assets/images/offer_1.png',
      2 => 'assets/images/offer_2.png',
      3 => 'assets/images/offer_3.png',
      _ => '',
    };
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(height: 34),
        const Padding(
          padding: EdgeInsets.only(left: 16),
          child: Text(
            'Музыкально отлететь',
            style: TextStyle(
              height: 1.2,
              fontSize: 22,
              fontWeight: FontWeight.w600,
              fontFamily: 'SfProDisplay',
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(height: 15),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: BlocBuilder<OffersBloc, OffersState>(
            builder: (context, state) => Row(
              children: state.map<List<Widget>>(
                processing: (_) => [
                  for (var i = 0; i < 5; i++) ...[
                    _OfferCardShimmer(),
                    if (i < 4) const SizedBox(width: 67),
                  ],
                ],
                successful: (s) {
                  final List<Widget> widgets = [];

                  for (var i = 0; i < s.data.length; i++) {
                    final offer = s.data[i];

                    widgets.addAll([
                      _OfferCard(
                        offer: offer,
                        imageAsset: _getOfferImage(offer.id),
                      ),
                      if (i < s.data.length) const SizedBox(width: 67),
                    ]);
                  }
                  return widgets;
                },
                error: (_) => [
                  const Text(
                    'Ошибка',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SizedBox(
            height: 42,
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                  backgroundColor: const Color(0xff2F3035),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  )),
              child: const Text(
                'Показать все места',
                style: TextStyle(
                  height: 1.3,
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.italic,
                  fontFamily: 'SfProDisplay',
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _OfferCard extends StatelessWidget {
  const _OfferCard({
    required this.offer,
    required this.imageAsset,
  });

  final Offer offer;
  final String imageAsset;

  void _onOfferTap() {
    log('onOfferTap: offerId - ${offer.id}');
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onOfferTap,
      behavior: HitTestBehavior.opaque,
      child: SizedBox(
        width: 132,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: SizedBox.square(
                dimension: 132,
                child: Image.asset(
                  imageAsset,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => const FlutterLogo(),
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              offer.title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                height: 1.2,
                fontSize: 16,
                fontWeight: FontWeight.w600,
                fontFamily: 'SfProDisplay',
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              offer.town,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                height: 1.2,
                fontSize: 14,
                fontFamily: 'SfProDisplay',
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 4),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/icons/plane.svg',
                  colorFilter: const ColorFilter.mode(
                    Color(0xff9F9F9F),
                    BlendMode.srcIn,
                  ),
                ),
                Text(
                  " от ${offer.price.formatted} \u{20BD}",
                  style: const TextStyle(
                    height: 1.2,
                    fontSize: 14,
                    fontFamily: 'SfProDisplay',
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _OfferCardShimmer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 132,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Shimmer(
            size: Size.square(132),
            color: Color(0xff5E5F61),
            backgroundColor: Color(0xff2F3035),
            cornerRadius: 16,
          ),
          SizedBox(height: 8),
          Shimmer(
            size: Size(100, 20),
            color: Color(0xff5E5F61),
            backgroundColor: Color(0xff2F3035),
            cornerRadius: 0,
          ),
          SizedBox(height: 12),
          Shimmer(
            size: Size(70, 16),
            color: Color(0xff5E5F61),
            backgroundColor: Color(0xff2F3035),
            cornerRadius: 0,
          ),
          SizedBox(height: 4),
          Shimmer(
            size: Size(double.infinity, 16),
            color: Color(0xff5E5F61),
            backgroundColor: Color(0xff2F3035),
            cornerRadius: 0,
          ),
        ],
      ),
    );
  }
}
