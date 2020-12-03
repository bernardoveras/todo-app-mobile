import 'package:flutter/material.dart';
import 'package:todo_app/src/common/components/textfield/textfield.dart';
import 'package:todo_app/src/common/themes/app.theme.dart';

class KaytaSearchTextField extends StatefulWidget {
  final String hintText;
  final Color hintColor;
  final IconData icon;
  final double radius;
  final Color backgroundColor;
  final double elevation;

  const KaytaSearchTextField({
    this.hintText,
    this.backgroundColor = Colors.white,
    this.hintColor = darkPinkColor,
    this.icon = Icons.search_outlined,
    this.radius = 8,
    this.elevation = 2,
  });
  @override
  _KaytaSearchTextFieldState createState() => _KaytaSearchTextFieldState();
}

class _KaytaSearchTextFieldState extends State<KaytaSearchTextField> {
  @override
  Widget build(BuildContext context) {
    return KaytaTextField(
      radius: widget.radius,
      elevation: widget.elevation,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle:
            TextStyle(fontFamily: 'InterMedium', color: widget.hintColor),
        filled: true,
        fillColor: widget.backgroundColor,
        prefixIcon: Icon(widget.icon, size: 24),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.radius),
          borderSide: BorderSide.none,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.radius),
          borderSide: BorderSide.none,
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.radius),
          borderSide: BorderSide.none,
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.radius),
          borderSide: BorderSide.none,
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.radius),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.radius),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
