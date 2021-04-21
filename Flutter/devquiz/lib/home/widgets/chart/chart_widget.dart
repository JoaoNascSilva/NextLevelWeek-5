import 'package:devquiz/core/app_colors.dart';
import 'package:devquiz/core/app_text_styles.dart';
import 'package:flutter/material.dart';

class ChartWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      child: Stack(
        children: [
          Center(
            child: Container(
              height: 88,
              width: 88,
              child: CircularProgressIndicator(
                strokeWidth: 9,
                value: 0.75,
                valueColor:
                    AlwaysStoppedAnimation<Color>(AppColors.chartPrimary),
                backgroundColor: AppColors.chartSecondary,
              ),
            ),
          ),
          Center(
            child: Text(
              '75%',
              style: AppTextStyles.heading,
            ),
          ),
        ],
      ),
    );
  }
}
