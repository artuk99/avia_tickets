import 'package:avia_tickets/src/core/utils/extensions/date_extension.dart';
import 'package:avia_tickets/src/core/utils/extensions/price_extension.dart';
import 'package:avia_tickets/src/feature/avia_tickets/results/bloc/tickets_bloc.dart';
import 'package:avia_tickets/src/feature/avia_tickets/results/model/ticket.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TicketsList extends StatelessWidget {
  const TicketsList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TicketsBloc, TicketsState>(
      builder: (context, state) => SliverList.separated(
        itemCount: state.data.length,
        itemBuilder: (itemBuilder, index) => _TicketCard(
          ticket: state.data[index],
        ),
        separatorBuilder: (context, index) => state.data[index + 1].badge != null
            ? const SizedBox(height: 24)
            : const SizedBox(height: 16),
      ),
    );
  }
}

class _TicketCard extends StatelessWidget {
  const _TicketCard({
    required this.ticket,
  });

  final Ticket ticket;

  @override
  Widget build(BuildContext context) {
    final flyghtTime = ticket.arrival.date.difference(ticket.departure.date);

    return Stack(
      clipBehavior: Clip.none,
      children: [
        Card(
          margin: EdgeInsets.zero,
          color: const Color(0xff1D1E20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          clipBehavior: Clip.hardEdge,
          child: InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 4, 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (ticket.badge != null) const SizedBox(height: 5),
                  Text(
                    '${ticket.price.formatted} \u{20BD}',
                    style: const TextStyle(
                      height: 1.2,
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'SfProDisplay',
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 16),
                  IntrinsicHeight(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: SizedBox.square(
                            dimension: 24,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                color: const Color(0xffFF5E5E),
                                borderRadius: BorderRadius.circular(24),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              ticket.departure.date.hh_mm,
                              style: const TextStyle(
                                height: 1.2,
                                fontSize: 14,
                                fontStyle: FontStyle.italic,
                                fontFamily: 'SfProDisplay',
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              ticket.departure.airport,
                              style: const TextStyle(
                                height: 1.2,
                                fontSize: 14,
                                fontStyle: FontStyle.italic,
                                fontFamily: 'SfProDisplay',
                                color: Color(0xff9F9F9F),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 2),
                        RichText(
                          text: const WidgetSpan(
                            alignment: PlaceholderAlignment.middle,
                            child: SizedBox(
                              height: 1,
                              width: 10,
                              child: ColoredBox(color: Color(0xff9F9F9F)),
                            ),
                          ),
                        ),
                        const SizedBox(width: 4),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              ticket.arrival.date.hh_mm,
                              style: const TextStyle(
                                height: 1.2,
                                fontSize: 14,
                                fontStyle: FontStyle.italic,
                                fontFamily: 'SfProDisplay',
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              ticket.arrival.airport,
                              style: const TextStyle(
                                height: 1.2,
                                fontSize: 14,
                                fontStyle: FontStyle.italic,
                                fontFamily: 'SfProDisplay',
                                color: Color(0xff9F9F9F),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 13),
                        Expanded(
                          child: RichText(
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: '${flyghtTime.inHours}ч в пути',
                                  style: const TextStyle(
                                    height: 1.2,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'SfProDisplay',
                                    color: Colors.white,
                                  ),
                                ),
                                if (!ticket.hasTransfer) ...[
                                  const TextSpan(
                                    text: " / ",
                                    style: TextStyle(
                                      height: 1.2,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'SfProDisplay',
                                      color: Color(0xff9F9F9F),
                                    ),
                                  ),
                                  const TextSpan(
                                    text: "Без пересадок",
                                    style: TextStyle(
                                      height: 1.2,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'SfProDisplay',
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        if (ticket.badge != null)
          Positioned(
            top: -8,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: const Color(0xff2261BC),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                child: Text(
                  ticket.badge!,
                  style: const TextStyle(
                    height: 1.2,
                    fontSize: 14,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'SfProDisplay',
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          )
      ],
    );
  }
}
