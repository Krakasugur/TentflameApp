import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class esyalararka extends StatelessWidget {
  const esyalararka({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/backgrounds/esyalararka.jpg"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
