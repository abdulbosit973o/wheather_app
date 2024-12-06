import 'package:flutter/material.dart';
import 'package:wheather_app/presentation/screens/home/widgets/primary_bottom_sheet.dart';
import 'package:wheather_app/utils/contants/constants.dart';

import '../../../utils/theme/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      bottomSheet: const PrimaryBottomSheet(),
      body: Container(
        width: screenWidth,
        height: screenHeight,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AssetRes.backgroundImage),
            fit: BoxFit.cover,
          ),
        ),
        child: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Montreal",
                style: TextStyle(
                  fontSize: 32,
                  fontFamily: "sfbold",
                  color: AppColors.white,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "19°",
                style: TextStyle(
                  fontSize: 64,
                  fontFamily: "sfbold",
                  color: AppColors.white,
                ),
              ),
              SizedBox(height: 5),
              Text(
                "Mostly Clear",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "sfmedium",
                  color: AppColors.white,
                ),
              ),
              Text(
                "H:24° L:18°",
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: "sfregular",
                  color: AppColors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Example WeatherForecastTile widget
class WeatherForecastTile extends StatelessWidget {
  final String time;
  final String temperature;
  final IconData icon;

  const WeatherForecastTile({
    Key? key,
    required this.time,
    required this.temperature,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: AppColors.appBarDark,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: AppColors.white, size: 24),
          const SizedBox(height: 8),
          Text(
            time,
            style: const TextStyle(
              fontFamily: "sfmedium",
              color: AppColors.white,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            temperature,
            style: const TextStyle(
              fontFamily: "sfbold",
              color: AppColors.white,
            ),
          ),
        ],
      ),
    );
  }
}
