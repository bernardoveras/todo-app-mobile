import 'package:flutter/material.dart';
import 'package:todo_app/src/common/extensions/scale_tap.dart';
import 'package:todo_app/src/common/themes/app.theme.dart';

class KaytaButton extends StatelessWidget {
  final String text;
  final String image;
  final Function onTap;
  final Function onLongPress;
  final Function onDoubleTap;
  final BorderRadius borderRadius;
  final double iconSize;
  final double width;
  final Color color;
  final bool disabled;
  final bool outline;
  final bool invertColors;

  const KaytaButton(
    this.text, {
    @required this.onTap,
    this.image,
    this.color,
    this.width = 250,
    this.iconSize = 24,
    this.onLongPress,
    this.onDoubleTap,
    this.borderRadius,
    this.disabled = false,
    this.outline = false,
    this.invertColors = false,
  });

  @override
  Widget build(BuildContext context) {
    return ScaleOnTap(
      onTap: onTap,
      onLongPress: onLongPress,
      onDoubleTap: onDoubleTap,
      child: Container(
        decoration: BoxDecoration(
          color: invertColors
              ? Colors.white
              : outline
                  ? Colors.transparent
                  : verificaSeBotaoEstaDesabilitado()
                      ? primaryColor.withOpacity(0.5)
                      : primaryColor,
          borderRadius: borderRadius ?? BorderRadius.circular(8),
          border: outline
              ? Border.all(
                  color: primaryColor,
                  width: 2,
                )
              : null,
        ),
        width: width,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              image != null
                  ? Image.asset(
                      image,
                      width: iconSize,
                      color: invertColors ? primaryColor : null,
                    )
                  : SizedBox(),
              image != null ? SizedBox(width: 10) : SizedBox(),
              Text(
                text.toUpperCase(),
                style: TextStyle(
                  color: invertColors
                      ? primaryColor
                      : outline
                          ? primaryColor
                          : Colors.white,
                  fontFamily: "InterBold",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool verificaSeBotaoEstaDesabilitado() {
    return onTap == null || disabled;
  }
}
