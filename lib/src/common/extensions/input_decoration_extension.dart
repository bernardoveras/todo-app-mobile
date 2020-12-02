import 'package:flutter/material.dart';

extension InputDecorationExtension on InputDecoration {
  InputDecoration semBordas() {
    return this.copyWith(
      border: this.border ?? InputBorder.none,
      enabledBorder: this.enabledBorder ?? InputBorder.none,
      disabledBorder: this.disabledBorder ?? InputBorder.none,
      focusedBorder: focusedBorder ?? InputBorder.none,
      errorBorder: errorBorder ?? InputBorder.none,
      focusedErrorBorder: focusedErrorBorder ?? InputBorder.none,
      alignLabelWithHint: this.alignLabelWithHint,
      contentPadding: this.contentPadding,
      counterStyle: this.counterStyle,
      errorMaxLines: this.errorMaxLines,
      errorStyle: this.errorStyle,
      fillColor: this.fillColor,
      filled: this.filled,
      floatingLabelBehavior: this.floatingLabelBehavior,
      focusColor: this.focusColor,
      hasFloatingPlaceholder: this.hasFloatingPlaceholder,
      helperMaxLines: this.helperMaxLines,
      helperStyle: this.helperStyle,
      hintStyle: this.hintStyle,
      hoverColor: this.hoverColor,
      icon: this.icon,
      isCollapsed: this.isCollapsed,
      isDense: this.isDense,
      labelStyle: this.labelStyle,
      labelText: this.labelText,
      prefix: this.prefix,
      prefixIconConstraints: this.prefixIconConstraints,
      prefixStyle: this.prefixStyle,
      prefixText: this.prefixText,
      semanticCounterText: this.semanticCounterText,
      suffix: this.suffix,
      suffixIcon: this.suffixIcon,
      suffixIconConstraints: this.suffixIconConstraints,
      suffixStyle: this.suffixStyle,
      suffixText: this.suffixText,
    );
  }
}
