

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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: TextField(
        controller: controller,
        onChanged: onChanged,
        style: Theme.of(context).textTheme.bodyMedium, // Use themed text style
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: Theme.of(context).inputDecorationTheme.hintStyle, // Use themed hint style
          prefixIcon: Icon(Icons.search, color: Theme.of(context).inputDecorationTheme.prefixIconColor), // Use themed icon color
          border: Theme.of(context).inputDecorationTheme.border,
          enabledBorder: Theme.of(context).inputDecorationTheme.enabledBorder,
          focusedBorder: Theme.of(context).inputDecorationTheme.focusedBorder,
          filled: true,
          fillColor: Theme.of(context).inputDecorationTheme.fillColor,
          contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
        ),
      ),
    );
  }
}