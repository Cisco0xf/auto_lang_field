import 'dart:ui';

import 'package:auto_lang_field/commons/texts.dart';
import 'package:auto_lang_field/constants/enums.dart';
import 'package:auto_lang_field/models/language_data.dart';
import 'package:auto_lang_field/models/languages.dart';
import 'package:auto_lang_field/models/text_properties.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// typedef for the [onLanguageDetected] callback
typedef LangCallback = void Function(String value, LanguageData? detectedLang);

/// typedef for any Map related to the [TextProperties] callback
typedef PropertiesPerLang = Map<LanguageCode, TextProperties>;

class AutoLangField extends StatefulWidget {
  AutoLangField({
    super.key,
    required this.supportedLanguages,
    this.textPropertiesPerLanguage,
    this.onLanguageDetected,
    this.controller,
    // Other TextField Properties
    this.decoration = const InputDecoration(),
    this.groupId = EditableText,
    this.focusNode,
    this.undoController,
    this.textInputAction,
    this.textCapitalization = TextCapitalization.none,
    this.strutStyle,
    this.textAlignVertical,
    this.textDirection,
    this.readOnly = false,
    this.showCursor,
    this.autofocus = false,
    this.obscuringCharacter = '•',
    this.obscureText = false,
    this.autocorrect = true,
    this.enableSuggestions = true,
    this.maxLines = 1,
    this.minLines,
    this.expands = false,
    this.maxLength,
    this.maxLengthEnforcement,
    this.onChanged,
    this.onEditingComplete,
    this.onSubmitted,
    this.onAppPrivateCommand,
    this.inputFormatters,
    this.enabled,
    this.ignorePointers,
    this.cursorWidth = 2.0,
    this.cursorHeight,
    this.cursorRadius,
    this.cursorOpacityAnimates,
    this.cursorColor,
    this.cursorErrorColor,
    this.keyboardAppearance,
    this.scrollPadding = const EdgeInsets.all(20.0),
    this.dragStartBehavior = DragStartBehavior.start,
    this.selectionHeightStyle = BoxHeightStyle.tight,
    this.selectionWidthStyle = BoxWidthStyle.tight,
    this.selectionControls,
    this.onTap,
    this.onTapAlwaysCalled = false,
    this.onTapOutside,
    this.mouseCursor,
    this.buildCounter,
    this.scrollController,
    this.scrollPhysics,
    this.autofillHints = const <String>[],
    this.contentInsertionConfiguration,
    this.clipBehavior = Clip.hardEdge,
    this.restorationId,
    this.scribbleEnabled = true,
    this.enableIMEPersonalizedLearning = true,
    this.canRequestFocus = true,
    this.spellCheckConfiguration,
    this.magnifierConfiguration,
    this.keyboardType = TextInputType.text,
    this.contextMenuBuilder,
    this.enableInteractiveSelection = false,
    this.smartDashesType,
    this.smartQuotesType,
    this.statesController,
  }) : assert(supportedLanguages.isNotEmpty, SUPPRTEDLANGUAGES);

  /// Callback that is triggered whenever the text changes and the detected language is updated.
  ///
  /// [value] is the current text in the field as in normal [TextField].
  /// [detectedLang] is the detected [LanguageData] based on the input, or null if detection fails.

  final LangCallback? onLanguageDetected;

  /// The list of language codes that [AutoLangField] support
  /// It CANNOT be empty, must contain at least one [LanguageCode]

  final List<LanguageCode> supportedLanguages;

  /// [Map] that contains the [TextProperties] for each [LanguageCode]
  /// The algorithm fill the missed [LanguageCode] with [TextProperties]
  final PropertiesPerLang? textPropertiesPerLanguage;

  /// Normal [TextField] properties
  //////////////////////////////////////////////////////////////////

  ///
  /// Controls the text being edited.
  ///
  /// If null, this widget will create its own [TextEditingController].
  final TextEditingController? controller;

  final InputDecoration? decoration;

  final TextMagnifierConfiguration? magnifierConfiguration;

  /// {@macro flutter.widgets.editableText.groupId}
  final Object groupId;

  /// Defines the keyboard focus for this widget.

  /// showing when it is tapped by calling [EditableTextState.requestKeyboard()].
  final FocusNode? focusNode;

  /// {@macro flutter.widgets.editableText.keyboardType}
  final TextInputType keyboardType;

  /// {@template flutter.widgets.TextField.textInputAction}
  /// The type of action button to use for the keyboard.
  ///
  /// Defaults to [TextInputAction.newline] if [keyboardType] is
  /// [TextInputType.multiline] and [TextInputAction.done] otherwise.
  /// {@endtemplate}
  final TextInputAction? textInputAction;

  /// {@macro flutter.widgets.editableText.textCapitalization}
  final TextCapitalization textCapitalization;

  /// {@macro flutter.widgets.editableText.strutStyle}
  final StrutStyle? strutStyle;

  /// {@macro flutter.material.InputDecorator.textAlignVertical}
  final TextAlignVertical? textAlignVertical;

  /// {@macro flutter.widgets.editableText.textDirection}
  final TextDirection? textDirection;

  /// {@macro flutter.widgets.editableText.autofocus}
  final bool autofocus;

  /// {@macro flutter.widgets.editableText.obscuringCharacter}
  final String obscuringCharacter;

  /// {@macro flutter.widgets.editableText.obscureText}
  final bool obscureText;

  /// {@macro flutter.widgets.editableText.autocorrect}
  final bool autocorrect;

  /// {@macro flutter.services.TextInputConfiguration.smartDashesType}
  final SmartDashesType? smartDashesType;

  /// {@macro flutter.services.TextInputConfiguration.smartQuotesType}
  final SmartQuotesType? smartQuotesType;

  /// {@macro flutter.services.TextInputConfiguration.enableSuggestions}
  final bool enableSuggestions;

  /// {@macro flutter.widgets.editableText.maxLines}
  ///  * [expands], which determines whether the field should fill the height of
  ///    its parent.
  final int? maxLines;

  /// {@macro flutter.widgets.editableText.minLines}
  ///  * [expands], which determines whether the field should fill the height of
  ///    its parent.
  final int? minLines;

  /// {@macro flutter.widgets.editableText.expands}
  final bool expands;

  /// {@macro flutter.widgets.editableText.readOnly}
  final bool readOnly;

  /// {@macro flutter.widgets.editableText.showCursor}
  final bool? showCursor;

  /// If [maxLength] is set to this value, only the "current input length"
  /// part of the character counter is shown.

  /// The maximum number of characters (Unicode grapheme clusters) to allow in
  /// the text field.
  ///

  ///
  /// {@macro flutter.services.lengthLimitingTextInputFormatter.maxLength}
  final int? maxLength;

  /// Determines how the [maxLength] limit should be enforced.
  ///
  /// {@macro flutter.services.textFormatter.effectiveMaxLengthEnforcement}
  ///
  /// {@macro flutter.services.textFormatter.maxLengthEnforcement}
  final MaxLengthEnforcement? maxLengthEnforcement;

  /// {@macro flutter.widgets.editableText.onChanged}
  ///
  /// See also:
  ///
  ///  * [inputFormatters], which are called before [onChanged]
  ///    runs and can validate and change ("format") the input value.
  ///  * [onEditingComplete], [onSubmitted]:
  ///    which are more specialized input change notifications.
  final ValueChanged<String>? onChanged;

  /// {@macro flutter.widgets.editableText.onEditingComplete}
  final VoidCallback? onEditingComplete;

  /// {@macro flutter.widgets.editableText.onSubmitted}
  ///
  /// See also:
  ///
  ///  * [TextInputAction.next] and [TextInputAction.previous], which
  ///    automatically shift the focus to the next/previous focusable item when
  ///    the user is done editing.
  final ValueChanged<String>? onSubmitted;

  /// {@macro flutter.widgets.editableText.onAppPrivateCommand}
  final AppPrivateCommandCallback? onAppPrivateCommand;

  /// {@macro flutter.widgets.editableText.inputFormatters}
  final List<TextInputFormatter>? inputFormatters;

  /// If false the text field is "disabled": it ignores taps and its
  /// [decoration] is rendered in grey.
  ///
  /// If non-null this property overrides the [decoration]'s
  /// [InputDecoration.enabled] property.
  final bool? enabled;

  /// Determines whether this widget ignores pointer events.
  ///
  /// Defaults to null, and when null, does nothing.
  final bool? ignorePointers;

  /// {@macro flutter.widgets.editableText.cursorWidth}
  final double cursorWidth;

  /// {@macro flutter.widgets.editableText.cursorHeight}
  final double? cursorHeight;

  /// {@macro flutter.widgets.editableText.cursorRadius}
  final Radius? cursorRadius;

  /// {@macro flutter.widgets.editableText.cursorOpacityAnimates}
  final bool? cursorOpacityAnimates;

  /// The color of the cursor.

  /// the value of [ColorScheme.primary] of [ThemeData.colorScheme].
  final Color? cursorColor;

  /// The color of the cursor when the [InputDecorator] is showing an error.
  ///
  /// If this is null it will default to [TextStyle.color] of
  /// [InputDecoration.errorStyle]. If that is null, it will use
  /// [ColorScheme.error] of [ThemeData.colorScheme].
  final Color? cursorErrorColor;

  /// The appearance of the keyboard.
  ///
  /// This setting is only honored on iOS devices.
  ///
  /// If unset, defaults to [ThemeData.brightness].
  final Brightness? keyboardAppearance;

  /// {@macro flutter.widgets.editableText.scrollPadding}
  final EdgeInsets scrollPadding;

  /// {@macro flutter.widgets.editableText.enableInteractiveSelection}
  final bool enableInteractiveSelection;

  /// {@macro flutter.widgets.editableText.selectionControls}
  final TextSelectionControls? selectionControls;

  /// {@macro flutter.widgets.scrollable.dragStartBehavior}
  final DragStartBehavior dragStartBehavior;

  /// {@macro flutter.widgets.editableText.selectionEnabled}
  bool get selectionEnabled => enableInteractiveSelection;

  /// If [onTapAlwaysCalled] is enabled, this will also be called for consecutive
  /// taps.
  final GestureTapCallback? onTap;

  /// Whether [onTap] should be called for every tap.
  ///
  /// Defaults to false, so [onTap] is only called for each distinct tap. When
  /// enabled, [onTap] is called for every tap including consecutive taps.
  final bool onTapAlwaysCalled;

  ///
  /// See also:
  ///
  ///  * [TapRegion] for how the region group is determined.
  final TapRegionCallback? onTapOutside;

  ///
  /// The [mouseCursor] is the only property of [TextField] that controls the
  /// appearance of the mouse pointer. All other properties related to "cursor"
  /// stand for the text cursor, which is usually a blinking vertical line at
  /// the editing position.
  final MouseCursor? mouseCursor;

  /// Callback that generates a custom [InputDecoration.counter] widget.

  /// If buildCounter returns null, then no counter and no Semantics widget will
  /// be created at all.
  final InputCounterWidgetBuilder? buildCounter;

  /// {@macro flutter.widgets.editableText.scrollPhysics}
  final ScrollPhysics? scrollPhysics;

  /// {@macro flutter.widgets.editableText.scrollController}
  final ScrollController? scrollController;

  /// {@macro flutter.widgets.editableText.autofillHints}
  /// {@macro flutter.services.AutofillConfiguration.autofillHints}
  final Iterable<String>? autofillHints;

  /// {@macro flutter.material.Material.clipBehavior}
  ///
  /// Defaults to [Clip.hardEdge].
  final Clip clipBehavior;

  /// Restoration ID to save and restore the state of the text field.

  final String? restorationId;

  /// {@macro flutter.widgets.editableText.scribbleEnabled}
  final bool scribbleEnabled;

  /// {@macro flutter.services.TextInputConfiguration.enableIMEPersonalizedLearning}
  final bool enableIMEPersonalizedLearning;

  /// {@macro flutter.widgets.editableText.contentInsertionConfiguration}
  final ContentInsertionConfiguration? contentInsertionConfiguration;

  /// If not provided, will build a default menu based on the platform.
  final EditableTextContextMenuBuilder? contextMenuBuilder;

  /// Determine whether this text field can request the primary focus.
  ///
  final bool canRequestFocus;

  /// {@macro flutter.widgets.undoHistory.controller}
  final UndoHistoryController? undoController;

  /// {@macro flutter.widgets.EditableText.spellCheckConfiguration}
  final SpellCheckConfiguration? spellCheckConfiguration;

  /// See [BoxHeightStyle] for details on available styles.
  final BoxHeightStyle selectionHeightStyle;

  /// Controls how wide the selection highlight boxes are computed to be.
  ///
  /// See [BoxWidthStyle] for details on available styles.
  final BoxWidthStyle selectionWidthStyle;

  final WidgetStatesController? statesController;

  @override
  State<AutoLangField> createState() => _AutoLangFieldState();
}

class _AutoLangFieldState extends State<AutoLangField> {
  /// Default value of the LanguageData [LanguageCode.en] english
  static final LanguageData _defaultLang = languagesData[LanguageCode.en]!;

  /// Value that will be updated and passed to the callback
  LanguageData _detectedLang = _defaultLang;

  /// Catch the LanguageData of [supportedLanguages] from the [languagesData] Map
  /// Using the List of Codes comming from the Widget
  ///
  /// Better than the OLD approtch with a Bit O => O(n^2) and inner loop
  /// New has O(n) with single loop and Map<[LanguageCode], [LanguageData]> data structure

  List<LanguageData> get _targetLanguage {
    List<LanguageData> targets = [];

    for (int l = 0; l < widget.supportedLanguages.length; l++) {
      final LanguageCode expectedCode = widget.supportedLanguages[l];

      final LanguageData singleTarget = languagesData[expectedCode]!;

      targets = <LanguageData>[...targets, singleTarget];

      // log("Current Targets : $targets");
    }

    return targets;
  }

  /// This method handles the missed [TextProperties] for the supportedLanguages
  /// If [LanguageCode] is not exist in the Map as Key it will add it and give it a [TextProperties]

  PropertiesPerLang get _fillMissedProperties {
    /// Map of the TextProperties for each LanguageCode from the widget
    /// If Map is null it will be empty and all the [LanguageCode] will be default
    final PropertiesPerLang mapProperties =
        widget.textPropertiesPerLanguage ?? {};

    /// Expected Languages that field supporte
    final List<LanguageCode> expectedLangs = widget.supportedLanguages;

    /// List of the key in the Map of the TExtProperties

    final List<LanguageCode> mapLangCodes =
        widget.textPropertiesPerLanguage?.keys.toList() ?? [];

    /// The length of the LanguageCode in the Map cannot be greater than The length of the supportedLanguage
    /// As the expected languages can have a null TextProperties
    /// But the languageTxtProperties can not have more than languageCode

    if (mapLangCodes.length > expectedLangs.length) {
      throw Exception(LENGTHERROR);
    }

    /// Chech if the user enter languageCode not exist in the supportedLanguages
    /// As it will not have a value in the Map

    final bool hasMatch = mapLangCodes.every(
      (LanguageCode code) {
        return expectedLangs.contains(code);
      },
    );

    if (!hasMatch) {
      throw Exception(UNSUPPORTEDLANGUAGECODE);
    }

    /// Map that will fill the missed LanguageCode TextProperties
    /// After check that the length of the textPropertiesPerLang
    /// Cannot be greather than the suppertedLanguages and,
    /// The LanguageCode KEY in the Map must be exist in the supportedLanguage
    /// supportedLanguage item could be use as key in the Map

    PropertiesPerLang filledProperties = <LanguageCode, TextProperties>{};

    for (int l = 0; l < expectedLangs.length; l++) {
      final code = expectedLangs[l];
      filledProperties[code] = mapProperties[code] ?? const TextProperties();
    }

    return filledProperties;
  }

  /// Listen to the user input and update the language
  /// From the [supportedLanguages] after catch the data [languagesData]

  void _handleChangeAndDetectLanguage(String value) {
    if (value.isEmpty) {
      return;
    }

    LanguageData starterLang;

    try {
      starterLang = _targetLanguage.firstWhere(
        (LanguageData lang) => lang == _detectedLang,
      );
    } catch (e) {
      starterLang = _defaultLang;
    }

    /// That mean that the language still the same
    /// And no need to update it, just change the value of the onchange

    if (starterLang.langRegExp.hasMatch(value)) {
      widget.onLanguageDetected?.call(value, _detectedLang);
      return;
    }

    /// From the List that catchs the `LanguageData` from the languageData Map
    /// Using the List of [LanguageCode] from the widget
    /// Check the matching LanguageRegExp and apply it to _detectedLangs

    for (int i = 0; i < _targetLanguage.length; i++) {
      final LanguageData targetLang = _targetLanguage[i];

      if (targetLang.langRegExp.hasMatch(value)) {
        _detectedLang = targetLang;

        break;
      }
    }

    widget.onLanguageDetected?.call(value, _detectedLang);
  }

  /// Handle the [TextProperties] for the [_detectedLang]

  PropertiesPerLang? get _languageProperties => _fillMissedProperties;

  TextProperties get _targetLangProperties {
    TextProperties defaultProp = const TextProperties();

    final bool hasProp = _languageProperties?.isNotEmpty ?? false;

    if (!hasProp) {
      return defaultProp;
    }

    final List<LanguageCode> propCodes = _languageProperties!.keys.toList();

    for (final langCode in propCodes) {
      if (_detectedLang.langCode == langCode) {
        defaultProp = _languageProperties![langCode]!;
      }
    }

    return defaultProp;
  }

  /// Needed properties to auto-change text

  /// [TextStyle] of the text in the field
  TextStyle? get _langTextStyle => _targetLangProperties.style;

  /// [TextAlign] iof the text in the field
  TextAlign get _langTextAlign => _targetLangProperties.textAlign;

  /// [TextDirection] of the [AutoLangField] widget
  TextDirection get _langTextDirection =>
      _targetLangProperties.fieldDirection ?? TextDirection.ltr;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: _langTextDirection,
      child: TextField(
        controller: widget.controller ?? TextEditingController(),

        /// Properties that will be controlable through the package
        onChanged: (value) {
          _handleChangeAndDetectLanguage(value);
        },
        style: _langTextStyle,
        textAlign: _langTextAlign,

        /// Normal TextField properties
        key: widget.key,
        decoration: widget.decoration,
        autocorrect: widget.autocorrect,
        autofillHints: widget.autofillHints,
        autofocus: widget.autofocus,
        buildCounter: widget.buildCounter,
        canRequestFocus: widget.canRequestFocus,
        clipBehavior: widget.clipBehavior,
        contentInsertionConfiguration: widget.contentInsertionConfiguration,
        contextMenuBuilder: widget.contextMenuBuilder,
        cursorColor: widget.cursorColor,
        cursorErrorColor: widget.cursorErrorColor,
        cursorHeight: widget.cursorHeight,
        cursorOpacityAnimates: widget.cursorOpacityAnimates,
        cursorRadius: widget.cursorRadius,
        cursorWidth: widget.cursorWidth,
        dragStartBehavior: widget.dragStartBehavior,
        enableIMEPersonalizedLearning: widget.enableIMEPersonalizedLearning,
        enableInteractiveSelection: widget.enableInteractiveSelection,
        enableSuggestions: widget.enableSuggestions,
        enabled: widget.enabled,
        expands: widget.expands,
        focusNode: widget.focusNode,
        groupId: widget.groupId,
        ignorePointers: widget.ignorePointers,
        inputFormatters: widget.inputFormatters,
        keyboardAppearance: widget.keyboardAppearance,
        keyboardType: widget.keyboardType,
        magnifierConfiguration: widget.magnifierConfiguration,
        maxLength: widget.maxLength,
        maxLengthEnforcement: widget.maxLengthEnforcement,
        maxLines: widget.maxLines,
        minLines: widget.minLines,
        mouseCursor: widget.mouseCursor,
        obscureText: widget.obscureText,
        obscuringCharacter: widget.obscuringCharacter,
        onAppPrivateCommand: widget.onAppPrivateCommand,
        onEditingComplete: widget.onEditingComplete,
        onSubmitted: widget.onSubmitted,
        onTap: widget.onTap,
        onTapAlwaysCalled: widget.onTapAlwaysCalled,
        onTapOutside: widget.onTapOutside,
        readOnly: widget.readOnly,
        restorationId: widget.restorationId,
        scribbleEnabled: widget.scribbleEnabled,
        scrollController: widget.scrollController,
        scrollPadding: widget.scrollPadding,
        scrollPhysics: widget.scrollPhysics,
        selectionControls: widget.selectionControls,
        selectionHeightStyle: widget.selectionHeightStyle,
        selectionWidthStyle: widget.selectionWidthStyle,
        showCursor: widget.showCursor,
        smartQuotesType: null,
        smartDashesType: null,
        spellCheckConfiguration: widget.spellCheckConfiguration,
        statesController: widget.statesController,
        strutStyle: widget.strutStyle,
        textAlignVertical: widget.textAlignVertical,
        textCapitalization: widget.textCapitalization,
        textDirection: widget.textDirection,
        textInputAction: widget.textInputAction,
        undoController: widget.undoController,
      ),
    );
  }
}
