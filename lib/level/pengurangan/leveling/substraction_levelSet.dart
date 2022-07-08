import 'package:basic_math_app/level/penjumlahan/levelUI/addition_level_testUI.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class SubstractionLevelSet extends StatelessWidget {
  SubstractionLevelSet({required this.levelInt, Key? key}) : super(key: key);
  String levelType = "Substraction";
  int levelInt;
  @override
  Widget build(BuildContext context) {
    if (levelInt == 1) {
      int a = 1;
      int b = 1;
      return AdditionLevelTestUI(
        a: a,
        b: b,
        wrongLimit: 18,
        levelInt: levelInt,
        levelType: levelType,
      );
    } else if (levelInt >= 2 && levelInt <= 3) {
      int a = Random().nextInt(10);
      int b = Random().nextInt(5);
      return AdditionLevelTestUI(
        a: a,
        b: b,
        wrongLimit: 18,
        levelInt: levelInt,
        levelType: levelType,
      );
    } else if (levelInt >= 4 && levelInt <= 6) {
      int a = Random().nextInt(10) + 10;
      int b = Random().nextInt(10);
      return AdditionLevelTestUI(
        a: a,
        b: b,
        wrongLimit: 18,
        levelInt: levelInt,
        levelType: levelType,
      );
    } else if (levelInt >= 7 && levelInt <= 9) {
      int a = Random().nextInt(20) + 10;
      int b = Random().nextInt(15);
      return AdditionLevelTestUI(
        a: a,
        b: b,
        wrongLimit: 18,
        levelInt: levelInt,
        levelType: levelType,
      );
    } else if (levelInt == 10) {
      int a = 42;
      int b = Random().nextInt(30) + 17;
      return AdditionLevelTestUI(
        a: a,
        b: b,
        wrongLimit: 18,
        levelInt: levelInt,
        levelType: levelType,
      );
    } else if (levelInt >= 11 && levelInt <= 13) {
      int a = Random().nextInt(20) + 20;
      int b = Random().nextInt(30) + 20;
      return AdditionLevelTestUI(
        a: a,
        b: b,
        wrongLimit: 18,
        levelInt: levelInt,
        levelType: levelType,
      );
    } else if (levelInt >= 14 && levelInt <= 16) {
      int a = Random().nextInt(400) + 100;
      int b = Random().nextInt(400);
      return AdditionLevelTestUI(
        a: a,
        b: b,
        wrongLimit: 27,
        levelInt: levelInt,
        levelType: levelType,
      );
    } else if (levelInt >= 17 && levelInt <= 19) {
      int a = Random().nextInt(700) + 300;
      int b = Random().nextInt(700);
      return AdditionLevelTestUI(
        a: a,
        b: b,
        wrongLimit: 36,
        levelInt: levelInt,
        levelType: levelType,
      );
    } else if (levelInt == 20) {
      int a = 999;
      int b = Random().nextInt(700) + 126;
      return AdditionLevelTestUI(
        a: a,
        b: b,
        wrongLimit: 36,
        levelInt: levelInt,
        levelType: levelType,
      );
    } else if (levelInt >= 21 && levelInt <= 25) {
      int a = Random().nextInt(3999) + 1000;
      int b = Random().nextInt(3999) + 1000;
      return AdditionLevelTestUI(
        a: a,
        b: b,
        wrongLimit: 36,
        levelInt: levelInt,
        levelType: levelType,
      );
    } else if (levelInt >= 26 && levelInt <= 29) {
      int a = Random().nextInt(3999) + 6000;
      int b = Random().nextInt(3999);
      return AdditionLevelTestUI(
        a: a,
        b: b,
        wrongLimit: 45,
        levelInt: levelInt,
        levelType: levelType,
      );
    } else if (levelInt == 30) {
      int a = 1234;
      int b = 9999;
      return AdditionLevelTestUI(
        a: a,
        b: b,
        wrongLimit: 45,
        levelInt: levelInt,
        levelType: levelType,
      );
    } else {
      int a = Random().nextInt(10);
      int b = Random().nextInt(10);
      return AdditionLevelTestUI(
        a: a,
        b: b,
        levelInt: levelInt,
        wrongLimit: 18,
        levelType: levelType,
      );
    }
  }
}
