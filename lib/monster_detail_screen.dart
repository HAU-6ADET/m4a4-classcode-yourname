import 'package:flutter/material.dart';

import 'monster.dart';

/// Module 4 - Activity 4 - Monster Detail (capstone)
///
/// Bring Module 4 together into one polished screen: the detail page for a
/// single monster. This is graded on how it LOOKS as a mobile screen (from a
/// phone-framed screenshot) as well as the required pieces below.
///
/// `MonsterDetailScreen` must be a `Scaffold` and must include:
///   * the monster's name in the `AppBar` title,
///   * the type in UPPER CASE, in a `Text` with `key: Key('type')`,
///   * the HP as current / max (e.g. "30 / 40"), in a `Text` with
///     `key: Key('hp')`,
///   * an HP bar - a widget with `key: Key('hpBar')` whose fill reflects
///     `hp / maxHp` (a `LinearProgressIndicator`, or a `Container` inside a
///     fixed-width track, both work),
///   * at least one coloured `Container` for styling, laid out with a `Column`
///     and a `Row`.
///
/// Beyond the checklist: make it look good. Give the type its own colour, build
/// a clear header, and use spacing. Concepts to research: `LinearProgressIndicator`,
/// `BoxDecoration`, `CircleAvatar`, `Expanded`, `Theme`/`TextStyle`.
class MonsterDetailScreen extends StatelessWidget {
  final Monster monster;

  const MonsterDetailScreen({super.key, required this.monster});

  @override
  Widget build(BuildContext context) {
    // TODO: build the detail screen described above.
    return Scaffold(
      appBar: AppBar(title: Text(monster.name)),
      body: const Center(child: Text('TODO: build the detail screen')),
    );
  }
}
