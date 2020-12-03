import 'package:flutter/material.dart';
import 'package:todo_app/src/common/extensions/scale_tap.dart';
import 'package:todo_app/src/common/themes/app.theme.dart';

class KaytaCheckBox extends StatefulWidget {
  bool value;
  final Color color;
  final bool isCircle;
  final Function(bool) onChanged;

  KaytaCheckBox({
    @required this.value,
    this.color,
    this.isCircle,
    @required this.onChanged,
  });

  @override
  _KaytaCheckBoxState createState() => _KaytaCheckBoxState();
}

class _KaytaCheckBoxState extends State<KaytaCheckBox> {
  @override
  Widget build(BuildContext context) {
    return ScaleOnTap(
      onTap: () {
        widget.onChanged(!widget.value);
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 100),
        height: 25,
        width: 25,
        decoration: BoxDecoration(
          color: widget.value ? primaryColor : Colors.transparent,
          shape: BoxShape.circle,
          border: widget.value == false
              ? Border.all(
                  width: 2,
                  color: lightPinkColor,
                )
              : null,
        ),
        child: AnimatedOpacity(
          opacity: widget.value ? 1 : 0,
          duration: Duration(milliseconds: 200),
          child: Center(
            child: Icon(
              Icons.check,
              size: 20,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
