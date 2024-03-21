import 'package:chatbbe/src/components/secHome.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      scrollBehavior: const MaterialScrollBehavior()..multitouchDragStrategy,
      routes: {
        'home': (context) => const Home(),
        'secHome': (context) => const SecHome(),
      },
    );
  }
}
