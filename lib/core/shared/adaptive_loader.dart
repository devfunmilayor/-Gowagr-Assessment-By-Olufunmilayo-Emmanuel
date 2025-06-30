import 'package:flutter/material.dart';

class BuildAdaptiveProgressWid extends StatelessWidget {
  const BuildAdaptiveProgressWid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 20, top: 20, bottom: 20, left: 20),
        height: 15,
        width: 15,
        child: CircularProgressIndicator.adaptive(strokeWidth: 1.5));
  }
}
