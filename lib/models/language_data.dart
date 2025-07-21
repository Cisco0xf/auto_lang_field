import 'package:auto_lang_field/commons/catch_code.dart';
import 'package:auto_lang_field/constants/enums.dart';

class LanguageData {
  /// The name of the language
  final String langName;

  /// The [RegExp] of the language, and this is the key
  final RegExp langRegExp;

  /// Language code and its enum with the suppored languages
  final LanguageCode langCode;

  /// Code of the language as test
  final String isoCode;

  LanguageData({
    required this.langName,
    required this.langCode,
    required this.langRegExp,
  }) : isoCode = langCode.code;
}
