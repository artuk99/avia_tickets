import 'package:avia_tickets/src/core/theme/app_colors_extension.dart';
import 'package:avia_tickets/src/core/utils/extensions/price_extension.dart';
import 'package:avia_tickets/src/feature/avia_tickets/result_preview/bloc/recommendations_bloc.dart';
import 'package:avia_tickets/src/feature/avia_tickets/result_preview/model/ticket_recomendation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RecommendedFlights extends StatelessWidget {
  const RecommendedFlights({super.key});

  @override
  Widget build(BuildContext context) {
    final appColors = Theme.of(context).extension<BasicColors>()!;
    return DecoratedBox(
      decoration: BoxDecoration(
        color: appColors.grey_1,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: BlocBuilder<RecommendationsBloc, RecommendationsState>(
          builder: (context, state) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'Прямые рельсы',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              const SizedBox(height: 8),
              for (var i = 0; i < state.data.length; i++) ...[
                _Flight(
                  recommendation: state.data[i],
                  index: i,
                ),
                if (i < state.data.length - 1) const SizedBox(height: 8),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

class _Flight extends StatelessWidget {
  const _Flight({
    required this.recommendation,
    required this.index,
  });

  final TicketRecomendation recommendation;
  final int index;

  static Color _getColor(int index) => switch (index) {
        0 => const Color(0xffFF5E5E),
        1 => const Color(0xff2261BC),
        2 => const Color(0xffFFFFFF),
        _ => Colors.transparent,
      };

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final appColors = Theme.of(context).extension<BasicColors>()!;
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: DecoratedBox(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: appColors.grey_4,
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 10),
              child: Row(
                children: [
                  SizedBox.square(
                    dimension: 24,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: _getColor(index),
                        borderRadius: BorderRadius.circular(24),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Text(
                                recommendation.title,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: textTheme.titleSmall!.copyWith(
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                            Text(
                              '${recommendation.price.formatted} \u{20BD}',
                              style: textTheme.titleSmall!.copyWith(
                                fontStyle: FontStyle.italic,
                                color: appColors.blue,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 4),
                        Text(
                          recommendation.timeRange.join(' '),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: textTheme.labelLarge,
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
    );
  }
}
