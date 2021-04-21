import 'package:devquiz/core/app_colors.dart';
import 'package:devquiz/core/app_text_styles.dart';
import 'package:devquiz/shared/model/user_model.dart';
import 'package:flutter/material.dart';

class ChartWidget extends StatelessWidget {
  final UserModel user;

  const ChartWidget({Key? key, required this.user}) : super(key: key);

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
                value: user.score / 100,
                valueColor:
                    AlwaysStoppedAnimation<Color>(AppColors.chartPrimary),
                backgroundColor: AppColors.chartSecondary,
              ),
            ),
          ),
          Center(
            child: Text(
              '${user.score}%',
              style: AppTextStyles.heading,
            ),
          ),
        ],
      ),
    );
  }
}
