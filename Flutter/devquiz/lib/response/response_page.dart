import 'package:devquiz/core/app_colors.dart';
import 'package:devquiz/core/app_images.dart';
import 'package:devquiz/core/app_text_styles.dart';
import 'package:devquiz/shared/widgets/button_widget.dart';
import 'package:flutter/material.dart';

class ResponsePage extends StatelessWidget {
  final bool isSuccess;

  const ResponsePage({
    Key? key,
    required this.isSuccess,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 59),
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Image.asset(
                isSuccess ? AppImages.check : AppImages.error,
              ),
            ),
            SizedBox(height: 40),
            Text(
              isSuccess ? 'Acertou' : 'Errou',
              style: AppTextStyles.heading40,
            ),
            SizedBox(height: 16),
            Text(
              'É um kit de desenvolvimento de interface de usuário.',
              style: AppTextStyles.body20,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 56),
            Container(
              width: double.infinity,
              height: 48,
              child: ButtonWidget(
                title: 'Avançar',
                backgroundColor: AppColors.purple,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
