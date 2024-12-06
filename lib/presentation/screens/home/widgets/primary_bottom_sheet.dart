import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../../utils/theme/app_text_styles.dart';
import '../../../../utils/theme/colors.dart';

class PrimaryBottomSheet extends StatefulWidget {
  const PrimaryBottomSheet({super.key});

  @override
  State<PrimaryBottomSheet> createState() => _PrimaryBottomSheetState();
}

class _PrimaryBottomSheetState extends State<PrimaryBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.4, // BottomSheet starts at 40% height
      minChildSize: 0.4, // Minimum size to which it can shrink
      maxChildSize: 0.9, // Maximum size to which it can expand
      builder: (context, scrollController) {
        return Container(
          decoration: BoxDecoration(
              color: AppColors.black.withOpacity(0.5),
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(50),
              ),
              border: Border.all(color: AppColors.white)),
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 10.0,
              sigmaY: 10.0,
            ),
            child: Column(
              children: [
                Container(
                  width: 40,
                  height: 4,
                  margin: const EdgeInsets.only(top: 8, bottom: 16),
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
                Row(
                  children: [
                    Text("Hourly Forecast",
                        style: sfbold.copyWith(
                          fontSize: 16,
                        )),
                    Text("Weekly Forecast",
                        style: sfbold.copyWith(
                          fontSize: 16,
                        )),
                  ],
                ),
                // TabBar for Hourly and Weekly forecast
                DefaultTabController(
                  length: 2,
                  child: Column(
                    children: [
                      TabBar(
                        indicatorColor: AppColors.white,
                        labelStyle: sfbold.copyWith(
                          fontSize: 16,
                        ),
                        unselectedLabelStyle: sfmedium.copyWith(
                          fontSize: 14,
                        ),
                        tabs: const [
                          Tab(
                            text: "Hourly Forecast",
                          ),
                          Tab(text: "Weekly Forecast"),
                        ],
                      ),
                      // TabBarView(
                      //   children: [
                      //     // Hourly forecast content
                      //     // ListView.builder(
                      //     //   controller: scrollController,
                      //     //   scrollDirection: Axis.horizontal,
                      //     //   shrinkWrap: true,
                      //     //   itemCount: 10,
                      //     //   // Example count
                      //     //   itemBuilder: (context, index) {
                      //     //     return WeatherForecastTile(
                      //     //       time: "${index + 1} AM",
                      //     //       temperature: "19°",
                      //     //       icon: Icons.cloud, // Example icon
                      //     //     );
                      //     //   },
                      //     // ),
                      //     // Weekly forecast content
                      //     Center(
                      //       child: Text(
                      //         "Weekly Forecast",
                      //         style: TextStyle(
                      //           fontFamily: "sfmedium",
                      //           color: AppColors.white,
                      //         ),
                      //       ),
                      //     ),
                      //   ],
                      // ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
