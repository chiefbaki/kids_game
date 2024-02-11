import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:kids_game/resources/resources.dart';

void main() {
  test('images assets test', () {
    expect(File(Images.aktan).existsSync(), isTrue);
    expect(File(Images.apple).existsSync(), isTrue);
    expect(File(Images.avatar).existsSync(), isTrue);
    expect(File(Images.boy).existsSync(), isTrue);
    expect(File(Images.jomok).existsSync(), isTrue);
  });
}
