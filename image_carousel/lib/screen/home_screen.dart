import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // 상태바 색상 변경
import 'dart:async'; // timer

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController pageController = PageController();

  @override
  void initState() {
    super.initState();

    Timer.periodic(
      Duration(seconds: 3),
      (timer) {
        print('실행!');
        int? nextPage = pageController.page?.toInt(); // ?: null을 가질 수 있음.

        if (nextPage == null) {
          return;
        }

        if (nextPage == 4) {
          nextPage = 0;
        } else {
          nextPage++;
        }
        pageController.animateToPage(
          nextPage,
          duration: Duration(milliseconds: 500), // 이동할 때 소요되는 시간
          curve: Curves.ease, // 플러터 홈페이지에서 확인 가능
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle.dark); // 상태바 하얀 색으로

    return Scaffold(
      body: PageView(
        controller: pageController,
        // 좌우로 스크롤 가능
        children: [1, 2, 3, 4, 5]
            .map(
              (number) => Image.asset(
                'asset/img/image_$number.jpeg',
                fit: BoxFit.cover,
              ),
            ) // 샘플 리스트 생성
            .toList(),
      ),
    );
  }
}
