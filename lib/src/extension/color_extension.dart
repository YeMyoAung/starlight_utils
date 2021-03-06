part of starlight_utils;

extension StarlightColor on MaterialColor {
  static Color get generate {
    final Random _random = Random.secure();

    return Color.fromRGBO(
      _random.nextInt(255),
      _random.nextInt(255),
      _random.nextInt(255),
      _random.nextDouble(),
    );
  }
}
