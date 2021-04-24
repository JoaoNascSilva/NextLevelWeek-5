import 'package:devquiz/challenge/widgets/awnser/awnser_widget.dart';
import 'package:devquiz/core/app_text_styles.dart';
import 'package:devquiz/shared/model/awnserModel.dart';
import 'package:devquiz/shared/model/question_model.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatefulWidget {
  final QuestionModel question;
  final ValueChanged<bool> onSelected;

  const QuizWidget({
    Key? key,
    required this.question,
    required this.onSelected,
  }) : super(key: key);

  @override
  _QuizWidgetState createState() => _QuizWidgetState();
}

class _QuizWidgetState extends State<QuizWidget> {
  int? indexSelected = -1;
  AwnserModel awnser(int index) => widget.question.awnser[index];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[500],
      child: Column(
        children: [
          SizedBox(height: 64),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              widget.question.title,
              style: AppTextStyles.body20,
            ),
          ),
          SizedBox(height: 24),
          for (var i = 0; i < widget.question.awnser.length; i++)
            AwnserWidget(
              awnser: awnser(i),
              isSelected: indexSelected == i,
              disable: indexSelected != -1,
              onTap: (value) {
                indexSelected = i;

                setState(() {});
                Future.delayed(
                  Duration(seconds: 1),
                ).then(
                  (_) => widget.onSelected(value),
                );
              },
            ),
        ],
      ),
    );
  }
}
