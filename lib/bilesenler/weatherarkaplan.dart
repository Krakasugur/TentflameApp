import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class weatherarkaplan extends StatelessWidget {
  final Widget child;

  const weatherarkaplan({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/weathers/havabackground.jpg"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
