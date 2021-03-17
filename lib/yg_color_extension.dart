part of dart_extension;

extension YGColorExtension on Color {
  static Color get random {
    return Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1);
  }
}
