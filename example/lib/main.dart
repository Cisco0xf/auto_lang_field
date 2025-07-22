import 'package:auto_lang_field/auto_lang_field.dart';
import 'package:auto_lang_field/constants/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const ExampleRoot());
}

// Colors of the Example

class AppColors {
  static const Color primaryColor = Color(0xFF3E3F5B);
  static const Color secondaryColor = Color(0xFF7b547a);

  static const Color borderColor = Color(0xFFaaaabc);

  static const Color bgColor = Color(0xFF111d13);
  static const Color fillColor = Color(0xFF354f52);
}

// Texts of the Example

const String noLang =
    "No language has been detected for the TextField right now !!";

// Fonts of the example

class FontFamily {
  static const String ar = "AR";
  static const String en = "EN";
  static const String hi = "HI";
  static const String zh = "ZH";
  static const String ru = "RU";
  static const String th = "TH";
}

// Example Code

class ExampleRoot extends StatelessWidget {
  const ExampleRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const AutoLangFieldTester(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.primaryColor,
          brightness: Brightness.dark,
        ),
      ),
    );
  }
}

class AutoLangFieldTester extends StatefulWidget {
  const AutoLangFieldTester({super.key});

  @override
  State<AutoLangFieldTester> createState() => _AutoLangFieldTesterState();
}

class _AutoLangFieldTesterState extends State<AutoLangFieldTester> {
  double get _screenWidth => MediaQuery.sizeOf(context).width;
  double get _screenHeight => MediaQuery.sizeOf(context).height;

  late final TextEditingController _testController;
  @override
  void initState() {
    _testController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _testController.dispose();
    super.dispose();
  }

  LanguageData? detectedLangData;

  /// TextStyle for eatch LanguageCode

  TextStyle get _arStyle {
    return const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      fontFamily: FontFamily.ar,
      color: Colors.green,
    );
  }

  TextStyle get _enStyle {
    return const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      fontFamily: FontFamily.en,
      color: Colors.blue,
    );
  }

  TextStyle get _hiStyle {
    return const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      fontFamily: FontFamily.hi,
      color: Colors.red,
    );
  }

  TextStyle get _zhStyle {
    return const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      fontFamily: FontFamily.zh,
      color: Colors.purple,
    );
  }

  TextStyle get _ruStyle {
    return const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.white,
      fontFamily: FontFamily.ru,
    );
  }

  TextStyle get _thStyle {
    return const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.amber,
      fontFamily: FontFamily.th,
    );
  }

  /// Target Image
  ///
  String get _targetIage {
    final String currentIsoCode = detectedLangData!.isoCode;

    final String targetPath = "assets/images/$currentIsoCode.svg";

    return targetPath;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.primaryColor,
        centerTitle: true,
        title: const Text(
          "AutoLangField",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      /// Tests :
      /// 1- LanguageCode has null TextProperties value     (PASSED)
      /// 2- Unsupportes Language for TextProperties        (PASSED)
      /// 3- textPropertiesPerLang is Null or empty         (PASSED)
      /// 4- textPropertiesPerLang >  supportesLanguages    (PASSED)
      /// 5- Change all the properties of the TextField     (PASSED)

      body: Column(
        children: <Widget>[
          if (detectedLangData == null) ...{
            SizedBox(height: _screenHeight * 0.13),
          },
          Expanded(
            child: detectedLangData == null
                ? const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      noLang,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey,
                      ),
                    ),
                  )
                : SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: _screenHeight * 0.06),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: SizedBox(
                            height: _screenHeight * .1,
                            width: _screenWidth * .3,
                            child: SvgPicture.asset(
                              _targetIage,
                              height: _screenHeight * .15,
                              width: _screenWidth * .55,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(height: _screenHeight * .06),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            LangConfig(
                              title: "Code",
                              data: detectedLangData!.langCode.toString(),
                              dataColor: const Color(0xFF78C841),
                            ),
                            LangConfig(
                              title: "Name",
                              data: detectedLangData!.langName,
                              dataColor: const Color(0xFF799EFF),
                            ),
                            LangConfig(
                              title: "IsoCode",
                              data: detectedLangData!.isoCode,
                              dataColor: const Color(0xFFFF2DD1),
                              isIso: true,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15.0,
              vertical: 20.0,
            ),
            child: AutoLangField(
              controller: _testController,
              supportedLanguages: const <LanguageCode>[
                LanguageCode.en,
                LanguageCode.ar,
                LanguageCode.hi,
                LanguageCode.zh,
                LanguageCode.ru,
                LanguageCode.th,
              ],
              textPropertiesPerLanguage: {
                LanguageCode.en: TextProperties(style: _enStyle),
                LanguageCode.ar: TextProperties(
                  style: _arStyle,
                  fieldDirection: TextDirection.rtl,
                ),
                LanguageCode.hi: TextProperties(style: _hiStyle),
                LanguageCode.ru: TextProperties(style: _ruStyle),
                LanguageCode.zh: TextProperties(style: _zhStyle),
                LanguageCode.th: TextProperties(style: _thStyle),
              },
              onLanguageDetected: (value, detectedLang) {
                setState(() => detectedLangData = detectedLang);
              },
              decoration: InputDecoration(
                filled: true,
                fillColor: AppColors.fillColor,
                prefixIcon: const Icon(Icons.language),
                suffixIcon: const Icon(Icons.translate),
                hintText: "Detect Language",
                hintStyle: const TextStyle(
                  fontSize: 16,
                  color: null,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  borderSide: const BorderSide(
                    color: Colors.grey,
                    width: 1.2,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  borderSide: const BorderSide(
                    color: AppColors.borderColor,
                    width: 1.7,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LangConfig extends StatelessWidget {
  const LangConfig({
    super.key,
    required this.title,
    required this.data,
    required this.dataColor,
    this.isIso = false,
  });
  final String title;
  final String data;
  final Color dataColor;
  final bool isIso;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: <InlineSpan>[
          TextSpan(
            text: "Language $title : ",
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              fontFamily: FontFamily.en,
            ),
          ),
          TextSpan(
            text: data,
            style: TextStyle(
              fontSize: isIso ? 25 : 20,
              fontWeight: FontWeight.bold,
              color: dataColor,
              fontFamily: FontFamily.en,
            ),
          )
        ],
      ),
    );
  }
}
