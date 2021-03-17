part of dart_extension;

extension YGColorExtension on Color {
  Color get random {
    return Color((Random().nextDouble() * 0xFFFFFF).toInt());
  }
}