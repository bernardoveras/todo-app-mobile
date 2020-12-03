import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todo_app/src/common/extensions/scale_tap.dart';
import 'package:todo_app/src/common/themes/app.theme.dart';

class KaytaTextField extends StatefulWidget {
  final String labelText;
  final String hintText;
  final Color borderColor; //lightPinkColor
  final TextStyle labelStyle;
  final TextStyle hintStyle;
  final TextStyle style;
  final Icon icon;
  final InputDecoration decoration;
  final bool autofocus; // false
  final String initialValue;
  final TextInputType keyboardType;
  final List<TextInputFormatter> inputFormatters;
  final bool obscure; // false
  final bool showObscureIcon; // true
  final String Function(String) validator;
  final double radius; // 8
  final double elevation; // 2

  const KaytaTextField({
    this.labelText,
    this.labelStyle,
    this.hintText,
    this.hintStyle,
    this.style,
    this.borderColor = lightPinkColor,
    this.icon,
    this.decoration,
    this.autofocus = false,
    this.initialValue,
    this.keyboardType,
    this.inputFormatters,
    this.obscure = false,
    this.showObscureIcon = true,
    this.validator,
    this.radius = 8,
    this.elevation = 2,
  });

  @override
  _KaytaTextFieldState createState() => _KaytaTextFieldState();
}

class _KaytaTextFieldState extends State<KaytaTextField> {
  bool _obscure;
  @override
  void initState() {
    super.initState();
    _obscure = widget.obscure;
  }

  @override
  void dispose() {
    super.dispose();
    _obscure = null;
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(widget.radius),
      elevation: widget.elevation,
      child: TextFormField(
        validator: widget.validator,
        autofocus: widget.autofocus,
        initialValue: widget.initialValue,
        keyboardType: widget.keyboardType,
        inputFormatters: widget.inputFormatters,
        obscureText: _obscure,
        decoration: widget.decoration ??
            InputDecoration(
              suffixIcon: widget.obscure
                  ? widget.showObscureIcon
                      ? ScaleOnTap(
                          onTap: () => setState(() => _obscure = !_obscure),
                          child: Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Icon(
                              _obscure
                                  ? Icons.visibility_outlined
                                  : Icons.visibility_off_outlined,
                              color: darkPinkColor,
                              size: 30,
                            ),
                          ),
                        )
                      : null
                  : null,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: widget.borderColor),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: widget.borderColor),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: widget.borderColor),
              ),
              disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: widget.borderColor),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.redAccent),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.redAccent),
              ),
              errorStyle: TextStyle(fontFamily: "InterSemiBold"),
              labelStyle:
                  widget.labelStyle ?? TextStyle(fontFamily: "InterSemiBold"),
              labelText: widget.labelText,
              hintStyle:
                  widget.hintStyle ?? TextStyle(fontFamily: "InterMedium"),
              hintText: widget.hintText,
              prefixIcon: widget.icon,
            ),
        style: widget.style ??
            TextStyle(fontFamily: "InterMedium", color: greyColor),
      ),
    );
  }
}
