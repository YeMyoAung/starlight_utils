part of starlight_utils;

///For MediaQuery
extension StarlightMediaQuery on BuildContext {
  ///device `width` (The horizontal extent of this size).
  double get width => MediaQuery.of(this).size.width;

  ///device `hegith` (The vertical extent of this size).
  double get height => MediaQuery.of(this).size.height;

  /// Creates a copy of this media query data but with the given [viewInsets]
  /// replaced with zero.
  ///
  /// The `removeLeft`, `removeTop`, `removeRight`, and `removeBottom` arguments
  /// must not be null. If all four are false (the default) then this
  /// [MediaQueryData] is returned unmodified.
  ///
  /// See also:
  ///
  ///  * [MediaQuery.removeViewInsets], which uses this method to remove
  ///    [viewInsets] from the ambient [MediaQuery].
  ///  * [removePadding], the same thing but for [padding].
  ///  * [removeViewPadding], the same thing but for [viewPadding].
  MediaQueryData removeViewInsets({
    bool removeLeft = false,
    bool removeTop = false,
    bool removeRight = false,
    bool removeBottom = false,
  }) =>
      MediaQuery.of(this).removeViewInsets(
        removeLeft: removeLeft,
        removeTop: removeTop,
        removeBottom: removeBottom,
        removeRight: removeRight,
      );

  /// Creates a copy of this media query data but with the given [viewPadding]
  /// replaced with zero.
  ///
  /// The `removeLeft`, `removeTop`, `removeRight`, and `removeBottom` arguments
  /// must not be null. If all four are false (the default) then this
  /// [MediaQueryData] is returned unmodified.
  ///
  /// See also:
  ///
  ///  * [MediaQuery.removeViewPadding], which uses this method to remove
  ///    [viewPadding] from the ambient [MediaQuery].
  ///  * [removePadding], the same thing but for [padding].
  ///  * [removeViewInsets], the same thing but for [viewInsets].
  MediaQueryData removeViewPadding({
    bool removeLeft = false,
    bool removeTop = false,
    bool removeRight = false,
    bool removeBottom = false,
  }) =>
      MediaQuery.of(this).removeViewPadding(
        removeLeft: removeLeft,
        removeTop: removeTop,
        removeBottom: removeBottom,
        removeRight: removeRight,
      );

  /// Creates a copy of this media query data but with the given [padding]s
  /// replaced with zero.
  ///
  /// The `removeLeft`, `removeTop`, `removeRight`, and `removeBottom` arguments
  /// must not be null. If all four are false (the default) then this
  /// [MediaQueryData] is returned unmodified.
  ///
  /// See also:
  ///
  ///  * [MediaQuery.removePadding], which uses this method to remove [padding]
  ///    from the ambient [MediaQuery].
  ///  * [SafeArea], which both removes the padding from the [MediaQuery] and
  ///    adds a [Padding] widget.
  ///  * [removeViewInsets], the same thing but for [viewInsets].
  ///  * [removeViewPadding], the same thing but for [viewPadding].
  MediaQueryData removePadding({
    bool removeLeft = false,
    bool removeTop = false,
    bool removeRight = false,
    bool removeBottom = false,
  }) =>
      MediaQuery.of(this).removePadding(
        removeLeft: removeLeft,
        removeTop: removeTop,
        removeBottom: removeBottom,
        removeRight: removeRight,
      );

  /// The current brightness mode of the host platform.
  ///
  /// For example, starting in Android Pie, battery saver mode asks all apps to
  /// render in a "dark mode".
  ///
  /// Not all platforms necessarily support a concept of brightness mode. Those
  /// platforms will report [Brightness.light] in this property.
  Brightness get platformBrightness => MediaQuery.of(this).platformBrightness;

  /// The parts of the display that are partially obscured by system UI,
  /// typically by the hardware display "notches" or the system status bar.
  ///
  /// If you consumed this padding (e.g. by building a widget that envelops or
  /// accounts for this padding in its layout in such a way that children are
  /// no longer exposed to this padding), you should remove this padding
  /// for subsequent descendants in the widget tree by inserting a new
  /// [MediaQuery] widget using the [MediaQuery.removePadding] factory.
  ///
  /// Padding is derived from the values of [viewInsets] and [viewPadding].
  ///
  /// See also:
  ///
  ///  * [ui.window], which provides some additional detail about this
  ///    property and how it relates to [viewInsets] and [viewPadding].
  ///  * [SafeArea], a widget that consumes this padding with a [Padding] widget
  ///    and automatically removes it from the [MediaQuery] for its child.
  EdgeInsets get padding => MediaQuery.of(this).padding;

  ///The orientation of the media (e.g., whether the device is in landscape or portrait mode).
  Orientation get orientation => MediaQuery.of(this).orientation;

  /// Whether the device is inverting the colors of the platform.
  ///
  /// This flag is currently only updated on iOS devices.
  ///
  /// See also:
  ///
  ///  * [dart:ui.PlatformDispatcher.accessibilityFeatures], where the setting
  ///    originates.
  bool get invertColors => MediaQuery.of(this).invertColors;

  /// Whether the user requested a high contrast between foreground and background
  /// content on iOS, via Settings -> Accessibility -> Increase Contrast.
  ///
  /// This flag is currently only updated on iOS devices that are running iOS 13
  /// or above.
  bool get highContrast => MediaQuery.of(this).highContrast;

  /// The gesture settings for the view this media query is derived from.
  ///
  /// This contains platform specific configuration for gesture behavior,
  /// such as touch slop. These settings should be favored for configuring
  /// gesture behavior over the framework constants.
  DeviceGestureSettings get gestureSettings =>
      MediaQuery.of(this).gestureSettings;

  /// Whether the platform is requesting that text be drawn with a bold font
  /// weight.
  ///
  /// See also:
  ///
  ///  * [dart:ui.PlatformDispatcher.accessibilityFeatures], where the setting
  ///    originates.
  bool get boldText => MediaQuery.of(this).boldText;

  /// Whether to use 24-hour format when formatting time.
  ///
  /// The behavior of this flag is different across platforms:
  ///
  /// - On Android this flag is reported directly from the user settings called
  ///   "Use 24-hour format". It applies to any locale used by the application,
  ///   whether it is the system-wide locale, or the custom locale set by the
  ///   application.
  /// - On iOS this flag is set to true when the user setting called "24-Hour
  ///   Time" is set or the system-wide locale's default uses 24-hour
  ///   formatting.
  bool get alwaysUse24HourFormat => MediaQuery.of(this).alwaysUse24HourFormat;

  /// Whether the user is using an accessibility service like TalkBack or
  /// VoiceOver to interact with the application.
  ///
  /// When this setting is true, features such as timeouts should be disabled or
  /// have minimum durations increased.
  ///
  /// See also:
  ///
  ///  * [dart:ui.PlatformDispatcher.accessibilityFeatures], where the setting originates.
  bool get accessibleNavigation => MediaQuery.of(this).accessibleNavigation;

  /// The number of device pixels for each logical pixel. This number might not
  /// be a power of two. Indeed, it might not even be an integer. For example,
  /// the Nexus 6 has a device pixel ratio of 3.5.
  double get devicePixelRatio => MediaQuery.of(this).devicePixelRatio;

  /// The number of font pixels for each logical pixel.
  ///
  /// For example, if the text scale factor is 1.5, text will be 50% larger than
  /// the specified font size.
  ///
  /// See also:
  ///
  ///  * [MediaQuery.textScaleFactorOf], a convenience method which returns the
  ///    textScaleFactor defined for a [BuildContext].
  double get textScaleFactor => MediaQuery.of(this).textScaleFactor;

  ///top safe area (The offset from the `top`).
  double get topSafe => MediaQuery.of(this).viewInsets.top;

  ///right safe area (The offset from the `right`).
  double get rightSafe => MediaQuery.of(this).viewInsets.right;

  ///bottom safe area (The offset from the `bottom`).
  double get bottomSafe => MediaQuery.of(this).viewInsets.bottom;

  ///left safe area (The offset from the `left`).
  double get leftSafe => MediaQuery.of(this).viewInsets.left;
}
