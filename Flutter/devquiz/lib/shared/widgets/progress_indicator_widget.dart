import 'package:devquiz/core/core.dart';
import 'package:flutter/material.dart';

class ProgressIndicatorWidget extends StatelessWidget {
  final double? value;

  const ProgressIndicatorWidget({Key? key, this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      minHeight: 6,
      value: value,
      valueColor: AlwaysStoppedAnimation<Color>(AppColors.chartPrimary),
      backgroundColor: AppColors.chartSecondary,
    );
  }
}
