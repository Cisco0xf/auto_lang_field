# AutoLangField

**Smart language-detecting text field with dynamic RTL/LTR styling**

*Detects input language in real-time using regex patterns and applies language-specific text properties automatically.*

## Installation

Add to your `pubspec.yaml`:

```yaml
dependencies:  
  auto_lang_field: ^1.0.0 # use the version you need
```
Then, run:

```bash
flutter pub get
```

## How It Works

### Smart Language Detection & Styling

**`AutoLangField`** transforms any standard `TextField` into a **language-aware input field** with dynamic styling. Here's the magic behind it:
1. **Setup**
   
   Provide your supported languages:

   ```dart
   supportedLanguages: [LanguageCode.en, LanguageCode.ar, LanguageCode.es]  
   ```
2. **Detection**
   
   The Widget:
     - Listen to the input inside the field
     - Matches against `RegExp` patterns defined in each `LanguageData` object.
     - Detects the language in ***real-time*** (e.g., "سلام" → Arabic).
3. **Styling**
   
   Automatically applies **language-specific** properties:

   ```dart
   textPropertiesPerLanguage: {
    LanguageCode.ar: TextProperties(
      fieldDirection: TextDirection.rtl,  // RTL for Arabic
      style: TextStyle(fontFamily: 'NotoNaskh'),
    ),
   }
   ```

## Features:

* Regex-powered matching for accurate input language identification
* Offline-first (no network calls) with customizable patterns
* Supports +80 (Arabic, Hebrew, English, etc.) via LanguageData
* Automatic RTL/LTR switching (whole-field directionality)
* 100% Widget-based (no platform channels)
* Supports all standard `TextField` properties

## Minmal Example:

```dart
AutoLangField(
  supportedLanguages: [LanguageCode.en, LanguageCode.ar],
  textPropertiesPerLanguage: {
    LanguageCode.en: TextProperties(
      style: TextStyle(color: Colors.blue),
    ),
    LanguageCode.ar: TextProperties(
      fieldDirection: TextDirection.rtl,  // Flips entire field
      style: TextStyle(color: Colors.green),
    ),
  },
)
```

## Core Properties:

| Property                      |    Role                                                                                                                   |
|:------------------------------|:--------------------------------------------------------------------------------------------------------------------------|
| `onLanguageDetected`          | Callback that is triggered whenever the text changes and the detected language is updated (same as `onChange` but with `detectedLanguage`).|
| `supportedLanguages`          | The list of language codes that `AutoLangField` support, it **CANNOT** be empty, (least one `LanguageCode`)               |
| `textPropertiesPerLanguage`   | Contains the `TextProperties` for each `LanguageCode`, the algorithm fill the missed `LanguageCode` with `TextProperties` |

## Example :

```dart
AutoLangField(
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

```

## Screenshots for SOME examples:

> **`fieldDirection` changes the direction of the `AutoLangField` in the Arabic language**

| Arabic Language                             |  English Language                                  |
|---------------------------------------------|----------------------------------------------------|
| ![ArabicLanguage](https://raw.githubusercontent.com/Cisco0xf/auto_lang_field/main/screenshots/ar.jpg) | ![EnglishLanguage](https://raw.githubusercontent.com/Cisco0xf/auto_lang_field/main/screenshots/en.jpg) |


| Hindi Language                              |  Russian Language                                 |
|---------------------------------------------|----------------------------------------------------|
| ![HindiLanguage](https://raw.githubusercontent.com/Cisco0xf/auto_lang_field/main/screenshots/hi.jpg) | ![RussianLanguage](https://raw.githubusercontent.com/Cisco0xf/auto_lang_field/main/screenshots/ru.jpg) |

| Thai Language Language                      |  Chinees Language                                  |
|---------------------------------------------|----------------------------------------------------|
| ![ThaiLanguage](https://raw.githubusercontent.com/Cisco0xf/auto_lang_field/main/screenshots/th.jpg) | ![ChinesLanguage](https://raw.githubusercontent.com/Cisco0xf/auto_lang_field/main/screenshots/zh.jpg) |

## Language Detection Considerations:

This package uses RegExp-based detection, which may face limitations with some languages:

- Arabic (ar) / Persian (fa)
- English (en) / Afrikaans (af)
- Japanese (ja) / Korean (ko) / Chinese (zh)

> The first 21 languages in languages_regexp.dart have unique regex patterns to minimize false positives. Avoid simultaneously enabling languages with overlapping character sets.

### Customization Guide:

1. Override Default Regex (Give it a custom `Map`):
   ```dart
   // Extend LanguageData with custom patterns
    final Map<LanguageCode, LanguageData> customLanguages = {
      LanguageCode.fa: LanguageData(
        langRegExp: RegExp(r'[\u0600-\u06FF\u0750-\u077F\u08A0-\u08FF]+'), // Persian-specific
        langName: 'Farsi',
        // Add other arguments
      ),
      // Add other customizations...
    };
   ```
2. Use replace the old `Map` in the `_targetLanguages`:

   - **Before**:
     
     `final LanguageData singleTarget = languagesData[expectedCode]!;`

   - **After**:
     
     `final LanguageData singleTarget = customLanguages[expectedCode]!;`
     
#### Best Practices
- Prioritize one language per character set

- Disable similar languages when not needed

## License

**MIT © Mahmoud Nagy**