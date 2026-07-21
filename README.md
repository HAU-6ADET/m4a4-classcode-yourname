# Module 4 - Activity 4 - Monster Detail (Flutter capstone)

[![Made with Claude](https://img.shields.io/badge/Made_with-Claude-D97757?logo=anthropic&logoColor=white)](https://tjakoen.github.io/notes/ten-times-zero)
![Flutter](https://img.shields.io/badge/Flutter-02569B?logo=flutter&logoColor=white)

The Module 4 finale. Bring together everything - widgets, layout, and styling -
into one polished screen: the **detail page for a single monster**. This one is
graded partly on how it **looks** as a mobile screen, so make it something you
would be happy to show.

## Build this

Open `lib/monster_detail_screen.dart`. `MonsterDetailScreen` must be a `Scaffold`
that includes:

- the monster **name** in the `AppBar` title,
- the **type** in UPPER CASE, `Text` keyed `Key('type')`,
- the **HP** as current / max, `Text` keyed `Key('hp')`,
- an **HP bar** keyed `Key('hpBar')` whose fill reflects `hp / maxHp`
  (a `LinearProgressIndicator` or a `Container` in a fixed-width track),
- at least one coloured `Container`, laid out with a `Column` and a `Row`.

Then go further: colour the screen by type, build a clear header, use spacing.

## How it is graded

100 points: **40 automated** (the checklist above, from the tests) + **60
design** (from a phone-framed screenshot and your code - hierarchy, colour, the
HP bar, layout on a phone, code organization, polish). See `RUBRIC.md`.

## Run and check

```bash
flutter pub get
flutter run
flutter test
```

## Submit

Fill in `student.json`, commit, and push.
