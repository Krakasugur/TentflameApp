import 'package:flutter/material.dart';



class arkaplan extends StatelessWidget {
  final Widget child;

  const arkaplan({
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
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 15,
            right: 100,
            child: Image.asset(
              "assets/icons/pngegg.png",
              width: size.width * 0.50,
            ),
          ),
          Positioned(
            top: 130,
            right: 90,
            child: Text(
              'TENTFLAME',
              style: TextStyle(
                fontSize: 35,
                fontFamily: 'Bungee',
                color: Colors.white,
              ),
            ),
          ),
          child,
        ],
      ),
    );
  }
}
