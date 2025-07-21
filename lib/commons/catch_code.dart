import 'package:auto_lang_field/auto_lang_field.dart';
import 'package:auto_lang_field/constants/enums.dart';

/// Instead of passing the isoCode in each [LanguageData] constructor
/// This extension will handle it from the given [LanguageCode]

extension CatchLangCode on LanguageCode {
  String get code {
    const String pattern = ".";

    final int divider = toString().indexOf(pattern) + pattern.length;

    final String code = toString().substring(divider);

    return code;
  }
}
