import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

import 'monster.dart';
import 'monster_detail_screen.dart';

// Entry point. Run it to preview your detail screen on a phone. Your work goes
// in `monster_detail_screen.dart`.
void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const HaudexApp(),
    ),
  );
}

class HaudexApp extends StatelessWidget {
  const HaudexApp({super.key});

  @override
  Widget build(BuildContext context) {
    const sample = Monster(name: 'Emberling', type: 'fire', hp: 30, maxHp: 40);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: const MonsterDetailScreen(monster: sample),
    );
  }
}
