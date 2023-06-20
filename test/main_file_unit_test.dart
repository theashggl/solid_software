import 'dart:math';
import 'dart:ui';

import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:solid_software/Model/background_color.dart';

class MockRandom extends Mock implements Random {}

void main() {
  MockRandom? mockRandom;
  setUp(() {
    mockRandom = MockRandom();
  });
  test("Unit test of main method", () {
    const int nextIntParameter = 256;
    const int aRGBParameter = 74;
    when(() => mockRandom?.nextInt(nextIntParameter)).thenReturn(aRGBParameter);
// final _MyHomePageState testOfColorChanger =const MyHomePage();
// testOfColorChanger
    final BackgroundColor backgroundColor = BackgroundColor();
    expect(backgroundColor.background, const Color.fromARGB(0, 0, 0, 0));
    backgroundColor.colorChanger();
    expect(
      backgroundColor.background,
      const Color.fromARGB(
        aRGBParameter,
        aRGBParameter,
        aRGBParameter,
        aRGBParameter,
      ),
    );
  });
}
