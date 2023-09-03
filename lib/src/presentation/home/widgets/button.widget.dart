import 'package:fegno_task/src/core/extensions/context.extension.dart';
import 'package:fegno_task/src/core/extensions/widget.extension.dart';
import 'package:fegno_task/src/core/theme/app.colors.dart';
import 'package:flutter/material.dart';

class KButton extends StatelessWidget {
  const KButton({
    super.key,
    required this.text,
    this.icon,
    this.isWhite = false,
    this.onPressed,
  });
  final String text;
  final IconData? icon;
  final bool isWhite;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: isWhite ? AppColors.white : context.theme.primaryColor,
          padding: EdgeInsets.zero,
          shape: const StadiumBorder(),
        ),
        onPressed: onPressed ?? () {},
        child: SizedBox(
          width: context.sizeOf.width * 0.9 - 12,
          child: (icon == null
                  ? Center(
                      child: Text(
                        text,
                        style: TextStyle(
                          color: isWhite ? context.theme.primaryColor : AppColors.white,
                        ),
                      ),
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          icon,
                          color: isWhite ? context.theme.primaryColor : AppColors.white,
                        ),
                        Text(
                          text,
                          style: const TextStyle(color: AppColors.black),
                        ),
                      ],
                    ))
              .pad(12),
        ),
      ),
    );
  }
}
