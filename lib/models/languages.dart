import 'package:auto_lang_field/constants/enums.dart';
import 'package:auto_lang_field/models/language_data.dart';
import 'package:auto_lang_field/models/languages_regexp.dart';

typedef LanguageType = Map<LanguageCode, LanguageData>;

/// Map that contains needed data for eatch language to use it in the detection

final LanguageType languagesData = <LanguageCode, LanguageData>{
  // Language Data for Afrikaans
  LanguageCode.af: LanguageData(
    langName: "Afrikaans",
    langCode: LanguageCode.af,
    langRegExp: LanguageRegExp.afRegExp,
  ),

  // Language Data for Arabic
  LanguageCode.ar: LanguageData(
    langName: "Arabic",
    langCode: LanguageCode.ar,
    langRegExp: LanguageRegExp.arRegExp,
  ),

  // Language Data for Azeri
  LanguageCode.az: LanguageData(
    langName: "Azeri",
    langCode: LanguageCode.az,
    langRegExp: LanguageRegExp.azRegExp,
  ),

  // Language Data for Belarusian
  LanguageCode.be: LanguageData(
    langName: "Belarusian",
    langCode: LanguageCode.be,
    langRegExp: LanguageRegExp.beRegExp,
  ),

  // Language Data for Bulgarian
  LanguageCode.bg: LanguageData(
    langName: "Bulgarian",
    langCode: LanguageCode.bg,
    langRegExp: LanguageRegExp.bgRegExp,
  ),

  // Language Data for Bosnian
  LanguageCode.bs: LanguageData(
    langName: "Bosnian",
    langCode: LanguageCode.bs,
    langRegExp: LanguageRegExp.bsRegExp,
  ),

  // Language Data for Catalan
  LanguageCode.ca: LanguageData(
    langName: "Catalan",
    langCode: LanguageCode.ca,
    langRegExp: LanguageRegExp.caRegExp,
  ),

  // Language Data for Czech
  LanguageCode.cs: LanguageData(
    langName: "Czech",
    langCode: LanguageCode.cs,
    langRegExp: LanguageRegExp.csRegExp,
  ),

  // Language Data for Welsh
  LanguageCode.cy: LanguageData(
    langName: "Welsh",
    langCode: LanguageCode.cy,
    langRegExp: LanguageRegExp.cyRegExp,
  ),

  // Language Data for Danish
  LanguageCode.da: LanguageData(
    langName: "Danish",
    langCode: LanguageCode.da,
    langRegExp: LanguageRegExp.daRegExp,
  ),

  // Language Data for German
  LanguageCode.de: LanguageData(
    langName: "German",
    langCode: LanguageCode.de,
    langRegExp: LanguageRegExp.deRegExp,
  ),

  // Language Data for Divehi
  LanguageCode.dv: LanguageData(
    langName: "Divehi",
    langCode: LanguageCode.dv,
    langRegExp: LanguageRegExp.dvRegExp,
  ),

  // Language Data for Greek
  LanguageCode.el: LanguageData(
    langName: "Greek",
    langCode: LanguageCode.el,
    langRegExp: LanguageRegExp.elRegExp,
  ),

  // Language Data for English
  LanguageCode.en: LanguageData(
    langName: "English",
    langCode: LanguageCode.en,
    langRegExp: LanguageRegExp.enRegExp,
  ),

  // Language Data for Esperanto
  LanguageCode.eo: LanguageData(
    langName: "Esperanto",
    langCode: LanguageCode.eo,
    langRegExp: LanguageRegExp.eoRegExp,
  ),

  // Language Data for Spanish
  LanguageCode.es: LanguageData(
    langName: "Spanish",
    langCode: LanguageCode.es,
    langRegExp: LanguageRegExp.esRegExp,
  ),

  // Language Data for Estonian
  LanguageCode.et: LanguageData(
    langName: "Estonian",
    langCode: LanguageCode.et,
    langRegExp: LanguageRegExp.etRegExp,
  ),

  // Language Data for Basque
  LanguageCode.eu: LanguageData(
    langName: "Basque",
    langCode: LanguageCode.eu,
    langRegExp: LanguageRegExp.euRegExp,
  ),

  // Language Data for Farsi
  LanguageCode.fa: LanguageData(
    langName: "Farsi",
    langCode: LanguageCode.fa,
    langRegExp: LanguageRegExp.faRegExp,
  ),

  // Language Data for Finnish
  LanguageCode.fi: LanguageData(
    langName: "Finnish",
    langCode: LanguageCode.fi,
    langRegExp: LanguageRegExp.fiRegExp,
  ),

  // Language Data for Faroese
  LanguageCode.fo: LanguageData(
    langName: "Faroese",
    langCode: LanguageCode.fo,
    langRegExp: LanguageRegExp.foRegExp,
  ),

  // Language Data for French
  LanguageCode.fr: LanguageData(
    langName: "French",
    langCode: LanguageCode.fr,
    langRegExp: LanguageRegExp.frRegExp,
  ),

  // Language Data for Galician
  LanguageCode.gl: LanguageData(
    langName: "Galician",
    langCode: LanguageCode.gl,
    langRegExp: LanguageRegExp.glRegExp,
  ),

  // Language Data for Gujarati
  LanguageCode.gu: LanguageData(
    langName: "Gujarati",
    langCode: LanguageCode.gu,
    langRegExp: LanguageRegExp.guRegExp,
  ),

  // Language Data for Hebrew
  LanguageCode.he: LanguageData(
    langName: "Hebrew",
    langCode: LanguageCode.he,
    langRegExp: LanguageRegExp.heRegExp,
  ),

  // Language Data for Hindi
  LanguageCode.hi: LanguageData(
    langName: "Hindi",
    langCode: LanguageCode.hi,
    langRegExp: LanguageRegExp.hiRegExp,
  ),

  // Language Data for Croatian
  LanguageCode.hr: LanguageData(
    langName: "Croatian",
    langCode: LanguageCode.hr,
    langRegExp: LanguageRegExp.hrRegExp,
  ),

  // Language Data for Hungarian
  LanguageCode.hu: LanguageData(
    langName: "Hungarian",
    langCode: LanguageCode.hu,
    langRegExp: LanguageRegExp.huRegExp,
  ),

  // Language Data for Armenian
  LanguageCode.hy: LanguageData(
    langName: "Armenian",
    langCode: LanguageCode.hy,
    langRegExp: LanguageRegExp.hyRegExp,
  ),

  // Language Data for Indonesian
  LanguageCode.id: LanguageData(
    langName: "Indonesian",
    langCode: LanguageCode.id,
    langRegExp: LanguageRegExp.idRegExp,
  ),

  // Language Data for Italian
  LanguageCode.it: LanguageData(
    langName: "Italian",
    langCode: LanguageCode.it,
    langRegExp: LanguageRegExp.itRegExp,
  ),

  // Language Data for Japanese
  LanguageCode.ja: LanguageData(
    langName: "Japanese",
    langCode: LanguageCode.ja,
    langRegExp: LanguageRegExp.jaRegExp,
  ),

  // Language Data for Georgian
  LanguageCode.ka: LanguageData(
    langName: "Georgian",
    langCode: LanguageCode.ka,
    langRegExp: LanguageRegExp.kaRegExp,
  ),

  // Language Data for Kazakh
  LanguageCode.kk: LanguageData(
    langName: "Kazakh",
    langCode: LanguageCode.kk,
    langRegExp: LanguageRegExp.kkRegExp,
  ),

  // Language Data for Kannada
  LanguageCode.kn: LanguageData(
    langName: "Kannada",
    langCode: LanguageCode.kn,
    langRegExp: LanguageRegExp.knRegExp,
  ),

  // Language Data for Korean
  LanguageCode.ko: LanguageData(
    langName: "Korean",
    langCode: LanguageCode.ko,
    langRegExp: LanguageRegExp.koRegExp,
  ),

  // Language Data for Konkani
  LanguageCode.kok: LanguageData(
    langName: "Konkani",
    langCode: LanguageCode.kok,
    langRegExp: LanguageRegExp.kokRegExp,
  ),

  // Language Data for Kyrgyz
  LanguageCode.ky: LanguageData(
    langName: "Kyrgyz",
    langCode: LanguageCode.ky,
    langRegExp: LanguageRegExp.kyRegExp,
  ),

  // Language Data for Lithuanian
  LanguageCode.lt: LanguageData(
    langName: "Lithuanian",
    langCode: LanguageCode.lt,
    langRegExp: LanguageRegExp.ltRegExp,
  ),

  // Language Data for Latvian
  LanguageCode.lv: LanguageData(
    langName: "Latvian",
    langCode: LanguageCode.lv,
    langRegExp: LanguageRegExp.lvRegExp,
  ),

  // Language Data for Maori
  LanguageCode.mi: LanguageData(
    langName: "Maori",
    langCode: LanguageCode.mi,
    langRegExp: LanguageRegExp.miRegExp,
  ),

  // Language Data for FYRO Macedonian
  LanguageCode.mk: LanguageData(
    langName: "FYRO Macedonian",
    langCode: LanguageCode.mk,
    langRegExp: LanguageRegExp.mkRegExp,
  ),

  // Language Data for Mongolian
  LanguageCode.mn: LanguageData(
    langName: "Mongolian",
    langCode: LanguageCode.mn,
    langRegExp: LanguageRegExp.mnRegExp,
  ),

  // Language Data for Marathi
  LanguageCode.mr: LanguageData(
    langName: "Marathi",
    langCode: LanguageCode.mr,
    langRegExp: LanguageRegExp.mrRegExp,
  ),

  // Language Data for Malay
  LanguageCode.ms: LanguageData(
    langName: "Malay",
    langCode: LanguageCode.ms,
    langRegExp: LanguageRegExp.msRegExp,
  ),

  // Language Data for Maltese
  LanguageCode.mt: LanguageData(
    langName: "Maltese",
    langCode: LanguageCode.mt,
    langRegExp: LanguageRegExp.mtRegExp,
  ),

  // Language Data for Norwegian
  LanguageCode.nb: LanguageData(
    langName: "Norwegian ",
    langCode: LanguageCode.nb,
    langRegExp: LanguageRegExp.nbRegExp,
  ),

  // Language Data for Dutch
  LanguageCode.nl: LanguageData(
    langName: "Dutch",
    langCode: LanguageCode.nl,
    langRegExp: LanguageRegExp.nlRegExp,
  ),

  // Language Data for Norwegian
  LanguageCode.nn: LanguageData(
    langName: "Norwegian ",
    langCode: LanguageCode.nn,
    langRegExp: LanguageRegExp.nnRegExp,
  ),

  // Language Data for Northern Sotho
  LanguageCode.ns: LanguageData(
    langName: "Northern Sotho",
    langCode: LanguageCode.ns,
    langRegExp: LanguageRegExp.nsRegExp,
  ),

  // Language Data for Punjabi
  LanguageCode.pa: LanguageData(
    langName: "Punjabi",
    langCode: LanguageCode.pa,
    langRegExp: LanguageRegExp.paRegExp,
  ),

  // Language Data for Polish
  LanguageCode.pl: LanguageData(
    langName: "Polish",
    langCode: LanguageCode.pl,
    langRegExp: LanguageRegExp.plRegExp,
  ),

  // Language Data for Pashto
  LanguageCode.ps: LanguageData(
    langName: "Pashto",
    langCode: LanguageCode.ps,
    langRegExp: LanguageRegExp.psRegExp,
  ),

  // Language Data for Portuguese
  LanguageCode.pt: LanguageData(
    langName: "Portuguese",
    langCode: LanguageCode.pt,
    langRegExp: LanguageRegExp.ptRegExp,
  ),

  // Language Data for Quechua
  LanguageCode.qu: LanguageData(
    langName: "Quechua",
    langCode: LanguageCode.qu,
    langRegExp: LanguageRegExp.quRegExp,
  ),

  // Language Data for Romanian
  LanguageCode.ro: LanguageData(
    langName: "Romanian",
    langCode: LanguageCode.ro,
    langRegExp: LanguageRegExp.roRegExp,
  ),

  // Language Data for Russian
  LanguageCode.ru: LanguageData(
    langName: "Russian",
    langCode: LanguageCode.ru,
    langRegExp: LanguageRegExp.ruRegExp,
  ),

  // Language Data for Sanskrit
  LanguageCode.sa: LanguageData(
    langName: "Sanskrit",
    langCode: LanguageCode.sa,
    langRegExp: LanguageRegExp.saRegExp,
  ),

  // Language Data for Sami
  LanguageCode.se: LanguageData(
    langName: "Sami",
    langCode: LanguageCode.se,
    langRegExp: LanguageRegExp.seRegExp,
  ),

  // Language Data for Slovak
  LanguageCode.sk: LanguageData(
    langName: "Slovak",
    langCode: LanguageCode.sk,
    langRegExp: LanguageRegExp.skRegExp,
  ),

  // Language Data for Slovenian
  LanguageCode.sl: LanguageData(
    langName: "Slovenian",
    langCode: LanguageCode.sl,
    langRegExp: LanguageRegExp.slRegExp,
  ),

  // Language Data for Albanian
  LanguageCode.sq: LanguageData(
    langName: "Albanian",
    langCode: LanguageCode.sq,
    langRegExp: LanguageRegExp.sqRegExp,
  ),

  // Language Data for Serbian
  LanguageCode.sr: LanguageData(
    langName: "Serbian",
    langCode: LanguageCode.sr,
    langRegExp: LanguageRegExp.srRegExp,
  ),

  // Language Data for Swedish
  LanguageCode.sv: LanguageData(
    langName: "Swedish",
    langCode: LanguageCode.sv,
    langRegExp: LanguageRegExp.svRegExp,
  ),

  // Language Data for Swahili
  LanguageCode.sw: LanguageData(
    langName: "Swahili",
    langCode: LanguageCode.sw,
    langRegExp: LanguageRegExp.swRegExp,
  ),

  // Language Data for Syriac
  LanguageCode.syr: LanguageData(
    langName: "Syriac",
    langCode: LanguageCode.syr,
    langRegExp: LanguageRegExp.syrRegExp,
  ),

  // Language Data for Tamil
  LanguageCode.ta: LanguageData(
    langName: "Tamil",
    langCode: LanguageCode.ta,
    langRegExp: LanguageRegExp.taRegExp,
  ),

  // Language Data for Telugu
  LanguageCode.te: LanguageData(
    langName: "Telugu",
    langCode: LanguageCode.te,
    langRegExp: LanguageRegExp.teRegExp,
  ),

  // Language Data for Thai
  LanguageCode.th: LanguageData(
    langName: "Thai",
    langCode: LanguageCode.th,
    langRegExp: LanguageRegExp.thRegExp,
  ),

  // Language Data for Tagalog
  LanguageCode.tl: LanguageData(
    langName: "Tagalog",
    langCode: LanguageCode.tl,
    langRegExp: LanguageRegExp.tlRegExp,
  ),

  // Language Data for Tswana
  LanguageCode.tn: LanguageData(
    langName: "Tswana",
    langCode: LanguageCode.tn,
    langRegExp: LanguageRegExp.tnRegExp,
  ),

  // Language Data for Turkish
  LanguageCode.tr: LanguageData(
    langName: "Turkish",
    langCode: LanguageCode.tr,
    langRegExp: LanguageRegExp.trRegExp,
  ),

  // Language Data for Tatar
  LanguageCode.tt: LanguageData(
    langName: "Tatar",
    langCode: LanguageCode.tt,
    langRegExp: LanguageRegExp.ttRegExp,
  ),

  // Language Data for Tsonga
  LanguageCode.ts: LanguageData(
    langName: "Tsonga",
    langCode: LanguageCode.ts,
    langRegExp: LanguageRegExp.tsRegExp,
  ),

  // Language Data for Ukrainian
  LanguageCode.uk: LanguageData(
    langName: "Ukrainian",
    langCode: LanguageCode.uk,
    langRegExp: LanguageRegExp.ukRegExp,
  ),

  // Language Data for Urdu
  LanguageCode.ur: LanguageData(
    langName: "Urdu",
    langCode: LanguageCode.ur,
    langRegExp: LanguageRegExp.urRegExp,
  ),

  // Language Data for Uzbek
  LanguageCode.uz: LanguageData(
    langName: "Uzbek",
    langCode: LanguageCode.uz,
    langRegExp: LanguageRegExp.uzRegExp,
  ),

  // Language Data for Vietnamese
  LanguageCode.vi: LanguageData(
    langName: "Vietnamese",
    langCode: LanguageCode.vi,
    langRegExp: LanguageRegExp.viRegExp,
  ),

  // Language Data for Xhosa
  LanguageCode.xh: LanguageData(
    langName: "Xhosa",
    langCode: LanguageCode.xh,
    langRegExp: LanguageRegExp.xhRegExp,
  ),

  // Language Data for Chinese
  LanguageCode.zh: LanguageData(
    langName: "Chinese",
    langCode: LanguageCode.zh,
    langRegExp: LanguageRegExp.zhRegExp,
  ),

  // Language Data for Zulu
  LanguageCode.zu: LanguageData(
    langName: "Zulu",
    langCode: LanguageCode.zu,
    langRegExp: LanguageRegExp.zuRegExp,
  ),
};
