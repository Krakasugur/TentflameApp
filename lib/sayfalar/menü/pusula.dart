import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_compass/flutter_compass.dart';
import 'package:tentflameapp/sayfalar/anasayfa.dart';
import 'package:tentflameapp/sayfalar/menü/havadurumu.dart';
import 'package:tentflameapp/sayfalar/menü/acilservisler.dart';

class pusula extends StatefulWidget {
  const pusula({super.key});

  @override
  State<pusula> createState() => _pusulaState();
}

class _pusulaState extends State<pusula> {
  double? heading = 0;
  @override
  void initState(){
    super.initState();
    FlutterCompass.events!.listen((event){
      setState(() {
        heading = event.heading;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/weathers/havabackground.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: Text('Pusula',
          style: TextStyle(
            fontFamily: 'Fjalla',
            color: Colors.black,

          ),
        ),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
           drawer: Drawer(
              child: Container(
                 decoration: BoxDecoration(
                   image: DecorationImage(
                   image: AssetImage('assets/weathers/havabackground.jpg'),
                  fit: BoxFit.cover,
    ),
    ),
        child: ListView(
          children: [
            ListTile(
              title: Text('Ana Sayfa',
              style: TextStyle(
                fontFamily: 'Fjalla',
              ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => anasayfa()));
              },
            ),

            ListTile(
              title: Text('Hava Durumu',
              style: TextStyle(
                fontFamily: 'Fjalla',
              ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => havadurumu()));
              },
            ),
            ListTile(
              title: Text('Pusula',
              style: TextStyle(
                fontFamily: 'Fjalla',
              ),
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => pusula()));
              },
            ),
            ListTile(
              title: Text('Acil Servisler',
              style: TextStyle(
                fontFamily: 'Fjalla',
              ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => acilservisler()));
              },
            ),
          ],
        ),
      ),),
      body:Container(
        decoration: BoxDecoration(
          image:DecorationImage(
            image: AssetImage('assets/weathers/havabackground.jpg'),
                fit: BoxFit.cover,
          ),
        ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "${heading!.ceil()}°",
            style: TextStyle(
                color: Colors.white,
                fontSize:26.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
              padding: EdgeInsets.all(18.0),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.asset("assets/icons/cadrant.png"),
                Transform.rotate(
                  angle: ((heading ?? 0) * (pi / 180) * -1),
                  child: Image.asset("assets/icons/compass.png",
                  scale: 1.1,
                  ),

                ),
              ],
            ),
          ),
        ],
      ),
      ),);
  }
}
