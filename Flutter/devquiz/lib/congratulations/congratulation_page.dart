import 'package:devquiz/core/app_images.dart';
import 'package:devquiz/core/app_text_styles.dart';
import 'package:devquiz/core/core.dart';
import 'package:devquiz/shared/widgets/button_widget.dart';
import 'package:flutter/material.dart';

class CongratulationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.asset(
                AppImages.trophy,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 40),
              child: Text(
                'Parabéns !',
                style: AppTextStyles.heading40,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 16),
              child: Text(
                'Você concluiu ',
                style: AppTextStyles.body20,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 4),
              child: Text(
                'Gerenciamento de Estado',
                style: AppTextStyles.heading,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 4),
              child: Text(
                'Você concluiu ',
                style: AppTextStyles.body20,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 80),
              width: 240,
              child: ButtonWidget(
                title: 'Compartilhar',
                backgroundColor: AppColors.purple,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Voltar ao início',
                  style: AppTextStyles.bodyLightGrey20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
