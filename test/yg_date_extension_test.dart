import 'package:flutter_test/flutter_test.dart';
import 'package:dart_extension/dart_extension.dart';

void main() {
  test('get 2021/2 month days count', () {
    expect(DateTime(2021, 2).monthDays, 28);
  });
}
