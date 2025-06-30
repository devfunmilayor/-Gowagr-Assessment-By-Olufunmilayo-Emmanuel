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

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: TextField(
        controller: controller,
        onChanged: onChanged,
        style: Theme.of(context).textTheme.bodyMedium,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: inputTheme.hintStyle,
          prefixIcon: Icon(Icons.search, color: inputTheme.prefixIconColor),
          border: inputTheme.border,
          enabledBorder: inputTheme.enabledBorder,
          focusedBorder: inputTheme.focusedBorder,
          filled: inputTheme.filled,
          fillColor: inputTheme.fillColor,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
        ),
      ),
    );
  }
}
