part of starlight_utils;

///For ThemeData
extension StarlightTheme on BuildContext {
  ///The data from the closest [Theme] instance that encloses the given context.
  /// If the given context is enclosed in a [Localizations] widget providing [MaterialLocalizations], the returned data is localized according to the nearest available [MaterialLocalizations].
  /// Defaults to [ThemeData.fallback] if there is no [Theme] in the given build context.
  ThemeData get themeData => Theme.of(this);
}
