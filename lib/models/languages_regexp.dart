import 'package:auto_lang_field/constants/enums.dart';

/// The RegExp will be divided to two main groups:
///
/// [1] Top most used languages in the world
///   - It will have + 90 % accurancy
///
/// [2] Other common languages
///   - These languages will have some coomons with other languages
///   - And its RegExp is not UNIQUE for them
///
/// So it is NOT recommended to use languages with common RegExp

class LanguageRegExp {
  /// MOST COMMON LANGUAGES

  static final RegExp enRegExp = RegExp(
    r'^[a-zA-Z0-9\s.,!?;:\"()\-_@#$%&*+=\[\]{}|\\/<>~`]+$',
    caseSensitive: false,
  );

  /// RegExp for the Chinese language  (PASSED)
  /// Language has code => [LanguageCode.zh]
  /// Another RegExp: ^[\u4E00-\u9FFF\u3400-\u4DBF\uF900-\uFAFF]+$

  static final RegExp zhRegExp = RegExp(
    r'^(?!.*[ぁ-ゖァ-ヿ々])' // BLOCK Japanese
    r'(?!.*[가-힣])' // BLOCK Korean
    r'(?=.*[\u4e00-\u9fff])' // Require at least one Chinese character
    r'['
    r'0-9' // Added: Numbers (0-9)
    r'!?;:,.、。！？；：，．@#%^&*() {}' // Added: Common Chinese/Western punctuation
    r'\u4e00-\u9fff' // CJK Unified Ideographs (Common)
    r'\u3400-\u4dbf' // CJK Extension A (Rare Traditional)
    r'\u3000-\u303f' // CJK Symbols/Punctuation
    r'\uff00-\uffef' // Halfwidth/FW Forms
    r'|'
    r'\b(的|一|是|了|我|不|在|人|有|他|这|个|中|上|们|来|到|说|和|你|地|大|也|里|得|着|那|要|下|看|天|过|出|么|好|小|心|会|去|能|对|学|都|生|时|多|发|后|自|什|么|当|样|想|看|无|开|还|成|如|事|把|用|第|些|现|前|所|起|将|两|本|从|很|最|今|没|动|已|经|同)\b'
    r']+$',
    caseSensitive: false,
    unicode: true,
  );

  /// RegExp for the Hindi language
  /// Language has code => [LanguageCode.hi]
  /// PURE RegExp : ^[\u0900-\u097F\uA8E0-\uA8FF\u1CD0-\u1CFF\s]+$

  static final RegExp hiRegExp = RegExp(
    /* r'(?:'
    // 1. REQUIRED: At least 1 Devanagari character
    r'(?=.*[\u0900-\u097F])'

    // 2. Devanagari script ranges + Hindi punctuation
    r'[\u0900-\u097F' // Main Hindi block
    r'\uA8E0-\uA8FF' // Extended
    r'\u1CD0-\u1CFF' // Vedic
    r'\u0964-\u0965' // । ॥
    r'\u0966-\u096F' // Hindi digits ०-९

    r'0-9' // Western digits 0-9
    r'.,!?;:()\[\]{}\-—"\' // Common punctuation

    r'\s]' */

    r'[\u0900-\u097F]'

    // 3. TOP 50 UNIQUELY HINDI WORDS (no Sanskrit/Urdu overlap)
    r'|'
    r'\b(क्या|है|और|लेकिन|यह|वह|हम|तुम|आप|मैं|को|का|की|के|ने|से|पर|में|होना|करना|था|थी|थे|गया|गई|लिया|दिया|होता|होती|रहा|बहुत|सब|अपने|उस|इस|कर|हो|जो|वो|अभी|बाद|पहले|यहाँ|वहाँ|कहाँ|कैसे|क्यों|देखो|सुनो|चलो)\b' /*  r')+$' */,
    caseSensitive: false,
    unicode: true,
  );

  /// RegExp for the Spanish language      (PASSED)
  /// Language has code => [LanguageCode.es]
  /// Another RegExp : (?=.*[áéíóúüñÁÉÍÓÚÜÑ])^[A-Za-záéíóúüñÁÉÍÓÚÜÑ¿¡!\s]+$

  static final RegExp esRegExp = RegExp(
    r'(?:[ñüÑÜ¿¡]|(?:\b[a-zA-Z]*[áéíóúÁÉÍÓÚ][a-zA-Z]*\b))'
    r'|'
    r'(?:\b(el|la|los|las|un|una|unos|unas|de|del|en|y|a|que|es|por|con|no|se|su|al|lo|como|más|pero|sus|le|ya|o|este|sí|porque|esta|entre|cuando|muy|sin|sobre|también|me|hasta|hay|donde|quien|desde|todo|nos|durante|todos|uno|les|ni|contra|otros|ese|eso|ante|ellos|e|esto|mí|antes|algunos|qué|unos|yo|otro|otras|otra|él|tanto|esa|estos|mucho|quienes|nada|muchos|cual|poco|ella|estar|estas|algunas|algo|nosotros|mi|mis|tú|te|ti|tu|tus|ellas|nosotras|vosotros|vosotras|os|mío|mía|míos|mías|tuyo|tuya|tuyos|tuyas|suyo|suya|suyos|suyas|nuestro|nuestra|nuestros|nuestras|vuestro|vuestra|vuestros|vuestras|esos|esas|estoy|estás|está|estamos|estáis|están|esté|estés|estemos|estéis|estén|estaré|estarás|estará|estaremos|estaréis|estarán|estaría|estarías|estaríamos|estaríais|estarían|estaba|estabas|estábamos|estabais|estaban|estuve|estuviste|estuvo|estuvimos|estuvisteis|estuvieron|estuviera|estuvieras|estuviéramos|estuvierais|estuvieran|estuviese|estuvieses|estuviésemos|estuvieseis|estuviesen|estando|estado|estada|estados|estadas|estad)\b)',
  );

  /// RegExp for the French language
  /// Language has code => [LanguageCode.fr]
  /// Another RegExp: [a-zA-ZàâäçéèêëîïôœùûüÿæÆ\s]

  static final RegExp frRegExp = RegExp(
    r'[œæÆÇçÿŸ]|(\b\w*[àâäéèêëîïôùûüÿ]\w*\b)'
    r'|'
    r'(?:\b(le|la|les|un|une|des|de|du|au|aux|en|à|et|ou|mais|qui|que|quoi|dans|avec|pour|par|sur|je|tu|il|elle|nous|vous|ils|elles|rouge)\b)'
    r'|'
    r'[0-9.,;:!?\"()\-\@#$^&*[\]{}]',
    caseSensitive: false,
  );

  /// RegExp for the Arabic language     (PASSED)
  /// Language has code => [LanguageCode.ar]

  static final RegExp arRegExp = RegExp(
    // r'[\u0600-\u06FF\u0750-\u077F\u08A0-\u08FF' // Arabic script
    /*  r'[\u0600-\u06FF\u0750-\u077F\u08A0-\u08FF\u0660-\u0669\u06F0-\u06F9]'
    r'0-9' // Western digits
    r'\s.,!?؛،؟:()\[\]{}\-—"\“”‘’…]', */
    r'[\u0600-\u06FF\u0750-\u077F\u08A0-\u08FF\u0660-\u0669\u06F0-\u06F9]',
  );

  /// RegExp for the Portuguese language   (PASSED)
  /// Language has code => [LanguageCode.pt]

  static final RegExp ptRegExp = RegExp(
    r'(?:[ãõâêîôûÃÕÂÊÎÔÛçÇ]|[áéíóúÁÉÍÓÚ]|'
    r'\b(o|a|os|as|um|uma|de|do|da|em|no|na|por|que|e|com|não|se|eu|tu|ele|ela|nós|vocês|eles|elas|meu|teu|seu|deles)\b'
    r')'
    r'|'
    r'[0-9.,;:!?"@#$%^&*()]',
    caseSensitive: false,
    unicode: true,
  );

  /// RegExp for the Russian language          (PASSED)
  /// Language has code => [LanguageCode.ru]
  /// r'[\u0400-\u04FF\u0500-\u052F\s]' || r'/^(?=.*[\u0400-\u04FF])[a-zA-Z\u0400-\u04FF]+$/u',

  static final RegExp ruRegExp = RegExp(
    r'^(?=.*[а-яА-ЯёЁ])[\wа-яА-ЯёЁ\s«»:?.,!-]+$',
    caseSensitive: false,
    unicode: true,
  );

  /// RegExp for the Urdu language
  /// Language has code => [LanguageCode.ur]

  static final RegExp urRegExp =
      RegExp(r'^[\u0600-\u06FF\u0750-\u077F\uFB50-\uFDFF\uFE70-\uFEFF\s]+$');

  /// RegExp for the Indonesian language
  /// Language has code => [LanguageCode.id]

  static final RegExp idRegExp = RegExp(
    r'(?:'
    r'\b(saya|aku|mbak|kamu|mas|dia|kita|pak|mereka|ini|nasi|ayam|kantor|mall|itu|dan|atau|tapi|di|ke|dari|pada|untuk|adalah|dengan|tidak|ya|bukan|ada|bisa|sudah|akan|ingin|pergi|makan|belum|minum|yang|anda|juga|besar|kecil)\b'
    r'|'
    r'(nya|lah|kah)\b'
    r'|'
    r'\b(nggak|gak|aja)\b' // Informal words
    r')', // saya|aku|kamu|mbak|mas|pak|bu|sudah|nasi|ayam|kantor|mall|motor
  );

  /// RegExp for the German language                 =>(NEED IMPROVEMENT)<=
  /// Language has code => [LanguageCode.de]
  /// For strict mode => r'(?=.*[äöüß])'

  static final RegExp deRegExp = RegExp(
    r'(?:[äöüÄÖÜß]|'
    r'\b(ich|esse|einen|apfel|der|die|das|und|in|den|von|zu|mit|sich|ist|für|auf|ein|eine|nicht|als|auch|er|sie|es|haben|werden|wie|du)\b)',
    caseSensitive: false,
    unicode: true,
  );

  /// RegExp for the Japanese language
  /// Language has code => [LanguageCode.ja]
  /// [\u3040-\u309F\u30A0-\u30FF\u4e00-\u9fff\s]

  static final RegExp jaRegExp = RegExp(
    r'[\u3040-\u309F\u30A0-\u30FF]' // Hiragana and Katakana
    r'|'
    r'\b(の|に|は|を|が|で|と|た|し|て|です|ます|である|から|まで|より|として|による|について|における|に対して|において|によって|をもって|をめぐって|として|について|における|に関して|に対する|によると)\b'
    r'|'
    r'(の|に|は|を|が|で|と|た|し|て|です|ます|である|から|まで|より|として|による|について|における|に対して|において|によって|これ|それ|あれ|この|その|あの|ここ|そこ|あそこ|だれ|何|どこ|いつ|なぜ|どう|どの|どんな|いくら|いくつ|どれ|どちら)'
    r'|'
    r'(は|が|を|に|で|と|から|まで|より|へ|や|か|も|だけ|しか|など|ほど|くらい|ぐらい|ばかり|だって|って|という|といった|とか|など|なんか|なんて)'
    r'|'
    r'(です|ます|だった|でした|ている|ていた|ていく|てくる|てある|ておく|てみる|てしまう|られる|させる|せる|れる)',
    caseSensitive: false,
    unicode: true,
  );

  /// RegExp for the Swahili language            (PASSED)
  /// Language has code => [LanguageCode.sw]

  static final RegExp swRegExp = RegExp(
    r'\b(na|ya|wa|za|la|kwa|ni|si|hii|hiyo|hayo|sasa|hapa|pale|yule|huyu|mimi|wewe|yeye|katika|kwa|sana|tu|pia|lakini|au|wakati|watu|mtu|kitu|mahali|nyumba|mji|kazi|mzuri|kubwa|ndogo|kwenda|kuja|kula|kunywa|kusoma)\b',
    caseSensitive: false,
    unicode: true,
  );

  /// RegExp for the Marathi language       (PASSED)
  /// Language has code => [LanguageCode.mr]
  /// Old : RegExp(r'[\u0900-\u097F\s]');

  static final RegExp mrRegExp = RegExp(
    r'(?=.*[\u0900-\u097F])' // MUST have at least 1 Marathi Unicode char
    r'|'
    r'[ािीुूेैोौ्ॅॉ]' // Common vowel signs/diacritics
    r'|'
    r'\b(मी|तू|तो|ती|आम्ही|ते|हा|तो|भात|चिकन|ऑफिस|मॉल|आणि|किंवा|पण|मध्ये|ला|पासून|साठी|सोबत|नाही|होय|आहे|करू|पाहिजे|जा|खाणे|तुम्ही|मोठे|छोटे)\b',
    caseSensitive: false,
    unicode: true,
  );

  /// RegExp for the Telugu language   (PASSED)
  /// Language has code => [LanguageCode.te]
  /// Old => RegExp(r'[\u0C00-\u0C7F\s]');

  static final RegExp teRegExp = RegExp(
    r'(?=.*[\u0C00-\u0C7F])' // MUST have at least 1 Telugu Unicode char
    r'|'
    r'[ాిీుూృౄెేైొోౌ్]' // Common vowel signs/diacritics
    r'|'
    r'\b(నేను|నువ్వు|అతను|ఆమె|మేము|వారు|ఇది|అది|బియ్యం|కోడి|ఆఫీసు|మాల్|మరియు|లేదా|కానీ|లో|కు|నుండి|కోసం|తో|కాదు|అవును|లేదు|ఉంది|చేయగలిగి|కావాలి|వెళ్ళు|తినడానికి|మీరు|పెద్ద|చిన్న)\b',
    caseSensitive: false,
    unicode: true,
  );

  /// RegExp for the Vietnamese language
  /// Language has code => [LanguageCode.vi]
  /// Old => r'[a-zA-ZàáạảãâầấậẩẫăằắặẳẵèéẹẻẽêềếệểễìíịỉĩòóọỏõôồốộổỗơờớợởỡùúụủũưừứựửữỳýỵỷỹđĐ\s]

  static final RegExp viRegExp = RegExp(
    r'(?:'
    // 1. STRICT VIETNAMESE VALIDATION (NO FRENCH)
    r'(?=.*(?:'
    r'[đĐ]' // Unique Vietnamese letters
    r'|'
    r'[ẮẰẲẴẶẤẦẨẪẬẾỀỂỄỆỐỒỔỖỘỚỜỞỠỢỨỪỬỮỰ]' // Vietnamese-only composite chars
    r'|'
    r'[ăâêôơư]' // Vietnamese base letters (no French equivalents)
    r'))'

    // 2. COMMON VIETNAMESE WORDS (INCLUDES "huyền")
    r'|'
    r'\b(tôi|bạn|huyền|anh|chị|em|chúng\s*tôi|họ|cái|này|nọ|gạo|gà|phở|văn\s*phòng|trung\s*tâm|mua\s*sắm|và|hoặc|nhưng|trong|đến|từ|cho|là|với|không|có|phải|được|rất|muốn|đi|ăn|uống|ở|của|cũng|to|nhỏ|xe\s*máy)\b'

    // 3. VIETNAMESE DIACRITICS (SAFER SUBSET)
    r'|'
    r'[ằắặẳẵầẩẫậằắặẳẵờởỡợừửữự]'
    r')',
    caseSensitive: false,
    unicode: true,
  );

  /// RegExp for the Turkish language
  /// Language has code => [LanguageCode.tr]

  static final RegExp trRegExp = RegExp(
    r'(?:'
    // 1. REQUIRED: Unique Turkish characters (no overlap with French/Portuguese/etc.)
    r'(?=.*[çÇğĞıİöÖşŞüÜ])' // Must have at least 1 unique Turkish char

    // 2. Turkish-specific lowercase/uppercase pairs (case-insensitive)
    r'|'
    r'[çÇğĞıİöÖşŞüÜ]'

    // 3. Core Turkish words (no cross-language collisions)
    r'|'
    r'\b(ben|sen|o|biz|siz|onlar|bu|şu|araba|ev|okul|kitap|kedi|köpek|ve|veya|ama|içinde|üzerinde|ile|değil|evet|hayır|var|yok|gitmek|gelmek|yemek|içmek|çok|az|büyük|küçük)\b'
    r')',
    caseSensitive: false,
    unicode: true,
  );

  /// RegExp for the Italian language         (PASSED)
  /// Language has code => [LanguageCode.it]

  static final RegExp itRegExp = RegExp(
    r'\b(cosa|sul|perché|più|già|ecco|allora|magari|proprio|qualcosa|nessuno|qualcuno|ciò|sopra|sotto|destra|sinistra|qualunque|oltretutto|neanche|nemmeno|oppure|ossia|purtroppo|siccome|talvolta|tuttavia|ugualmente|altrimenti|infatti|perfino|pressoché|solamente|specialmente|soprattutto|tranne|tramite|mediante|nonostante|dopodiché|finché|affinché|poiché|sicché|cosicché|benché)\b'
    r'\b('

    // NEW UNIQUE WORDS FROM YOUR TEXT (ITALIAN-ONLY)
    r'|gonnellina|nottata|tende|fragranti|maionese|piace|puntualissime|poltroncine|sgargianti|sobria|tuttavia|affaccia|vegetariana|'
    r'bellissimo|spaziosa|comprano|preparata|sottolineato|gustare|dispiacciono|eccezione|protagonista|prenotati|generosa|accomodano|'
    r'suscita|sospiro|idolo|indiscusso|pubblicità|spettacolo|caramelle|gassata|pop-corn|centrala|orizzonte|serene|condivido|del|della|degli|nelle|sul|coll|dall|all|agl|'
    r'tratteggiare|somiglianti|associa|rigorosamente|litiga|ritrae|treccine|due|sul|perché|ecco|allora|magari|proprio|qualcosa|ciò|gonnellina|nottata|maionese|poltroncine'
    r'|'
    r'\b([a-z]+(mente|zione|tà|té|trice))\b'
    r')\b',
    caseSensitive: false,
  );

  /// RegExp for the Korean language
  /// Language has code => [LanguageCode.ko]

  static final RegExp koRegExp = RegExp(
    r'[\uAC00-\uD7AF\u1100-\u11FF\u3130-\u318F\s]'
    r'(?:'
    // 1. REQUIRED: Hangul Unicode block (no Chinese/Japanese overlap)
    r'(?=.*[가-힣])'
    r'(?:'
    // 1. REQUIRED: Hangul Unicode blocks
    r'[\uAC00-\uD7A3]+' // Modern syllables (가-힣)
    r'|'
    r'[\u3131-\u3163]{2,}' // Jamo sequences (2+ characters)

    // 2. Most common uniquely Korean words
    r'|'
    r'\b(네|아니요|안녕|감사합니다|미안합니다|잘 지냈어요|사랑해|예시|먹다|가다|오다|보다|하다|이다|입니다|니다|지만|에서|으로|의|을|를|이|가|은|는|과|와)\b'

    // 3. Korean-only particles/endings
    r'|'
    r'|(예시)|인생에|그러므로|싶이|무엇을|소리다.이것은|든|구하지|풀밭(잔디밭)에|그리하였는가?|인도하겠다는|이상,|피고|방황하였으며,|노래하며|가치를|힘있다.|이상의|같지|갑|이상|능히|따뜻한|사막이다.|오아이스도|못하다|수|때까지|부패를|그들에게|있으랴?|굳세게|할지라도|때에,|고행을|것은|놀이|아니다.|창공에|우는|그들은|밥을|이상|있음으로써|인간은|인간의|듣는다'
    r'|'
    r'(요|세요|니까|서|고|지만|거나|면|다면|라서|이다|하다|되다)\b'
    r')'

    // 2. Korean-exclusive particles (no other language uses these)
    r'|'
    r'(은|는|이|가|을|를|의|에|에서|으로|와|과|지만|이고|라서|이라서|이며|입니다|니다|하다|되다|이다)\b'

    // 3. Unique Korean words (no Chinese/Japanese cognates)
    r'|\b(아이고|헐|대박|짱|꿀잼|ㅋㅋ|ㅎㅎ|ㅠㅠ)\b'
    r'\b(김치|떡볶이|아이구|아이고|어머나|정말|진짜|너무|참치|삼겹살|막걸리|소주|한글|오빠|언니|누나|형|동생|아줌마|아저씨|사랑해|미안해|고마워|알겠어|몰라)\b'
    r')',
    caseSensitive: false,
    unicode: true,
  );

  /// RegExp for the Farsi language           (Removed and combined with Arabic)
  /// Language has code => [LanguageCode.fa]

  static final RegExp faRegExp = RegExp(
    r'^(?!.*[ةؤأإءڨڭۻۺ])' // FIRST: Block Arabic letters
    r'(?:'
    // === 1. FARSI-EXCLUSIVE LETTERS ===
    r'[پچگژکآ]' // Persian letters Arabic lacks

    // === 2. UNIQUELY FARSI WORDS (NO ARABIC EQUIVALENT) ===
    r'|'
    r'\b('
    r'بستنی|پرتقال|گرم|سرد|خواهر|برادر|گربه|سگ|' // Nouns
    r'می‌\w+|نمی‌\w+|خواهم|خواهی|خواهد|' // Verb structures
    r'ولی|همین|دیگه|چرا|چطور|چنده|کی|کجا' // Common spoken words
    r')\b'

    // === 3. FARSI NUMBERS/PUNCTUATION ===
    r')',
    caseSensitive: false,
    unicode: true,
  );

  /// RegExp for the Tagalog language
  /// Language has code => [LanguageCode.tl]

  static final RegExp tlRegExp = RegExp(r'[a-zA-ZñÑ\s]');

  /// RegExp for the Tamil language
  /// Language has code => [LanguageCode.ta]

  static final RegExp taRegExp = RegExp(r'[\u0B80-\u0BFF\s]');

  /// RegExp for the Thai language             (PASSED)
  /// Language has code => [LanguageCode.th]

  static final RegExp thRegExp = RegExp(
    r'(?:'
    // 1. Thai vowels/tones (เ-ไ, ั ิ ี ึ ื)
    r'[\u0E40-\u0E44]' // Leading vowels (เ, แ, โ, ไ, ใ)
    r'|'
    r'[\u0E48-\u0E4C]' // Tone marks (่, ้, ๊, ๋, ์)

    // 2. Thai consonant + vowel combinations
    r'|'
    r'[\u0E01-\u0E2E][\u0E34-\u0E3A]' // Consonant + trailing vowel (ิ, ี, ึ, ื)

    // 3. Full Thai character range (fallback)
    r'|'
    r'[\u0E00-\u0E7F]' // Covers entire Thai Unicode block

    r')',
    caseSensitive: false,
    unicode: true,
  );

  /// RegExp for the Afrikaans language
  /// Language has code => [LanguageCode.af]
  static final RegExp afRegExp =
      RegExp(r"[a-zA-ZáäèéêëïíîôöúûüýÁÄÈÉÊËÏÍÎÔÖÚÛÜÝ\s\'-]");

  /// RegExp for the Azeri language
  /// Language has code => [LanguageCode.az]

  static final RegExp azRegExp = RegExp(r'[a-zA-ZçğıöşüÇĞİÖŞÜ\s]');

  /// RegExp for the Belarusian language
  /// Language has code => [LanguageCode.be]

  static final RegExp beRegExp = RegExp(r'[\u0400-\u04FF\s]');

  /// RegExp for the Bulgarian language
  /// Language has code => [LanguageCode.bg]

  static final RegExp bgRegExp = RegExp(r'[\u0400-\u04FF\s]');

  /// RegExp for the Bosnian language
  /// Language has code => [LanguageCode.bs]

  static final RegExp bsRegExp = RegExp(r'[a-zA-ZčćžšđČĆŽŠĐ\s]');

  /// RegExp for the Catalan language
  /// Language has code => [LanguageCode.ca]

  static final RegExp caRegExp = RegExp(r'[a-zA-ZàèéíïòóúüçÀÈÉÍÏÒÓÚÜÇ\s]');

  /// RegExp for the Czech language
  /// Language has code => [LanguageCode.cs]

  static final RegExp csRegExp =
      RegExp(r'[a-zA-ZáčďéěíňóřšťúůýžÁČĎÉĚÍŇÓŘŠŤÚŮÝŽ\s]');

  /// RegExp for the Welsh language
  /// Language has code => [LanguageCode.cy]

  static final RegExp cyRegExp = RegExp(r'[a-zA-Zŵŷâêîôûŵŷáéíóúàèìòù\s]');

  /// RegExp for the Danish language
  /// Language has code => [LanguageCode.da]

  static final RegExp daRegExp = RegExp(r'[a-zA-ZæøåÆØÅ\s]');

  /// RegExp for the Divehi language
  /// Language has code => [LanguageCode.dv]

  static final RegExp dvRegExp = RegExp(r'[\u0780-\u07BF\s]');

  /// RegExp for the Greek language
  /// Language has code => [LanguageCode.el]

  static final RegExp elRegExp = RegExp(r'[\u0370-\u03FF\s]');

  /// RegExp for the Esperanto language
  /// Language has code => [LanguageCode.eo]

  static final RegExp eoRegExp = RegExp(r'[a-zA-ZĉĝĥĵŝŭĈĜĤĴŜŬ\s]');

  /// RegExp for the Spanish language
  /// Language has code => [LanguageCode.es]

  /// RegExp for the Estonian language
  /// Language has code => [LanguageCode.et]

  static final RegExp etRegExp = RegExp(r'[a-zA-ZäöõüšžÄÖÕÜŠŽ\s]');

  /// RegExp for the Basque language
  /// Language has code => [LanguageCode.eu]

  static final RegExp euRegExp = RegExp(r'[a-zA-ZñÑáéíóúüÁÉÍÓÚÜ\s]');

  /// RegExp for the Finnish language
  /// Language has code => [LanguageCode.fi]

  static final RegExp fiRegExp = RegExp(r'[a-zA-ZäöåÄÖÅ\s]');

  /// RegExp for the Faroese language
  /// Language has code => [LanguageCode.fo]

  static final RegExp foRegExp = RegExp(r'[a-zA-ZáíóúýðæøåÁÍÓÚÝÐÆØÅ\s]');

  /// RegExp for the French language
  /// Language has code => [LanguageCode.fr]

  /// RegExp for the Galician language
  /// Language has code => [LanguageCode.gl]

  static final RegExp glRegExp = RegExp(r'[a-zA-ZáéíóúüñÁÉÍÓÚÜÑ\s]');

  /// RegExp for the Gujarati language
  /// Language has code => [LanguageCode.gu]

  static final RegExp guRegExp = RegExp(r'[\u0A80-\u0AFF\s]');

  /// RegExp for the Hebrew language
  /// Language has code => [LanguageCode.he]

  static final RegExp heRegExp = RegExp(r'[\u0590-\u05FF\s]');

  /// RegExp for the Croatian language
  /// Language has code => [LanguageCode.hr]

  static final RegExp hrRegExp = RegExp(r'[a-zA-ZčćžšđČĆŽŠĐ\s]');

  /// RegExp for the Hungarian language
  /// Language has code => [LanguageCode.hu]

  static final RegExp huRegExp = RegExp(r'[a-zA-ZáéíóöőúüűÁÉÍÓÖŐÚÜŰ\s]');

  /// RegExp for the Armenian language
  /// Language has code => [LanguageCode.hy]

  static final RegExp hyRegExp = RegExp(r'[\u0530-\u058F\uFB13-\uFB17\s]');

  /// RegExp for the Georgian language
  /// Language has code => [LanguageCode.ka]

  static final RegExp kaRegExp = RegExp(r'[\u10A0-\u10FF\s]');

  /// RegExp for the Kazakh language
  /// Language has code => [LanguageCode.kk]

  static final RegExp kkRegExp = RegExp(r'[\u0400-\u04FF\s]');

  /// RegExp for the Kannada language
  /// Language has code => [LanguageCode.kn]

  static final RegExp knRegExp = RegExp(r'[\u0C80-\u0CFF\s]');

  /// RegExp for the Konkani language
  /// Language has code => [LanguageCode.kok]

  static final RegExp kokRegExp = RegExp(r'[\u0900-\u097F\u1CD0-\u1CFF\s]');

  /// RegExp for the Kyrgyz language
  /// Language has code => [LanguageCode.ky]

  static final RegExp kyRegExp = RegExp(r'[\u0400-\u04FF\s]');

  /// RegExp for the Lithuanian language
  /// Language has code => [LanguageCode.lt]

  static final RegExp ltRegExp = RegExp(r'[a-zA-ZąčęėįšųūžĄČĘĖĮŠŲŪŽ\s]');

  /// RegExp for the Latvian language
  /// Language has code => [LanguageCode.lv]

  static final RegExp lvRegExp =
      RegExp(r'[a-zA-ZāčēģīķļņōŗšūžĀČĒĢĪĶĻŅŌŖŠŪŽ\s]');

  /// RegExp for the Maori language
  /// Language has code => [LanguageCode.mi]

  static final RegExp miRegExp = RegExp(r'[a-zA-ZāēīōūĀĒĪŌŪ\s]');

  /// RegExp for the Language language/ Macedonian
  /// Language has code => [LanguageCode.mk]

  static final RegExp mkRegExp = RegExp(r'[a-zA-ZāēīōūĀĒĪŌŪ\s]');

  /// RegExp for the Mongolian language
  /// Language has code => [LanguageCode.mn]

  static final RegExp mnRegExp = RegExp(r'[\u0400-\u04FF\u1800-\u18AF\s]');

  /// RegExp for the Malay language
  /// Language has code => [LanguageCode.ms]

  static final RegExp msRegExp = RegExp(
      r'\b(dan|atau|ini|itu|adalah|untuk|dengan|pada|yang|dari|akan|sudah|belum|tidak|juga|saya|kamu|dia|mereka|kita)\b');

  /// RegExp for the Maltese language
  /// Language has code => [LanguageCode.mt]

  static final RegExp mtRegExp = RegExp(r'[a-zA-ZċġħżĊĠĦŻ\s]');

  /// RegExp for the Norwegian language
  /// Language has code => [LanguageCode.nb]

  static final RegExp nbRegExp = RegExp(r'[a-zA-ZæøåÆØÅ\s]');

  /// RegExp for the Dutch language
  /// Language has code => [LanguageCode.nl]

  static final RegExp nlRegExp = RegExp(r'[a-zA-ZéèëïÉÈËÏ\s]');

  /// RegExp for the Norwegian language
  /// Language has code => [LanguageCode.nn]

  static final RegExp nnRegExp = RegExp(r'[a-zA-ZæøåÆØÅéèêóòôäëïöü\s]');

  /// RegExp for the Language language/ Sotho
  /// Language has code => [LanguageCode.ns]

  static final RegExp nsRegExp = RegExp(r'[a-zA-ZêêôûšŠŝŜñÑ\s]');

  /// RegExp for the Punjabi language
  /// Language has code => [LanguageCode.pa]

  static final RegExp paRegExp = RegExp(r'[\u0A00-\u0A7F\u0A80-\u0A8F\s]');

  /// RegExp for the Polish language
  /// Language has code => [LanguageCode.pl]

  static final RegExp plRegExp = RegExp(r'[a-zA-ZąćęłńóśźżĄĆĘŁŃÓŚŹŻ\s]');

  /// RegExp for the Pashto language
  /// Language has code => [LanguageCode.ps]

  static final RegExp psRegExp = RegExp(r'[\u0600-\u06FF\s]');

  /// RegExp for the Quechua language
  /// Language has code => [LanguageCode.qu]

  static final RegExp quRegExp = RegExp(r'[a-zA-ZáéíóúñÑ\s]');

  /// RegExp for the Romanian language
  /// Language has code => [LanguageCode.ro]

  static final RegExp roRegExp = RegExp(r'[a-zA-ZăâîșțĂÂÎȘȚ\s]');

  /// RegExp for the Sanskrit language
  /// Language has code => [LanguageCode.sa]

  static final RegExp saRegExp = RegExp(r'[\u0900-\u097F\s]');

  /// RegExp for the Sami language
  /// Language has code => [LanguageCode.se]

  static final RegExp seRegExp = RegExp(r'[a-zA-ZáčđŋšŧžÁČĐŊŠŦŽ\s]');

  /// RegExp for the Slovak language
  /// Language has code => [LanguageCode.sk]

  static final RegExp skRegExp =
      RegExp(r'[a-zA-ZáäčďéíĺľňóôŕšťúýžÁÄČĎÉÍĹĽŇÓÔŔŠŤÚÝŽ\s]');

  /// RegExp for the Slovenian language
  /// Language has code => [LanguageCode.sl]

  static final RegExp slRegExp = RegExp(r'[a-zA-ZčšžČŠŽ\s]');

  /// RegExp for the Albanian language
  /// Language has code => [LanguageCode.sq]

  static final RegExp sqRegExp = RegExp(r'[a-zA-ZçÇëË\s]');

  /// RegExp for the Serbian language
  /// Language has code => [LanguageCode.sr]

  static final RegExp srRegExp = RegExp(r'[\u0400-\u04FF\s]');

  /// RegExp for the Swedish language
  /// Language has code => [LanguageCode.sv]

  static final RegExp svRegExp = RegExp(r'[a-zA-ZåäöÅÄÖ\s]');

  /// RegExp for the Syriac language
  /// Language has code => [LanguageCode.syr]

  static final RegExp syrRegExp = RegExp(r'[\u0700-\u074F\s]');

  /// RegExp for the Tswana language
  /// Language has code => [LanguageCode.tn]

  static final RegExp tnRegExp = RegExp(
      r'\b(le|ka|ga|go|mo|ke|re|ba|se|fa|tsa|nna|wena|ene|rona|lona|bone)\b');

  /// RegExp for the Tatar language
  /// Language has code => [LanguageCode.tt]

  static final RegExp ttRegExp = RegExp(r'[\u0400-\u04FF\s]');

  /// RegExp for the Tsonga language
  /// Language has code => [LanguageCode.ts]

  static final RegExp tsRegExp = RegExp(
      r"\b(na|ya|wa|xa|hi|ku|mi|va|ti|ri|mina|wena|yena|hina|n\'wina|vona)\b");

  /// RegExp for the Ukrainian language
  /// Language has code => [LanguageCode.uk]

  static final RegExp ukRegExp = RegExp(r'[\u0400-\u04FF\u0500-\u052F\s]');

  /// RegExp for the Uzbek language
  /// Language has code => [LanguageCode.uz]

  static final RegExp uzRegExp = RegExp(r'[a-zA-ZʻʼʻʼáéíóúÁÉÍÓÚ\s]');

  /// RegExp for the Xhosa language
  /// Language has code => [LanguageCode.xh]

  static final RegExp xhRegExp = RegExp(
      r'\b(ngo|nge|ku|e|u|i|a|o|mna|wena|yena|thina|nina|bona|ukuba|xa|kuba)\b');

  /// RegExp for the Zulu language
  /// Language has code => [LanguageCode.zu]

  static final RegExp zuRegExp = RegExp(
      r'\b(nge|ku|e|u|i|a|o|mina|wena|yena|thina|nina|bona|uma|ukuthi|lapho|khona)\b');
}
