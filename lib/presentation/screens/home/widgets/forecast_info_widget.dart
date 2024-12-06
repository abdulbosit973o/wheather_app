import 'package:flutter/material.dart';

import '../../../../utils/theme/app_text_styles.dart';

class ForecastInfoWidget extends StatelessWidget {
  const ForecastInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Montreal",
          style: sfmedium.copyWith(
            fontSize: 34,
          ),
        ),
        // 12.verticalSpace,
        Text(
          "19°",
          style: sfmedium.copyWith(
            fontSize: 96,
          ),
        ),
        // 12.verticalSpace,
        Text(
          "Mosty Clear",
          style: sfbold.copyWith(
              fontSize: 20, color: const Color.fromRGBO(235, 235, 245, 0.6)),
        ),
        // 8.verticalSpace,
        Text(
          "H:24°   L:18°",
          style: sfbold.copyWith(
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}
