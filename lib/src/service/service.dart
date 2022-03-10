part of starlight_utils;

class StarlightUtils {
  StarlightUtils._();

  ///[BuildContext] instance
  static final List<BuildContext> _context = [];

  ///To Use Context Less Service [StarlightUtils]
  ///
  /// Typical usage is as follows:
  ///
  /// ```dart
  /// class MyApp extends StatelessWidget {
  /// const MyApp({ Key? key }) : super(key: key);
  ///
  ///   @override
  ///   Widget build(BuildContext context) {
  ///     StarlightUtils.of(context);
  ///     return Container();
  ///   }
  /// }
  /// ```
  static void of(BuildContext context) {
    _context.add(context);
  }

  /**
   * Alert Dialog,Snackbar,BottomSheet Service
   */
  ///Navigaton Error
  static const _StarlightException _contextError = _StarlightException(
      error: "Context Error",
      message:
          """\nif you want to use context less service, you need to set context.

  Typical usage is as follows:
  
  class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);
 
    @override
    Widget build(BuildContext context) {
      StarlightUtils.of(context);
      return Container();
    }
  }
  """);

  /// `showAboutDialog` shortcut.
  ///
  /// Typical usage is as follows:
  ///
  /// ```dart
  /// StarlightUtils.aboutDialog();
  /// ```
  static void aboutDialog({
    String? applicationName,
    String? applicationVersion,
    Widget? applicationIcon,
    String? applicationLegalese,
    List<Widget>? children,
    bool useRootNavigator = true,
    RouteSettings? routeSettings,
  }) {
    try {
      showAboutDialog(
        context: _context.last,
        applicationName: applicationName,
        applicationVersion: applicationVersion,
        applicationIcon: applicationIcon,
        applicationLegalese: applicationLegalese,
        children: children,
        useRootNavigator: useRootNavigator,
        routeSettings: routeSettings,
      );
    } catch (e) {
      throw _contextError;
    }
  }

  /// `showDialog` shortcut.
  ///
  /// Typical usage is as follows:
  ///
  /// ```dart
  /// StarlightUtils.dialog(MyHome());
  /// ```
  static Future<T?> dialog<T>(
    Widget widget, {
    bool barrierDismissible = true,
    Color? barrierColor = Colors.black54,
    String? barrierLabel,
    bool useSafeArea = true,
    bool useRootNavigator = true,
    RouteSettings? routeSettings,
  }) {
    try {
      return showDialog(
        context: _context.last,
        builder: (_) => widget,
        barrierDismissible: barrierDismissible,
        barrierColor: barrierColor,
        barrierLabel: barrierLabel,
        useSafeArea: useSafeArea,
        useRootNavigator: useRootNavigator,
        routeSettings: routeSettings,
      );
    } catch (e) {
      throw _contextError;
    }
  }

  /// `showBottomSheet` shortcut.
  ///
  /// Typical usage is as follows:
  ///
  /// ```dart
  /// StarlightUtils.showBottomSheet(MyHome());
  /// ```
  static Future<T?> bottomSheet<T>(
    Widget widget, {
    Color? backgroundColor,
    double? elevation,
    ShapeBorder? shape,
    Clip? clipBehavior,
    BoxConstraints? constraints,
    AnimationController? transitionAnimationController,
  }) {
    try {
      return showModalBottomSheet(
        context: _context.last,
        builder: (_) => widget,
        backgroundColor: backgroundColor,
        elevation: elevation,
        shape: shape,
        clipBehavior: clipBehavior,
        constraints: constraints,
        transitionAnimationController: transitionAnimationController,
      );
    } catch (e) {
      throw _contextError;
    }
  }

  /// `showSnackBar` shortcut.
  ///
  /// Typical usage is as follows:
  ///
  /// ```dart
  /// StarlightUtils.snackbar(
  ///    SnackBar(content: MyWidet())
  /// );
  /// ```
  static ScaffoldFeatureController<SnackBar, SnackBarClosedReason> snackbar(
      SnackBar snackBar) {
    try {
      return ScaffoldMessenger.of(_context.last).showSnackBar(snackBar);
    } catch (e) {
      throw _contextError;
    }
  }

  /// `showDatePicker` shortcut.
  ///
  /// Typical usage is as follows:
  ///
  /// ```dart
  /// StarlightUtils.datePicker(
  ///      initialDate: DateTime.now(),
  ///      firstDate: DateTime(2000),
  ///      lastDate: DateTime(DateTime.now().year + 100),
  /// );
  /// ```
  static Future<DateTime?> datePicker<T>({
    required DateTime initialDate,
    required DateTime firstDate,
    required DateTime lastDate,
    DateTime? currentDate,
    DatePickerEntryMode initialEntryMode = DatePickerEntryMode.calendar,
    bool Function(DateTime)? selectableDayPredicate,
    String? helpText,
    String? cancelText,
    String? confirmText,
    Locale? locale,
    bool useRootNavigator = true,
    RouteSettings? routeSettings,
    TextDirection? textDirection,
    Widget Function(BuildContext, Widget?)? builder,
    DatePickerMode initialDatePickerMode = DatePickerMode.day,
    String? errorFormatText,
    String? errorInvalidText,
    String? fieldHintText,
    String? fieldLabelText,
  }) {
    try {
      return showDatePicker(
        context: _context.last,
        initialDate: initialDate,
        firstDate: firstDate,
        lastDate: lastDate,
        currentDate: currentDate,
        initialEntryMode: initialEntryMode,
        selectableDayPredicate: selectableDayPredicate,
        helpText: helpText,
        cancelText: cancelText,
        confirmText: confirmText,
        locale: locale,
        useRootNavigator: useRootNavigator,
        routeSettings: routeSettings,
        textDirection: textDirection,
        builder: builder,
        initialDatePickerMode: initialDatePickerMode,
        errorFormatText: errorFormatText,
        errorInvalidText: errorInvalidText,
        fieldHintText: fieldHintText,
        fieldLabelText: fieldLabelText,
      );
    } catch (e) {
      throw _contextError;
    }
  }

  /// `showTimePicker` shortcut.
  ///
  /// Typical usage is as follows:
  ///
  /// ```dart
  /// StarlightUtils.timePicker(
  ///      initialTime: TimeOfDay.fromDateTime(DateTime.now())
  /// );
  /// ```
  static Future<TimeOfDay?> timePicker<T>({
    required TimeOfDay initialTime,
    Widget Function(BuildContext, Widget?)? builder,
    bool useRootNavigator = true,
    TimePickerEntryMode initialEntryMode = TimePickerEntryMode.dial,
    String? cancelText,
    String? confirmText,
    String? helpText,
    String? errorInvalidText,
    String? hourLabelText,
    String? minuteLabelText,
    RouteSettings? routeSettings,
    void Function(TimePickerEntryMode)? onEntryModeChanged,
  }) {
    try {
      return showTimePicker(
        context: _context.last,
        initialTime: initialTime,
        builder: builder,
        useRootNavigator: useRootNavigator,
        initialEntryMode: initialEntryMode,
        cancelText: cancelText,
        confirmText: confirmText,
        helpText: helpText,
        errorInvalidText: errorInvalidText,
        hourLabelText: hourLabelText,
        minuteLabelText: minuteLabelText,
        routeSettings: routeSettings,
        onEntryModeChanged: onEntryModeChanged,
      );
    } catch (e) {
      throw _contextError;
    }
  }

  /// `showDateRangePicker` shortcut.
  ///
  /// Typical usage is as follows:
  ///
  /// ```dart
  /// StarlightUtils.dateRangePicker(
  ///    firstDate: DateTime(2000),
  ///    lastDate: DateTime(2100),
  ///);
  /// ```
  static Future<DateTimeRange?> dateRangePicker<T>({
    DateTimeRange? initialDateRange,
    required DateTime firstDate,
    required DateTime lastDate,
    DateTime? currentDate,
    DatePickerEntryMode initialEntryMode = DatePickerEntryMode.calendar,
    String? helpText,
    String? cancelText,
    String? confirmText,
    String? saveText,
    String? errorFormatText,
    String? errorInvalidText,
    String? errorInvalidRangeText,
    String? fieldStartHintText,
    String? fieldEndHintText,
    String? fieldStartLabelText,
    String? fieldEndLabelText,
    Locale? locale,
    bool useRootNavigator = true,
    RouteSettings? routeSettings,
    TextDirection? textDirection,
    TransitionBuilder? builder,
  }) {
    try {
      return showDateRangePicker(
        context: _context.last,
        initialDateRange: initialDateRange,
        firstDate: firstDate,
        lastDate: lastDate,
        currentDate: currentDate,
        initialEntryMode: initialEntryMode,
        helpText: helpText,
        cancelText: cancelText,
        confirmText: confirmText,
        saveText: saveText,
        errorFormatText: errorFormatText,
        errorInvalidText: errorInvalidText,
        errorInvalidRangeText: errorInvalidRangeText,
        fieldStartHintText: fieldStartHintText,
        fieldEndHintText: fieldEndHintText,
        fieldStartLabelText: fieldStartLabelText,
        fieldEndLabelText: fieldEndLabelText,
        locale: locale,
        useRootNavigator: useRootNavigator,
        routeSettings: routeSettings,
        textDirection: textDirection,
        builder: builder,
      );
    } catch (e) {
      throw _contextError;
    }
  }

  /// `showMenu` shortcut.
  ///
  /// Typical usage is as follows:
  ///
  /// ```dart
  /// StarlightUtils.menu(
  ///   position: RelativeRect.fromLTRB(10, 0, 0, 0),
  ///   items: [
  ///     PopupMenuItem(child: Text('item 1')),
  ///     PopupMenuItem(child: Text('item 2')),
  ///     PopupMenuItem(child: Text('item 3')),
  ///   ],
  /// );
  /// ```
  static Future<T?> menu<T>({
    required RelativeRect position,
    required List<PopupMenuEntry<T>> items,
    T? initialValue,
    double? elevation,
    String? semanticLabel,
    ShapeBorder? shape,
    Color? color,
    bool useRootNavigator = false,
  }) {
    try {
      return showMenu(
        context: _context.last,
        position: position,
        items: items,
        initialValue: initialValue,
        elevation: elevation,
        semanticLabel: semanticLabel,
        shape: shape,
        color: color,
        useRootNavigator: useRootNavigator,
      );
    } catch (e) {
      throw _contextError;
    }
  }

  /**
  * Navigation Service
  */

  ///Navigaton Error
  static const _StarlightException _navigationError = _StarlightException(
      error: "Navigation Error", message: """\nif you want to use navigation
  you need to set `navigator key` in you [MaterialApp]

  Typical usage is as follows:
  
  class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);
 
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        navigatorKey: StarlightUtils.navigatorKey,
        home: MyHome(),
      );
    }
  }
  """);

  /// if you want to use navigation
  /// you need to set this `key` in you [MaterialApp]
  /// Typical usage is as follows:
  /// ```dart
  /// class MyApp extends StatelessWidget {
  /// const MyApp({ Key? key }) : super(key: key);
  ///
  ///   @override
  ///   Widget build(BuildContext context) {
  ///     return MaterialApp(
  ///       navigatorKey: StarlightUtils.navigatorKey,
  ///       home: MyHome(),
  ///     );
  ///   }
  /// }
  /// ```
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  /// `Navigation.push()` shortcut.
  ///
  /// You can provide `settings` [RouteSettings], `maintainState` [bool],
  /// and `fullscreenDialog` [bool]
  ///
  /// Typical usage is as follows:
  ///
  /// ```dart
  /// StarlightUtils.push(MyHome());
  /// ```
  static Future<T?> push<T>(
    Widget screen, {
    RouteSettings? settings,
    bool maintainState = true,
    bool fullscreenDialog = false,
  }) {
    try {
      return navigatorKey.currentState!.push(
        MaterialPageRoute(
          builder: (_) => screen,
          settings: settings,
          maintainState: maintainState,
          fullscreenDialog: fullscreenDialog,
        ),
      );
    } catch (e) {
      throw _navigationError;
    }
  }

  /// `Navigation.pushNamed()` shortcut.
  ///
  /// You can provide route `name` [String] and `arguments` [Object]
  ///
  /// Typical usage is as follows:
  ///
  /// ```dart
  /// StarlightUtils.pushNamed('home');
  /// ```
  static Future<T?> pushNamed<T>(String name, {Object? arguments}) {
    try {
      return navigatorKey.currentState!.pushNamed(
        name,
        arguments: arguments,
      );
    } catch (e) {
      throw _navigationError;
    }
  }

  /// `Navigation.pushNamedAndRemoveUntil()` shortcut.
  ///
  /// You can provide `name` [String], `predicate` [Function] and `arguments`
  /// [Object]
  ///
  /// Typical usage is as follows:
  ///
  /// ```dart
  /// StarlightUtils.pushNamedAndRemoveUntil('home');
  /// ```
  static Future<T?> pushNamedAndRemoveUntil<T>(
    String name,
    bool Function(Route<dynamic>) predicate, {
    Object? arguments,
  }) {
    try {
      return navigatorKey.currentState!.pushNamedAndRemoveUntil(
        name,
        predicate,
        arguments: arguments,
      );
    } catch (e) {
      throw _navigationError;
    }
  }

  /// `Navigation.pushAndRemoveUntil()` shortcut.
  ///
  /// You can provide `screen` [Widget], `predicate` [Function]
  /// `settings` [RouteSettings], `maintainState` [bool]
  /// and `fullscreenDialog` [bool]
  ///
  /// Typical usage is as follows:
  ///
  /// ```dart
  /// StarlightUtils.pushAndRemoveUntil(MyHome());
  /// ```
  static Future<T?> pushAndRemoveUntil<T>(
    Widget screen,
    bool Function(Route<dynamic>) predicate, {
    RouteSettings? settings,
    bool maintainState = true,
    bool fullscreenDialog = false,
  }) {
    try {
      return navigatorKey.currentState!.pushAndRemoveUntil(
        MaterialPageRoute(
          builder: (_) => screen,
          settings: settings,
          maintainState: maintainState,
          fullscreenDialog: fullscreenDialog,
        ),
        predicate,
      );
    } catch (e) {
      throw _navigationError;
    }
  }

  /// `Navigation.pushReplacement()` shortcut.
  ///
  /// You can provide `screen` [Widget],
  /// `predicate` [Function], `maintainState` [bool]
  /// and `fullscreenDialog` [bool]
  ///
  /// Typical usage is as follows:
  ///
  /// ```dart
  /// StarlightUtils.pushReplacement(MyHome());
  /// ```
  static Future<T?> pushReplacement<T>(
    Widget screen,
    bool Function(Route<dynamic>) predicate, {
    RouteSettings? settings,
    bool maintainState = true,
    bool fullscreenDialog = false,
  }) {
    try {
      return navigatorKey.currentState!.pushReplacement(
        MaterialPageRoute(
          builder: (_) => screen,
          settings: settings,
          maintainState: maintainState,
          fullscreenDialog: fullscreenDialog,
        ),
      );
    } catch (e) {
      throw _navigationError;
    }
  }

  /// `Navigation.pushReplacement()` shortcut.
  ///
  /// You can provide `name` [String],
  /// `result` [TO], `arguments` [Object]
  ///
  /// Typical usage is as follows:
  ///
  /// ```dart
  /// StarlightUtils.pushReplacement('home');
  /// ```
  static Future<T?> pushReplacementNamed<T, TO>(
    String name, {
    TO? result,
    Object? arguments,
  }) {
    try {
      return navigatorKey.currentState!.pushReplacementNamed(
        name,
        result: result,
        arguments: arguments,
      );
    } catch (e) {
      throw _navigationError;
    }
  }

  /// `Navigation.popAndPushNamed()` shortcut.
  ///
  /// You can provide `name` [String],
  /// `result` [TO], `arguments` [Object]
  ///
  /// Typical usage is as follows:
  ///
  /// ```dart
  /// StarlightUtils.popAndPushNamed('home');
  /// ```
  static Future<T?> popAndPushNamed<T, TO>(
    String name, {
    TO? result,
    Object? arguments,
  }) {
    try {
      return navigatorKey.currentState!.popAndPushNamed(
        name,
        result: result,
        arguments: arguments,
      );
    } catch (e) {
      throw _navigationError;
    }
  }

  /// `Navigation.pop()` shortcut.
  ///
  /// You can provide `result` [T]
  ///
  /// Typical usage is as follows:
  ///
  /// ```dart
  /// StarlightUtils.pop('home');
  /// ```
  static void pop<T>({
    T? result,
    usedContext = false,
  }) {
    try {
      if (usedContext) {
        _context.removeLast();
      }
      return navigatorKey.currentState!.pop(
        result,
      );
    } catch (e) {
      throw _navigationError;
    }
  }

  /// `Navigation.pop()` shortcut.
  ///
  /// You can provide `result` [T]
  ///
  /// Typical usage is as follows:
  ///
  /// ```dart
  /// StarlightUtils.conPop();
  /// ```
  static bool conPop() {
    try {
      return navigatorKey.currentState!.canPop();
    } catch (e) {
      throw _navigationError;
    }
  }
}
