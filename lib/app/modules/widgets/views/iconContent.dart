import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/widgets_controller.dart';

class IconContent extends StatelessWidget {
  const IconContent({super.key, required this.icon, required this.Label});

  final IconData? icon;
  final String Label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.white,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(Label,
            style: TextStyle(
              fontSize: 18.0,
              color: Color(0xFF8D8E98),
            ))
      ],
    );
  }
}
const TextStyleCm = TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 50.0,
                        );
