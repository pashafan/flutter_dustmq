import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp13());
}

class MyApp1 extends StatelessWidget {
  // TextWidget
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('반갑습니다.',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w700,
                color: Colors.blue,
              )),
        ),
      ),
    );
  }
}

class MyApp2 extends StatelessWidget {
  // Button: 131p, TextButton, OutlinedButton, ElevatedButton
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
            ),
            child: Text('Button'),
          ),
        ),
      ),
    );
  }
}

class MyApp3 extends StatelessWidget {
  // Button : IconButton
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              // https://fonts.google.com/icons
              Icons.home,
            ),
          ),
        ),
      ),
    );
  }
}

class MyApp4 extends StatelessWidget {
  // GestureDetector 133p
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: GestureDetector(
            onTap: () {
              print('on tap');
            },
            onDoubleTap: () {
              print('on double tap');
            },
            onLongPress: () {
              print('on long press');
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              width: 100.0,
              height: 100.0,
            ),
          ),
        ),
      ),
    );
  }
}

class MyApp5 extends StatelessWidget {
  // FloatingActionButton
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('Click'),
      ),
      body: Container(
        child: Center(
          child: Text('Body'),
        ),
      ),
    ));
  }
}

class MyApp6 extends StatelessWidget {
  // Container
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.red,
              border: Border.all(
                width: 12.0,
                color: Colors.black,
              ),
              borderRadius: BorderRadius.circular(16.0),
            ),
            height: 200.0,
            width: 100.0,
          ),
        ),
      ),
    );
  }
}

class MyApp7 extends StatelessWidget {
  // SizedBox
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: SizedBox(
            height: 200.0,
            width: 100.0,
            child: Container(
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}

class MyApp8 extends StatelessWidget {
  // padding
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            color: Colors.blue,
            child: Padding(
              padding: EdgeInsets.all(
                16.0,
              ),
              child: Container(
                color: Colors.red,
                width: 50.0,
                height: 50.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MyApp9 extends StatelessWidget{
  // SafeArea
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: SafeArea(
            top: true,
            bottom: true,
            left: true,
            right: true,
            child: Container(
              color: Colors.red,
              height: 300.0,
              width: 300.0,
            ),
          ),
        ),
      ),
    );
  }
}

class MyApp10 extends StatelessWidget{
  // RowWidgetExample, 142p
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        body: SizedBox(
          height: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start, // 가로 시작
            crossAxisAlignment: CrossAxisAlignment.center, // 세로 중앙

            children: [
              const SizedBox(width: 30.0,),

              Container(
                height: 50.0,
                width: 50.0,
                color: Colors.red,
              ),

              // SizedBox는 공백을 만들 때 자주 사용한다.
              const SizedBox(width: 12.0,),

              Container(
                height: 50.0,
                width: 50.0,
                color: Colors.green,
              ),

              const SizedBox(width: 12.0,),

              Container(
                height: 50.0,
                width: 50.0,
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyApp11 extends StatelessWidget {
  // ColumnWidgetExample, 142p
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start, // 가로 시작
            crossAxisAlignment: CrossAxisAlignment.center, // 세로 중앙

            children: [
              const SizedBox(width: 30.0,),

              Container(
                height: 50.0,
                width: 50.0,
                color: Colors.red,
              ),

              // SizedBox는 공백을 만들 때 자주 사용한다.
              const SizedBox(width: 12.0,),

              Container(
                height: 50.0,
                width: 50.0,
                color: Colors.green,
              ),

              SizedBox(width: 12.0,),

              Container(
                height: 50.0,
                width: 50.0,
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyApp12 extends StatelessWidget{
  // flexible widget
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        body: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Flexible(
                flex: 1, // 남은 공간을 차지할 비율. default 1
                child: Container(
                  color: Colors.blue,
                ),
              ),

              Flexible(
                flex: 1, // 남은 공간을 차지할 비율. default 1
                child: Container(
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyApp13 extends StatelessWidget{
  // flexible widget
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        body: SizedBox(
          width: double.infinity,
          child: Stack(
            children: [
              Container(
                height: 300.0,
                width: 300.0,
                color: Colors.red,
              ),

              Container(
                height: 200.0,
                width: 200.0,
                color: Colors.yellow,
              ),

              Container(
                height: 100.0,
                width: 100.0,
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}