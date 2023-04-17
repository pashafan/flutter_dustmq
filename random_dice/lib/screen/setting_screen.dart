import 'package:flutter/material.dart';
import 'package:random_dice/const/colors.dart';

class SettingScreen extends StatelessWidget{
  final double threshold;
  final ValueChanged<double> onThresholdChange;

  const SettingScreen({
    Key? key,
    required this.threshold,
    required this.onThresholdChange,
}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Row(
            children: [
              Text(
                '민감도',
                style: TextStyle(
                  color: secondaryColor,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w700
                ),
              ),
            ],
          ),
        ),

        Slider(
          min: 0.1,
          max: 10.0,
          divisions: 101, // 최대 최소간 구간 개수
          value: threshold,
          onChanged: onThresholdChange,
          label: threshold.toStringAsFixed(1), // 표싯값 ???
        ),
      ],
    );
  }
}