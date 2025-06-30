import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final ValueChanged<String>? onChanged;

  const CustomSearchBar({
    super.key,
    required this.controller,
    this.hintText = 'Search for a market',
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final InputDecorationTheme inputTheme =
        Theme.of(context).inputDecorationTheme;
    final TextTheme textTheme = Theme.of(context).textTheme;
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Padding(
      padding:
          EdgeInsets.only(left: 16.0, top: 18.0, right: 16.0, bottom: 20.0),
      child: TextField(
        controller: controller,
        onChanged: onChanged,
        style: textTheme.bodyMedium,
        cursorColor: colorScheme.onSurface,
        cursorWidth: 0.8,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: inputTheme.hintStyle,
          prefixIcon:
              Icon(Icons.search, color: inputTheme.prefixIconColor, size: 20),
          border: inputTheme.border,
          enabledBorder: inputTheme.enabledBorder,
          focusedBorder: inputTheme.focusedBorder,
          filled: inputTheme.filled,
          fillColor: inputTheme.fillColor,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
        ),
      ),
    );
  }
}
