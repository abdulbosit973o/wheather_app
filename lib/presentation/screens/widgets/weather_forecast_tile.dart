import 'package:flutter/material.dart';

import '../../../utils/theme/colors.dart';

class WeatherForecastTile extends StatefulWidget {
  const WeatherForecastTile({super.key});

  @override
  State<WeatherForecastTile> createState() => _WeatherForecastTileState();
}

class _WeatherForecastTileState extends State<WeatherForecastTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 108,
      width: 42,
      decoration: BoxDecoration(
          color: AppColors.primary,
          border: Border.all(width: 1, color: AppColors.white),
          borderRadius: const BorderRadius.vertical(
              top: Radius.circular(56), bottom: Radius.circular(56))),
      child: const Column(
        children: [],
      ),
    );
  }
}
