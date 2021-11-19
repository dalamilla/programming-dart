import 'package:euler/euler.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    final awesome = Awesome();

    setUp(() {});

    test('First Test', () {
      expect(awesome.isAwesome, isTrue);
    });
  });
}
