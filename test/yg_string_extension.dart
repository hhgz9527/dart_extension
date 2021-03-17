import 'package:flutter_test/flutter_test.dart';
import 'package:dart_extension/dart_extension.dart';

void main() {
  test('remove last chart', () {
    expect('last'.dropLast, 'las');
  });

  test('remove last 3 count chart', () {
    expect('last'.dropLastWith(3), 'l');
  });

  test('remove first chart', () {
    expect('first'.dropFirst, 'irst');
  });

  test('remove first 3 count chart', () {
    expect('first'.dropFristWith(3), 'st');
  });
}
