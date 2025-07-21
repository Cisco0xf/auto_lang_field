import 'package:flutter/material.dart';

/// Text properties that will auto-change according to the detected language

class TextProperties {

  /// TextDirection of the [AutoLangField]
  final TextDirection? fieldDirection;

  /// TextStyle of the text in the field
  final TextStyle? style;

  /// TextAlign of the text in the field
  final TextAlign textAlign;

  const TextProperties({
    this.style,
    this.textAlign = TextAlign.start,
    this.fieldDirection,
  });
}
