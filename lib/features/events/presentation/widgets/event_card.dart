import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:gowagr_assessment/core/constants/app_colors.dart';
import 'package:gowagr_assessment/features/events/domain/entities/event_entity.dart';
import 'package:gowagr_assessment/features/events/domain/entities/market_entity.dart';
import 'package:intl/intl.dart';

class EventCard extends StatelessWidget {
  final EventEntity event;

  const EventCard({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    final MarketEntity? market =
        event.markets.isNotEmpty ? event.markets.first : null;

    final String imageUrl = event.image128Url ??
        event.imageUrl ??
        'https://via.placeholder.com/150';
    final String eventTitle = event.title;
    final String buyYesPrice =
        market != null ? 'N${market.yesBuyPrice.toStringAsFixed(2)}' : 'N/A';
    final String buyNoPrice =
        market != null ? 'N${market.noBuyPrice.toStringAsFixed(2)}' : 'N/A';
    final String yesProfit =
        market != null ? '${market.yesProfitForEstimate}%' : '0%';
    final String noProfit =
        market != null ? '${market.noProfitForEstimate}%' : '0%';
    final int totalTrades =
        ((market?.volumeValueYes ?? 0) + (market?.volumeValueNo ?? 0)).toInt();

    final String formattedEndDate = event.resolutionDate != null
        ? DateFormat('MMM d.').format(event.resolutionDate!)
        : DateFormat('MMM d.').format(DateTime.now());

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      color: Theme.of(context).cardColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                ClipOval(
                    child: CachedNetworkImage(
                        imageUrl: imageUrl,
                        width: 48,
                        height: 48,
                        fit: BoxFit.cover,
                        placeholder: (context, url) => Center(
                            child: CircularProgressIndicator(
                                strokeWidth: 2,
                                color:
                                    Theme.of(context).colorScheme.secondary)),
                        errorWidget: (context, url, error) => Icon(Icons.error,
                            color: Theme.of(context).colorScheme.error))),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    eventTitle,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w700,
                          color: Theme.of(context).textTheme.bodyLarge?.color,
                        ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: _buildBuyButton(
                    label: 'Buy Yes',
                    price: buyYesPrice,
                    isYes: true,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: _buildBuyButton(
                    label: 'Buy No',
                    price: buyNoPrice,
                    isYes: false,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: _buildProfitInfo(context, yesProfit, isYes: true),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: _buildProfitInfo(context, noProfit, isYes: false),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildTradesInfo(context, totalTrades),
                Row(
                  children: [
                    Text(
                      'Ends $formattedEndDate',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    const SizedBox(width: 8),
                    Icon(Icons.bookmark_border,
                        color: Theme.of(context).iconTheme.color, size: 18),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBuyButton(
      {required String label, required String price, required bool isYes}) {
    return Builder(builder: (context) {
      return Container(
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
        decoration: BoxDecoration(
          border: Border.all(
              width: 0.2,
              color: isYes
                  ? AppColors.categoryChipBackgroundSelectedDark
                  : AppColors.dangerRed),
          color: isYes
              ? AppColors.categoryChipBackgroundSelectedDark.withOpacity(0.1)
              : AppColors.dangerRed.withOpacity(0.1),
          borderRadius: BorderRadius.circular(4.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              label,
              style: GoogleFonts.archivo(
                fontSize: 14,
                color: isYes
                    ? AppColors.categoryChipBackgroundSelectedDark
                    : AppColors.dangerRed,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(width: 14),
            Text(
              price,
              style: GoogleFonts.archivo(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: isYes
                    ? AppColors.categoryChipBackgroundSelectedDark
                    : AppColors.dangerRed,
              ),
            ),
          ],
        ),
      );
    });
  }

  Widget _buildProfitInfo(BuildContext context, String profit,
      {required bool isYes}) {
    return Row(
      children: [
        Icon(
          isYes ? Icons.arrow_upward : Icons.arrow_downward,
          color: isYes ? AppColors.successGreen : AppColors.dangerRed,
          size: 16,
        ),
        const SizedBox(width: 4),
        Text(
          profit,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                fontWeight: FontWeight.w500,
                color: isYes ? AppColors.successGreen : AppColors.dangerRed,
              ),
        ),
      ],
    );
  }

  Widget _buildTradesInfo(BuildContext context, int trades) {
    return Row(
      children: [
        Icon(Icons.bar_chart,
            color: Theme.of(context).iconTheme.color, size: 18),
        const SizedBox(width: 4),
        Text(
          '$trades Trades',
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}
