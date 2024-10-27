import 'package:another_stepper/dto/stepper_data.dart';
import 'package:flutter/material.dart';
import 'package:hackaton_foodapp/Utils/constants/colors.dart';

List<StepperData> stepperData = [
  StepperData(
      subtitle: StepperText('Confirmed',
          textStyle: TextStyle(fontSize: 17, color: White.withOpacity(0.7))),
      iconWidget: Container(
        decoration: BoxDecoration(
          color: White,
          shape: BoxShape.circle,
        ),
      )),

  StepperData(
      subtitle: StepperText('Processing',
          textStyle: TextStyle(fontSize: 17, color: White.withOpacity(0.7))),
      iconWidget: Container(
        decoration: BoxDecoration(
          color: White,
          shape: BoxShape.circle,
        ),
      )),

  StepperData(
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
      title: StepperText('Delivered',
          textStyle: TextStyle(fontSize: 17, color: White.withOpacity(0.7))),
      iconWidget: Container(
        decoration: BoxDecoration(
          color: White,
          shape: BoxShape.circle,
        ),
      )),
];
