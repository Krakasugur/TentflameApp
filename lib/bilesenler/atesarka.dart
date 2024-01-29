import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class atesarka extends StatelessWidget {
  const atesarka({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/backgrounds/atesarka.jpg"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
