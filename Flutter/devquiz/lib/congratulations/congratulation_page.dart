import 'package:flutter/material.dart';

import 'package:devquiz/core/app_images.dart';
import 'package:devquiz/core/app_text_styles.dart';
import 'package:devquiz/core/core.dart';
import 'package:devquiz/shared/widgets/button_widget.dart';
import 'package:share_plus/share_plus.dart';

class CongratulationsPage extends StatelessWidget {
  final String title;
  final int length;
  final int result;

  const CongratulationsPage({
    Key? key,
    required this.title,
    required this.length,
    required this.result,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
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
              padding: EdgeInsets.only(top: 4, left: 60, right: 60),
              child: Text(
                title,
                style: AppTextStyles.heading,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 4),
              child: Text(
                'com $result de $length acertos.',
                style: AppTextStyles.body20,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 80),
              width: 240,
              child: ButtonWidget(
                title: 'Compartilhar',
                backgroundColor: AppColors.purple,
                onTap: () {
                  Share.share(
                      'Parabéns você concluiu o desafio de $title com sucesso !');
                },
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20),
              child: TextButton(
                child: Text(
                  'Voltar ao início',
                  style: AppTextStyles.bodyLightGrey20,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
