import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:devquiz/core/core.dart';

class ButtonWidget extends StatelessWidget {
  final String title;
  final Color? backgroundColor;
  final Color? textColor;
  final VoidCallback? onTap;

  const ButtonWidget({
    Key? key,
    required this.title,
    this.backgroundColor,
    this.textColor,
    this.onTap,
  }) : super(key: key);

  bool get _isSetBackgroundColor => this.backgroundColor == null ? false : true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 48,
        width: 164,
        decoration: BoxDecoration(
          color: _isSetBackgroundColor ? this.backgroundColor : AppColors.white,
          border: Border.fromBorderSide(
            BorderSide(
              color: AppColors.border,
            ),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            this.title,
            style: GoogleFonts.notoSans(
              color: _isSetBackgroundColor ? Colors.white : AppColors.lightGrey,
              fontSize: 20,
            ),
          ),
        ),
      ),
      onTap: onTap,
    );
  }
}
