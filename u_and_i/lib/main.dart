import 'package:flutter/material.dart';
import 'package:u_and_i/screen/home_screen.dart';

void main(){
  runApp(
    MaterialApp(
      home: HomeScreen(),
    )
  );
}

class _DDay extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Text('D-Day Widget');
  }
}

class _CoupleImage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Text('Couple Image Widget');
  }
}