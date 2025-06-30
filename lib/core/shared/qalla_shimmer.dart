import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:gowagr_assessment/core/constants/app_colors.dart';

class ShimmerEventCard extends StatelessWidget {
  const ShimmerEventCard({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final Color shimmerBaseColor =
        isDarkMode ? AppColors.darkGrey : AppColors.lighterGrey;
    final Color shimmerHighlightColor =
        isDarkMode ? AppColors.mediumGrey : AppColors.lightGrey;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Shimmer.fromColors(
        baseColor: shimmerBaseColor,
        highlightColor: shimmerHighlightColor,
        child: Container(
          decoration: BoxDecoration(
              color: isDarkMode ? AppColors.darkGrey : AppColors.white,
              borderRadius: BorderRadius.circular(16.0)),
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 150.0,
                decoration: BoxDecoration(
                  color:
                      isDarkMode ? AppColors.mediumGrey : AppColors.lightGrey,
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
              const SizedBox(height: 12.0),
              Container(
                width: 80.0,
                height: 16.0,
                decoration: BoxDecoration(
                  color:
                      isDarkMode ? AppColors.mediumGrey : AppColors.lightGrey,
                  borderRadius: BorderRadius.circular(4.0),
                ),
              ),
              const SizedBox(height: 8.0),
              Container(
                width: double.infinity,
                height: 20.0,
                decoration: BoxDecoration(
                  color:
                      isDarkMode ? AppColors.mediumGrey : AppColors.lightGrey,
                  borderRadius: BorderRadius.circular(4.0),
                ),
              ),
              const SizedBox(height: 8.0),
              Container(
                width: 150.0,
                height: 16.0,
                decoration: BoxDecoration(
                  color:
                      isDarkMode ? AppColors.mediumGrey : AppColors.lightGrey,
                  borderRadius: BorderRadius.circular(4.0),
                ),
              ),
              const SizedBox(height: 8.0),
              Container(
                width: 100.0,
                height: 16.0,
                decoration: BoxDecoration(
                  color:
                      isDarkMode ? AppColors.mediumGrey : AppColors.lightGrey,
                  borderRadius: BorderRadius.circular(4.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
