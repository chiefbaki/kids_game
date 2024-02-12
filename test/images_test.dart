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

    expect(File(Images.rectangle12).existsSync(), isTrue);
    expect(File(Images.apple).existsSync(), isTrue);
    expect(File(Images.appleMain).existsSync(), isTrue);
    expect(File(Images.avatar).existsSync(), isTrue);
    expect(File(Images.ball).existsSync(), isTrue);
    expect(File(Images.body).existsSync(), isTrue);
    expect(File(Images.carrot).existsSync(), isTrue);
    expect(File(Images.chicken).existsSync(), isTrue);
    expect(File(Images.cow).existsSync(), isTrue);
    expect(File(Images.doctor).existsSync(), isTrue);
    expect(File(Images.four).existsSync(), isTrue);
    expect(File(Images.jomoktorKyrgyzcha101).existsSync(), isTrue);
    expect(File(Images.limon).existsSync(), isTrue);
    expect(File(Images.logo).existsSync(), isTrue);
    expect(File(Images.man).existsSync(), isTrue);
    expect(File(Images.one).existsSync(), isTrue);
    expect(File(Images.pear).existsSync(), isTrue);
    expect(File(Images.potato).existsSync(), isTrue);
    expect(File(Images.splashImg).existsSync(), isTrue);
    expect(File(Images.story).existsSync(), isTrue);
    expect(File(Images.tomato).existsSync(), isTrue);
    expect(File(Images.unnamed1).existsSync(), isTrue);

  });
}
