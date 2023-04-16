import 'package:flutter/material.dart';
import 'package:blog_web_app/screen/home_screen.dart';

// 블로그 애플리케이션
// pubspec.yaml >> webview_flutter: 3.0.4
// 플러그인 추가 필요
void main() {
  runApp(
    MaterialApp(
      home: HomeScreen(),
    ),
  );
}

