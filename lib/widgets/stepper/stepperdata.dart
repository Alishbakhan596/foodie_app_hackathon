import 'package:another_stepper/dto/stepper_data.dart';
import 'package:flutter/material.dart';
import 'package:hackaton_foodapp/Utils/constants/colors.dart';

List<StepperData> stepperData = [
  StepperData(
      title: StepperText('04:30 pm',
          textStyle: TextStyle(fontSize: 15, color: White.withOpacity(0.3))),
      subtitle: StepperText('Confirmed',
          textStyle: TextStyle(fontSize: 17, color: White.withOpacity(0.7))),
      iconWidget: Container(
        decoration: BoxDecoration(
          color: White,
          shape: BoxShape.circle,
        ),
      )),

  StepperData(
      title: StepperText('04:36 pm',
          textStyle: TextStyle(fontSize: 15, color: White.withOpacity(0.3))),
      subtitle: StepperText('Processing',
          textStyle: TextStyle(fontSize: 17, color: White.withOpacity(0.7))),
      iconWidget: Container(
        decoration: BoxDecoration(
          color: White,
          shape: BoxShape.circle,
        ),
      )),

  StepperData(
      title: StepperText('04:42 pm',
          textStyle: TextStyle(fontSize: 15, color: White.withOpacity(0.3))),
      subtitle: StepperText('On the way',
          textStyle: TextStyle(fontSize: 17, color: White.withOpacity(0.7))),
      iconWidget: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: White,
          shape: BoxShape.circle,
        ),
      )),

  /// final  data
  StepperData(
      title: StepperText('04:46 pm',
          textStyle: TextStyle(fontSize: 15, color: White.withOpacity(0.3))),
      subtitle: StepperText('Delivered',
          textStyle: TextStyle(fontSize: 17, color: White.withOpacity(0.7))),
      iconWidget: Container(
        decoration: BoxDecoration(
          color: White,
          shape: BoxShape.circle,
        ),
      )),
];
