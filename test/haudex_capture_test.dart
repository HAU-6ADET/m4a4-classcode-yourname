// m4a4 - screenshot capture (teacher-canonical, NOT scored).
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:m4a4_monster_detail/monster.dart';
import 'package:m4a4_monster_detail/monster_detail_screen.dart';

import 'support/haudex_golden.dart';

void main() {
  setUpAll(loadHaudexFonts);

  testWidgets('capture: monster detail', (tester) async {
    const monster = Monster(name: 'Emberling', type: 'fire', hp: 30, maxHp: 40);
    await captureScreen(
      tester,
      const MonsterDetailScreen(monster: monster),
      name: 'detail',
    );
  });
}
