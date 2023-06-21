import 'dart:math';
import 'dart:ui';

///Class containing the logic for changing background color
class BackgroundColor {
  ///Color class instance to be used in UI
  Color? background;

  ///Constructor to initialize background variable
  BackgroundColor() {
    const int tempParameterARGB = 0;
    background = const Color.fromARGB(
      tempParameterARGB,
      tempParameterARGB,
      tempParameterARGB,
      tempParameterARGB,
    );
  }

  ///Method responsible for change of colour of background.
  Color? colorChanger() {
    const parameterRandom = 100;
    const parameterNextInt = 256;
    int parameterARGB = 0;
    final parameterARGB2 = Random().nextInt(parameterNextInt);
    final parameterARGB3 = Random().nextInt(parameterNextInt);
    final parameterARGB4 = Random().nextInt(parameterNextInt);

    if (background ==
        Color.fromARGB(
          parameterARGB,
          parameterARGB,
          parameterARGB,
          parameterARGB,
        ))
    //Case created done for the widget testing so that 1st time the color is,
    // what is specified in widget test and the second time it is all random
    {
      background = Color.fromARGB(
        Random(parameterRandom).nextInt(parameterNextInt),
        Random(parameterRandom).nextInt(parameterNextInt),
        Random(parameterRandom).nextInt(parameterNextInt),
        Random(parameterRandom).nextInt(parameterNextInt),
      );
    } else {
      parameterARGB = Random().nextInt(parameterNextInt);
      background = Color.fromARGB(
        parameterARGB,
        parameterARGB2,
        parameterARGB3,
        parameterARGB4,
      );
    }

    return background;
  }
}
