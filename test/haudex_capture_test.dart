// m4a4 - screenshot capture (teacher-canonical, NOT scored).
//
// The capstone is graded on design, so one screen with one monster is not
// enough evidence. We shoot the same screen three times with data that stresses
// it: each type's colour, a nearly-fainted HP bar, and a long name in the app
// bar.
import 'package:flutter_test/flutter_test.dart';

import 'package:m4a4_monster_detail/monster.dart';
import 'package:m4a4_monster_detail/monster_detail_screen.dart';

import 'support/haudex_golden.dart';

const _fire = Monster(name: 'Emberling', type: 'fire', hp: 30, maxHp: 40);
const _water = Monster(name: 'Aquaphin', type: 'water', hp: 2, maxHp: 25);
const _grass = Monster(name: 'Thornwhipperling', type: 'grass', hp: 20, maxHp: 20);

void main() {
  setUpAll(loadHaudexFonts);

  testWidgets('capture: monster detail', (tester) async {
    await pumpHaudex(tester, const MonsterDetailScreen(monster: _fire));
    await shoot(tester, '01-detail-fire');

    await step(tester, '02-detail-water-low-hp', () async {
      await pumpHaudex(tester, const MonsterDetailScreen(monster: _water));
    });

    await step(tester, '03-detail-grass-long-name', () async {
      await pumpHaudex(tester, const MonsterDetailScreen(monster: _grass));
    });
  });
}
