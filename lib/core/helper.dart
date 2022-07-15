import 'dart:math';

abstract class Helpers {
  static final random = Random();

  static String randomPictureUrl() {
    final randomInt = random.nextInt(1000);
    String rnadomtoString = randomInt.toString();
    return 'https://picsum.photos/$randomInt/300';
  }
}
