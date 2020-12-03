import 'package:flutter/material.dart';
import 'package:todo_app/src/common/themes/app.theme.dart';

class KaytaAvatar extends StatelessWidget {
  final String path;
  final String initialString;
  final double width;

  const KaytaAvatar({this.path, this.width = 70, this.initialString});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(width),
        color: primaryLightColor.withOpacity(0.5),
      ),
      child: path != null
          ? Image.network(path)
          : Center(
              child: Text(
                initialString,
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.white,
                ),
              ),
            ),
    );
  }
}
