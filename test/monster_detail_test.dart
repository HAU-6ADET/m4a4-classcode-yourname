// m4a4 - Monster Detail: automated structural checks (canonical overlay).
// The design half of the grade is judged by the instructor from the screenshot;
// these tests only confirm the required pieces are present.
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:m4a4_monster_detail/monster.dart';
import 'package:m4a4_monster_detail/monster_detail_screen.dart';

const sample = Monster(name: 'Emberling', type: 'fire', hp: 30, maxHp: 40);

Future<void> pump(WidgetTester tester, [Monster m = sample]) async {
  await tester.pumpWidget(MaterialApp(home: MonsterDetailScreen(monster: m)));
}

void main() {
  test('student.json is filled in', () {
    final info = jsonDecode(File('student.json').readAsStringSync())
        as Map<String, dynamic>;
    for (final field in [
      'classCode',
      'fullName',
      'studentNumber',
      'studentEmail',
      'personalEmail',
      'githubAccount',
    ]) {
      expect(info[field], isNotEmpty, reason: 'Set "$field" in student.json');
    }
  });

  group('MonsterDetailScreen', () {
    testWidgets('is a Scaffold with the monster name in the AppBar',
        (tester) async {
      await pump(tester);
      expect(find.byType(Scaffold), findsOneWidget);
      expect(
        find.descendant(
            of: find.byType(AppBar), matching: find.text('Emberling')),
        findsOneWidget,
        reason: 'Put the monster name in the AppBar title.',
      );
    });

    testWidgets('shows the type in upper case (keyed "type")', (tester) async {
      await pump(tester);
      final f = find.byKey(const Key('type'));
      expect(f, findsOneWidget, reason: 'Add a Text keyed Key(\'type\').');
      expect(tester.widget<Text>(f).data, 'FIRE');
    });

    testWidgets('shows HP as current / max (keyed "hp")', (tester) async {
      await pump(tester);
      final hp = tester.widget<Text>(find.byKey(const Key('hp'))).data ?? '';
      expect(hp, contains('30'));
      expect(hp, contains('40'));
    });

    testWidgets('has an HP bar (keyed "hpBar")', (tester) async {
      await pump(tester);
      expect(find.byKey(const Key('hpBar')), findsOneWidget,
          reason: 'Add an HP bar widget keyed Key(\'hpBar\').');
    });

    testWidgets('uses a coloured Container for styling', (tester) async {
      await pump(tester);
      final hasColoured = tester.widgetList<Container>(find.byType(Container)).any(
          (c) => c.decoration is BoxDecoration &&
              (c.decoration as BoxDecoration).color != null ||
              c.color != null);
      expect(hasColoured, isTrue,
          reason: 'Style at least one area with a coloured Container.');
    });

    testWidgets('lays out with a Column and a Row', (tester) async {
      await pump(tester);
      expect(find.byType(Column), findsWidgets);
      expect(find.byType(Row), findsWidgets);
    });

    testWidgets('reflects a different monster', (tester) async {
      await pump(tester,
          const Monster(name: 'Aquaphin', type: 'water', hp: 18, maxHp: 25));
      expect(
        find.descendant(
            of: find.byType(AppBar), matching: find.text('Aquaphin')),
        findsOneWidget,
      );
      expect(tester.widget<Text>(find.byKey(const Key('type'))).data, 'WATER');
    });
  });
}
