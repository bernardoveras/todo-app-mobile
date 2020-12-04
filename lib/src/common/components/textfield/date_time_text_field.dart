import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/src/common/themes/app.theme.dart';

class KaytaDateTimeTextField extends StatefulWidget {
  final String initialValue;
  final DateTime firstDate;
  final DateTime lastDate;
  final String dateLabelText;
  final String dateHintText;
  final String calendarTitle;
  final String cancelText;
  final String confirmText;
  final String dateMask;
  final Locale locale;
  final Function(DateTime) onChanged;
  final dynamic validator;
  final InputDecoration decoration;
  final TextStyle errorStyle;
  final TextStyle labelStyle;
  final String labelText;
  final TextStyle hintStyle;
  final String hintText;
  final Function(DateTime) onSaved;

  const KaytaDateTimeTextField({
    this.initialValue,
    this.firstDate,
    this.lastDate,
    this.dateLabelText,
    this.dateHintText,
    this.cancelText,
    this.confirmText,
    this.dateMask,
    this.locale,
    this.onChanged,
    this.validator,
    this.decoration,
    this.errorStyle,
    this.labelStyle,
    this.labelText,
    this.hintStyle,
    this.hintText,
    this.calendarTitle,
    this.onSaved,
  });

  @override
  _KaytaDateTimeTextFieldState createState() => _KaytaDateTimeTextFieldState();
}

class _KaytaDateTimeTextFieldState extends State<KaytaDateTimeTextField> {
  @override
  Widget build(BuildContext context) {
    return DateTimePicker(
      initialValue: widget.initialValue,
      firstDate: widget.firstDate,
      lastDate: widget.lastDate,
      dateLabelText: widget.dateLabelText,
      dateHintText: widget.dateHintText,
      cancelText: widget.cancelText,
      calendarTitle: widget.calendarTitle,
      confirmText: widget.confirmText,
      dateMask: widget.dateMask ?? "d 'de' MMMM, yyyy",
      locale: widget.locale ?? Locale('pt', 'BR'),
      onChanged: (value) {
        DateTime date = DateTime.parse(value);
        widget.onChanged(date);
      },
      validator: widget.validator,
      onSaved: (value) {
        DateTime date = DateTime.parse(value);
        widget.onSaved(date);
      },
      decoration: widget.decoration ??
          InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: lightPinkColor),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: lightPinkColor),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: lightPinkColor),
            ),
            disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: darkPinkColor),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.redAccent),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.redAccent),
            ),
            errorStyle:
                widget.errorStyle ?? TextStyle(fontFamily: "InterSemiBold"),
            labelStyle:
                widget.labelStyle ?? TextStyle(fontFamily: "InterSemiBold"),
            labelText: widget.labelText,
            hintStyle: widget.hintStyle ?? TextStyle(fontFamily: "InterMedium"),
            hintText: widget.hintText,
          ),
    );
  }
}
