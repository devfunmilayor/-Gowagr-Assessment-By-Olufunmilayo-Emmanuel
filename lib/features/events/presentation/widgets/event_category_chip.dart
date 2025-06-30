import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gowagr_assessment/core/constants/app_colors.dart';
import 'package:gowagr_assessment/gen/assets.gen.dart';

class CategoryFilterChips extends StatelessWidget {
  final List<String> categories;
  final String selectedCategory;
  final ValueChanged<String> onSelected;

  const CategoryFilterChips({
    super.key,
    required this.categories,
    required this.selectedCategory,
    required this.onSelected,
  });

  IconData _getCategoryIcon(String category) {
    switch (category) {
      case 'Trending':
        return Icons.trending_up;
      case 'Watchlist':
        return Icons.bookmark_border;
      case 'Entertainment':
        return Icons.music_note;
      case 'Sports':
        return Icons.sports_soccer;
      default:
        return Icons.category;
    }
  }

  @override
  Widget build(BuildContext context) {
    final Brightness brightness = Theme.of(context).brightness;
    final bool isDarkMode = brightness == Brightness.dark;

    return Container(
      height: 40,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          final bool isSelected = selectedCategory == category;

          final Color backgroundColor = isSelected
              ? (isDarkMode
                  ? AppColors.categoryChipBackgroundSelectedDark
                  : AppColors.categoryChipBackgroundSelectedLight)
              : (isDarkMode
                  ? AppColors.categoryChipBackgroundUnselectedDark
                  : AppColors.categoryChipBackgroundUnselectedLight);

          final Color textColor = isSelected
              ? (isDarkMode
                  ? AppColors.categoryChipTextSelectedDark
                  : AppColors.categoryChipTextSelectedLight)
              : (isDarkMode
                  ? AppColors.categoryChipTextUnselectedDark
                  : AppColors.categoryChipTextUnselectedLight);

          final Color iconColor = isSelected
              ? (isDarkMode
                  ? AppColors.categoryChipIconSelectedDark
                  : AppColors.categoryChipIconSelectedLight)
              : (isDarkMode
                  ? AppColors.categoryChipIconUnselectedDark
                  : AppColors.categoryChipIconUnselectedLight);

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: Material(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(5.0),
              clipBehavior: Clip.antiAlias,
              child: InkWell(
                onTap: () => onSelected(category),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        _getCategoryIcon(category),
                        color: iconColor,
                        size: 18,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        category,
                        style: GoogleFonts.archivo(
                          fontSize: 12,
                          fontWeight:
                              isSelected ? FontWeight.w600 : FontWeight.w500,
                          color: textColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

buildLogoContainer() {
  return Builder(builder: (context) {
    final Brightness brightness = Theme.of(context).brightness;
    final bool isDarkMode = brightness == Brightness.dark;

    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        height: 40,
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(21.82),
            border: Border.all(
                color: AppColors.logoContainer,
                width: isDarkMode ? 0.3 : 1.71)),
        child: Assets.images.png.logo.image());
  });
}
