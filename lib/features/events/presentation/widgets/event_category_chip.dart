import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gowagr_assessment/core/constants/app_colors.dart';

class EventCategoryChip extends StatelessWidget {
  final String label;
  final IconData? icon;
  final bool isSelected;
  final VoidCallback onTap;

  const EventCategoryChip({
    super.key,
    required this.label,
    this.icon,
    this.isSelected = false,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isLightMode = theme.brightness == Brightness.light;

    Color backgroundColor = isSelected
        ? (isLightMode ? AppColors.primary : AppColors.primaryDark)
        : (isLightMode ? AppColors.lightGrey : AppColors.cardColorDark);
    Color textColor = isSelected
        ? AppColors.white
        : (isLightMode ? AppColors.darkGrey : AppColors.textLight);
    Color iconColor = isSelected
        ? AppColors.white
        : (isLightMode ? AppColors.darkGrey : AppColors.textLight);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(20.0),
          border: isSelected && isLightMode
              ? Border.all(color: AppColors.primary, width: 1.0)
              : Border.all(color: Colors.transparent, width: 1.0),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (icon != null) ...[
              Icon(
                icon,
                size: 16,
                color: iconColor,
              ),
              const SizedBox(width: 6.0),
            ],
            Text(
              label,
              style: GoogleFonts.archivo(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: textColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
