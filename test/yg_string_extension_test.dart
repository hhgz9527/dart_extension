import 'package:flutter_test/flutter_test.dart';
import 'package:dart_extension/dart_extension.dart';

void main() {
  group('dropLast', () {
    test('remove last chart', () {
      expect('last'.dropLast, 'las');
    });
  });

  group('dropLastWith', () {
    test('remove last 3 count chart', () {
      expect('last'.dropLastWith(3), 'l');
    });
  });

  group('dropFrist', () {
    test('remove first chart', () {
      expect('first'.dropFirst, 'irst');
    });
  });

  group('dropFristWith', () {
    test('remove first 3 count chart', () {
      expect('first'.dropFristWith(3), 'st');
    });
  });

  group('isEmail', () {
    test('email check', () {
      expect('1@qq.com'.isEmail, true);
    });
  });
}
