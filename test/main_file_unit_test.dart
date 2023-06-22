import 'dart:ui';
import 'package:flutter_test/flutter_test.dart';
import 'package:solid_software/Model/background_color.dart';

void main() {
  test("Unit test of main method", () {
    const int aRGBParameter = 74;
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
