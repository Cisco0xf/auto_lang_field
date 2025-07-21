// ignore_for_file: avoid_print, unused_local_variable

import 'dart:developer';

import 'package:auto_lang_field/commons/catch_code.dart';
import 'package:auto_lang_field/constants/enums.dart';
import 'package:auto_lang_field/models/language_data.dart';
import 'package:auto_lang_field/models/languages.dart';
import 'package:auto_lang_field/models/languages_regexp.dart';

void main() {
  /* final List<LanguageCode> languages = LanguageCode.values.toList();
  print("Length of the suppoted languages : ${languages.length}"); */
  /*  for (int i = 0; i < languages.length; i++) {
    print(" LanguageData("
        "langName: \"langName\","
        "code: ${languages[i]},"
        "langRegExp: RegExp(r'[a-zA-Záéèëêíîïóôúû’\\s]'),"
        "),");
  } */

  /* const String testSpanish =
      "Mi padre es alto y rubio, y mi madre es morena y delgada. A mi hermana le gusta quedar con sus amigas en el parque.";

  const String testRassian = "яз";
  const String testRassian2 =
      "Аня: «Ты пользуешься компьютером каждый день?»Петя: «Я играю на нем в игры и слушаю музыку.»Аня: «А каким спортом ты занимаешься?» Петя: «Волейболом и теннисом. И я хорошо плаваю.» Аня: «Как часто ты ходишь плавать?» Петя: «Один или два раза в неделю. А ты? Что тебе нравится делать в свободное время?";

  const String testId = "Saya mau makan nasi goreng";

  const String testDe = "Ich esse einen Apfel.";
  const String testDe2 =
      "Es gefällt ihr hier sehr gut. Morgens um neun beginnt der Unterricht, um vierzehn Uhr ist er zu Ende. In ihrer Klasse sind außer Juliana noch 14 weitere Schüler, acht Mädchen und sechs Jungen. Sie kommen alle aus Frankreich, aber nicht aus Paris.";

  const String testFrench =
      "Le rouge est une couleur vive. C’est la couleur de nombreux fruits et légumes, comme les tomates, les fraises ou les cerises. Le jaune est la couleur des bananes, du maïs ou des poussins par exemple. Le bleu est très présent dans la nature : c’est la couleur du ciel et de la mer. Le rouge, le jaune et le bleu sont les trois couleurs primaires.";

  const String testJa = "日本語のテキスト";

  const String textZh = "每當看、航天器升空完成星箭分離進入預定軌道後不久就會聽到：太陽能板打開、的宣告。這宣告在古時曰";

  const String testSw = "Ninakupenda sana.";

  const String testMr = "संत तुकाराम गाथा";
  const String testMr2 = "भारतीय भाषा ज्योती : मराठी (हिंदी-मराठी)";

  const String testTe = "నేను బియ్యం తింటున్నాను";
  const String testTe2 = "నేను వెళ్తున్నాను";

  const String testVi = "Tôi muốn ăn gà ở trung tâm";
  const String testVi2 = "huyền	";

  const String testTr = "Ben okula gidiyorum";

  const String testIt = "Il libro è sul tavolo";

  const String testKo = "오늘은 김치를 먹었어요";
  const String testKo2 =
      "(예시) 인생에 그러므로 싶이 무엇을 소리다.이것은 든 구하지 풀밭(잔디밭)에 그리하였는가? 인도하겠다는 이상, 피고 방황하였으며, 노래하며 가치를 힘있다. 이상의 같지 갑 이상 능히 따뜻한 사막이다. 오아이스도 못하다 수 때까지 부패를 그들에게 있으랴? 굳세게 할지라도 때에, 고행을 것은 놀이 아니다. 창공에 우는 그들은 밥을 이상 있음으로써 인간은 인간의 듣는다.";

  const String testFa =
      "امروز هوا آفتابی و گرم بود. من با دوستم علی به پارک رفتیم. در آنجا پرندگان آواز می‌خواندند و کودکان در حال بازی بودند. علی یک بستنی وانیلی خرید و من هم یک آب پرتقال خنک گرفتم. بعد از ناهار، زیر سایه درختان نشستیم و داستان‌های قدیمی تعریف کردیم. هنگام غروب، به خانه بازگشتیم. روز بسیار خوبی بود";

  const String testTh =
      "ทรูวิชั่นส์ ประกาศถ่ายทอดสดศึกฟุตบอล พรีเมียร์ ลีก อังกฤษ ครบทุกนัดเป็นเวลา 3 ปี ตั้งแต่ฤดูกาล 2016/2017 - 2018/2019 พร้อมด้วยอีก 5 ลีกดัง อาทิ ลา ลีกา สเปน, กัลโช เซเรีย เอ อิตาลี และลีกเอิง ฝรั่งเศส ภายใต้แพ็กเกจสุดคุ้ม ทั้งผ่านมือถือ และโทรทัศน์ some, English words here! abc123";

  const String testTh2 = " 123 World";

  const String testRassian3 = "компьютером Hello";

  const String testUr2 = "آپ کو مدد Hello";
 */ /* 
  const String testZh1 = "每當看、航天器升空完成星箭分離進入預定軌道後不久就會聽到：太陽能板打開、的宣告。這宣告在古時曰";
  const String testZh2 = "每當看、";
  const String testZh3 = "每當看、。這宣告在古時曰";
  const String testZh4 = "每當看、航天器升空久就會聽到：太陽能板打開、的宣告。這宣告在古時曰";
  const String testZh5 =
      "每當看、航天器升空完成星箭分離進入預定  Fuck You 軌道後不久就會聽到：太陽能板打開、的宣告。這宣告在古時曰";
  const String testZh6 = "每當";
  const String testZh7 = "每當";
 */
  const List<String> englishTest = [
    "Hello mother fucker",
    "Test Text !!!!!",
    "What is the life ... ?",
    "Text with numbers 000xF",
    "每當看、航天器升空完成星箭分離進 SHIT",
    // testTh,
  ];

  const List<String> testZh = <String>[
    "每當看、航天器升空完成星箭分離進入預定軌道後不久就會聽到：太陽能板打開、的宣告。這宣告在古時曰",
    "每當看、",
    "每當看、。這宣告在古時曰 ?",
    "每當看、航天器升空久就會聽到：太陽能板打開、的宣告。這宣告在古時曰",
    "每當看、航天器升空完成星箭分離進入預定  Fuck You 軌道後不久就會聽到：太陽能板打開、的宣告。這宣告在古時曰 !!!",
    "每當 @",
    "每當 ..",
    "每當 00012",
    "每當 With English ",
    "每當 !!!!!!!! ? ",
    "English Text Test"
  ];

  const List<String> testHi = <String>[
    "आज मौसम बहुत सुहावना था। मैंने अपने दोस्त   के साथ पार्क में टहलने का फैसला किया। वहाँ हमने कुछ बच्चों को क्रिकेट खेलते देखा और कुछ बुजुर्गों को पेड़ों के नीचे बैठकर बातें करते सुना। राजेश ने एक नारियल पानी खरीदा और मैंने एक आइसक्रीम ली। दोपहर के बाद, हम एक बेंच पर बैठ गए और ",
    "आज मौसम बहुत",
    "आज मौसम बहुत सुहावना था। मैंने अपने  ",
    "आज मौसम बहुत सुहावना .... !",
    "आज मौसम बहुत सुहावना ??",
    "आज मौसम बहुत सुहावना 0xFF0001",
    "आज मौसम बहुत सुहावना \$42",
    "आज मौसम बहुत सुहावना ",
    "Hello World",
  ];

  const List<String> testEs = <String>[
    "Mi padre es alto y rubio, y mi madre es morena y delgada. A mi hermana le gusta quedar con sus amigas en el parque.",
    "Mi padre es alto y rubio",
    "Mi padre es ?!!!",
    "Mi padre  mi madre es gusta quedar con sus amigas en el parque. 0xFF34432353",
    "Mi padre es alto y rubio !! ?.",
    "Mi padre es alto y 5093 ..",
    "Hello World Fuck You ",
    "मौसम",
  ];

  const List<String> testFr = <String>[
    "Le rouge est une couleur vive. C’est la couleur de nombreux fruits et légumes, comme les tomates, les fraises ou les cerises. Le jaune est la couleur des bananes, du maïs ou des poussins par exemple. Le bleu est très présent dans la nature : c’est la couleur du ciel et de la mer. Le rouge, le jaune et le bleu sont les trois couleurs primaires.",
    " c’est la couleur du ciel et de la mer. Le rouge, le jaune et le bleu sont les trois couleurs primaires.",
    "Le rouge est une couleur vive. C’est la couleur de nombreux fruits et légumes",
    "Le rouge est une couleur vive.",
    "du ciel et de la mer.",
    "du ciel et de la mer ...?",
    "du ciel et de la mer 0xFFF",
    "Hello World",
    "Fuck You ",
  ];

  const List<String> testAr = [
    "في وعاء كبير أو محضرة طعام، امزج اللحم المفروم مع البصل الأصفر والبقدونس والنعناع والملح والفلفل الأسود والسماق والقرفة. هنا، نستمتع باستخدام أفضل أداة في المطبخ: أيدينا! وزّع المكونات",
    " والسماق والقرفة. هنا، نستمتع باستخدام أفضل أداة في المطبخ: أيدينا! وزّع المكونات 122343",
    " والسماق والقرفة. هنا، نستمتع باستخدام أفضل أداة في المطبخ: أيدينا! وزّع المكونات 122343",
    " والسماق والقرفة. هنا، نستمتع باستخدام أفضل أداة في المطبخ: ? !!",
    " والسماق والقرفة. هنا، نستمتع باستخدام أفضل أداة في المطبخ ٠١٢٣٤٥٦٧٨٩",
    " والسماق والقرفة. هنا، نستمتع باست  مطبخ: ? !!",
    " والسماق والقرفة. هنا، نستمتع باستخدام أفضل أداة في المطبخ: ؟ ..... لإألأ]",
    " والسماق والقرفة. هنا، نستمتع باستخدام أفضل أداة في المطبخ: ؟ ..... لإألأ] Like",
    "Hello World Fuck You",
    "每當看、航天器升空久就會聽到：太陽能板打開、的宣告。這宣告在古時曰"
  ];

  const List<String> testPt = <String>[
    "Os jovens passaram o dia todo",
    "Os jovens passaram o .. !?",
    "Os jovens passaram  0999",
    "Os jovens passaram o dia todo )'",
    "Hello World",
  ];

  const List<String> testUr = [
    "کیا آپ کو مدد چاہیے 0223؟",
    "کیا آپ کو مدد چاہ ?!!",
    "کیا آپ کو مدد چاہی   drrgh ؟",
    "Hello World"
  ];

  const List<String> testThFinal = <String>[
    "ทรูวิชั่นส์ ประกาศถ่ายทอดสดศึกฟุตบอล พรีเมียร์ ลีก อังกฤษ ครบทุกนัดเป็นเวลา 3 ปี ตั้งแต่ฤดูกาล 2016/2017 - 2018/2019 พร้อมด้วยอีก 5 ลีกดัง อาทิ ลา ลีกา สเปน, กัลโช เซเรีย เอ อิตาลี และลีกเอิง ฝรั่งเศส ภายใต้แพ็กเกจสุดคุ้ม ทั้งผ่านมือถือ และโทรทัศน์ some, English words here! abc123",
    "ทรูวิชั่นส์ ประกาศถ่ายทอดสดศึกฟุตบอล พรีเมียร์ ลีก อังกฤษ ครบทุกนัดเป็นเวลา 3 ปี ตั้งแต่ฤดูกาล 2016/2017",
    "ทรูวิชั่นส์ ประกาศถ่ายทอดสดศึกฟุตบอล พรีเมียร์ ลีก อังกฤษ ครบทุกนัดเป็นเวลา ? !",
    "ทรูวิชั่นส์ ประกาศถ่ายทอดสดศึกฟุตบอล พรีเมียร์ ลีก อังกฤษ ครบทุกนัดเป็นเวลา Hello ",
    "ONly English Text",
  ];

  for (int t = 0; t < testThFinal.length; t++) {
    final String item = testThFinal[t];
    if (LanguageRegExp.thRegExp.hasMatch(item)) {
      log("$item ===> pass the language test !!");
    } else {
      log("$item ===> has FUCKED UP !!");
    }
  }

  ///////////////////////////
  ///
  log("*" * 50);

  const List<LanguageCode> codes = LanguageCode.values;

  log("Language Codes Length : ${codes.length}");

  List<String> codesResult = [];

  for (int c = 0; c < codes.length; c++) {
    final String sCode = codes[c].code;

    print("Code ${c + 1} from codes : $sCode");

    codesResult = [
      ...codesResult,
      sCode,
    ];
  }

  print("Code Result length : ${codesResult.length}");

  print("Catched Codes from the LanguageCdoe from Enum : $codesResult");

  print("${"*" * 25} DEBUG CATCHING LANGUAGE DATA ${"*" * 25}");
  print("${"\$" * 25} DEBUG CATCHING LANGUAGE DATA ${"\$" * 25}");

  /* List<LanguageData> get _targetLanguages {
    if (widget.expectedLangs == null) {
      return [];
    }

    List<LanguageData> targets = [];

    for (int l = 0; l < widget.expectedLangs!.length; l++) {
      final LanguageCode langCode = widget.expectedLangs![l];

      for (int t = 0; t < languagesData.length; t++) {
        if (languagesData[t].langCode == langCode) {
          targets = [...targets, languagesData[t]];
        }
      }
    }

    return targets;
  } */

  const List<LanguageCode> testlangCodes = [
    LanguageCode.en,
    LanguageCode.ar,
    LanguageCode.zh,
  ];

  List<LanguageData> targets = [];

  log("Expected Languages length : ${testlangCodes.length}");

  for (int l = 0; l < testlangCodes.length; l++) {
    final LanguageCode expectedCode = testlangCodes[l];

    final LanguageData singleTarget = languagesData[expectedCode]!;

    targets = <LanguageData>[...targets, singleTarget];

    print("Current Targets : $targets");
  }

  for (int d = 0; d < targets.length; d++) {
    print("LanguageData ${d + 1} Name: ${targets[d].langName} ");
    print("LanguageData ${d + 1} Code: ${targets[d].langCode} ");
    print("LanguageData ${d + 1} Name: ${targets[d].langRegExp} ");
    print("LanguageData ${d + 1} Name: ${targets[d].isoCode}");
    print("*" * 100);
  }

  /* if (UniqueLanguageRegExp.enRegExp
      .hasMatch("Hello World !@" /* .toLowerCase() */)) {
    print("Language passed the test !!!");
  } else {
    print("RegExp FUCKED UP....");
  } */

  /* final List<String> moreKo = testKo2.split(" ");

  String newPattern = "";

  for (int i = 0; i < moreKo.length; i++) {
    newPattern = "$newPattern|${moreKo[i]}";
  }

  print(newPattern); */
}

/* 
Apps do need dynamic input language detection (e.g., keyboards, translators, or forms that switch UI based on language).

 */
