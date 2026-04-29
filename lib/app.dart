import 'package:flutter/material.dart';

import 'screens/main_screen.dart';
import 'theme/app_theme.dart';

class YouTubeApp extends StatelessWidget {
  const YouTubeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'YouTube Clone',
      theme: AppTheme.darkTheme,
      home: const MainScreen(),
    );
  }
}
