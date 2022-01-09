part of starlight_utils;

///For DateTime
extension StarlightDateTime on DateTime {
  String differenceTimeInString(DateTime time) => difference(time).inDays > 365
      ? "${difference(time).inDays ~/ 365}y"
      : difference(time).inDays > 7
          ? "${difference(time).inDays ~/ 7}w"
          : difference(time).inDays > 1
              ? "${difference(time).inDays}d"
              : difference(time).inHours > 1
                  ? "${difference(time).inHours}h"
                  : "${difference(time).inMinutes}m";
}
