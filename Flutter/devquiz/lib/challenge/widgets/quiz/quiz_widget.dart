import 'package:devquiz/challenge/widgets/awnser/awnser_widget.dart';
import 'package:devquiz/core/app_colors.dart';
import 'package:devquiz/core/app_text_styles.dart';
import 'package:devquiz/shared/widgets/button_widget.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatelessWidget {
  final String title;

  const QuizWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 24),
      child: Column(
        children: [
          Text(
            title,
            style: AppTextStyles.body20,
          ),
          SizedBox(height: 24),
          AwnserWidget(
              isRight: true,
              isSelected: true,
              title:
                  'Possibilita a criação de aplicativos compilados nativamente.'),
          AwnserWidget(
              isRight: false,
              isSelected: true,
              title:
                  'Possibilita a criação de aplicativos compilados nativamente.'),
          AwnserWidget(
              isRight: false,
              isSelected: true,
              title:
                  'Possibilita a criação de aplicativos compilados nativamente.'),
          AwnserWidget(
              isRight: false,
              isSelected: true,
              title:
                  'Possibilita a criação de aplicativos compilados nativamente.'),
          Expanded(child: Container()),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Row(
              children: [
                ButtonWidget(
                  title: 'Pular',
                ),
                SizedBox(width: 10),
                ButtonWidget(
                  title: 'Confirmar',
                  backgroundColor: AppColors.darkGreen,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
