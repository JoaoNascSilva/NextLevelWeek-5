import 'package:devquiz/core/app_colors.dart';
import 'package:devquiz/shared/widgets/progress_indicator_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionIndicatorWidget extends StatelessWidget {
  final int curretPage;
  final int lenght;

  const QuestionIndicatorWidget({
    Key? key,
    required this.curretPage,
    required this.lenght,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Questão $curretPage",
                style: GoogleFonts.notoSans(
                  fontSize: 16,
                  color: AppColors.lightGrey,
                ),
              ),
              Text(
                "de $lenght",
                style: GoogleFonts.notoSans(
                  fontSize: 16,
                  color: AppColors.lightGrey,
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          ProgressIndicatorWidget(value: curretPage / lenght),
        ],
      ),
    );
  }
}
