import 'package:flutter_test/flutter_test.dart';
import 'package:dart_extension/dart_extension.dart';

void main() {
  group('safe', () {
    test('return null when index > array length', () {
      final result = ['1', '2'].safe(4);
      expect(result, null);
    });

    test('return second index value when index < array length', () {
      final result = ['1', '2'].safe(1);
      expect(result, '2');
    });
  });
}
