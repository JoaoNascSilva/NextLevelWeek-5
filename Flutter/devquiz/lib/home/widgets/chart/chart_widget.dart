import 'package:devquiz/core/app_colors.dart';
import 'package:devquiz/core/app_text_styles.dart';
import 'package:devquiz/shared/model/user_model.dart';
import 'package:flutter/material.dart';

class ChartWidget extends StatefulWidget {
  final UserModel user;

  const ChartWidget({Key? key, required this.user}) : super(key: key);

  @override
  _ChartWidgetState createState() => _ChartWidgetState();
}

class _ChartWidgetState extends State<ChartWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  void _initAnimation() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

    _animation = Tween<double>(
      begin: 0.0,
      end: widget.user.score.toDouble(),
    ).animate(_controller);
    _controller.forward();
  }

  @override
  void initState() {
    _initAnimation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      child: AnimatedBuilder(
        animation: _animation,
        builder: (context, _) => Stack(
          children: [
            Center(
              child: Container(
                height: 88,
                width: 88,
                child: CircularProgressIndicator(
                  strokeWidth: 9,
                  value: _animation.value / 100,
                  valueColor:
                      AlwaysStoppedAnimation<Color>(AppColors.chartPrimary),
                  backgroundColor: AppColors.chartSecondary,
                ),
              ),
            ),
            Center(
              child: Text(
                '${_animation.value.toInt()}%',
                style: AppTextStyles.heading,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
