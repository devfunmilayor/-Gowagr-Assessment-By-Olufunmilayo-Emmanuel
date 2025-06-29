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
    final double totalTrades =
        (market?.volumeValueYes ?? 0) + (market?.volumeValueNo ?? 0).toInt();

    final String formattedEndDate =
        event.resolutionDate != null
            ? DateFormat('MMM dd, yyyy').format(event.resolutionDate!)
            : 'Unknown';

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
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: CachedNetworkImage(
                    imageUrl: imageUrl,
                    width: 40,
                    height: 40,
                    fit: BoxFit.cover,
                    placeholder: (context, url) => const Center(
                        child: CircularProgressIndicator(strokeWidth: 2)),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    eventTitle,
                    style: GoogleFonts.archivo(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
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
                    context,
                    label: 'Buy Yes',
                    price: buyYesPrice,
                    isYes: true,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: _buildBuyButton(
                    context,
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
                _buildTradesInfo(context, totalTrades.toInt()),
                Text(
                  'Ends $formattedEndDate',
                  style: GoogleFonts.archivo(
                    fontSize: 12,
                    color: AppColors.greyText,
                  ),
                ),
                Icon(Icons.bookmark_border,
                    color: AppColors.greyText, size: 18),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBuyButton(BuildContext context,
      {required String label, required String price, required bool isYes}) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
      decoration: BoxDecoration(
        color: isYes
            ? AppColors.successGreen.withOpacity(0.1)
            : AppColors.dangerRed.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: GoogleFonts.archivo(
              fontSize: 12,
              color: isYes ? AppColors.successGreen : AppColors.dangerRed,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            price,
            style: GoogleFonts.archivo(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: isYes ? AppColors.successGreen : AppColors.dangerRed,
            ),
          ),
        ],
      ),
    );
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
          style: GoogleFonts.archivo(
            fontSize: 12,
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
        const Icon(Icons.bar_chart, color: AppColors.greyText, size: 18),
        const SizedBox(width: 4),
        Text(
          '$trades Trades',
          style: GoogleFonts.archivo(
            fontSize: 12,
            color: AppColors.greyText,
          ),
        ),
      ],
    );
  }
}
