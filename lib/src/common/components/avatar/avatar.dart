import 'package:flutter/material.dart';
import 'package:todo_app/src/common/themes/app.theme.dart';

import '../../user.dart';

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
          ? Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey.withOpacity(0.1),
                  width: 3,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    spreadRadius: 8,
                    blurRadius: 10,
                  ),
                ],
                borderRadius: BorderRadius.circular(width),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(width),
                child: Image.network(
                  user.picture,
                  height: width,
                  width: width,
                ),
              ),
            )
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
