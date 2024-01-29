import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tentflameapp/sayfalar/anasayfa.dart';
import 'package:tentflameapp/sayfalar/menü/havadurumu.dart';
import 'package:tentflameapp/sayfalar/menü/pusula.dart';
import 'package:tentflameapp/bilesenler/arkaplan.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';


class acilservisler extends StatefulWidget {
  const acilservisler({super.key});

  @override
  State<acilservisler> createState() => _acilservislerState();
}

class _acilservislerState extends State<acilservisler> {

  @override
  Widget build(BuildContext context) {
    final numberone='112';
    final numbertwo='110';
    final numberthree='155';
    final numberfour='156';
    final numberfive='177';
    double containerWidth = MediaQuery.of(context).size.width * 0.9;
    double containerHeight = MediaQuery.of(context).size.height * 0.1;


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
        centerTitle: true,
        title: Text('Acil Servisler',
          style: TextStyle(
              fontFamily: 'Fjalla'
          ),
        ),
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => anasayfa()));
                },
              ),
              ListTile(
                title: Text('Hava Durumu',
                  style: TextStyle(
                    fontFamily: 'Fjalla',
                  ),
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => havadurumu()));

                },
              ),
              ListTile(
                title: Text('Pusula',
                  style: TextStyle(
                    fontFamily: 'Fjalla',
                  ),
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => pusula()));

                },
              ),
              ListTile(
                title: Text('Acil Servisler',
                  style: TextStyle(
                    fontFamily: 'Fjalla',
                  ),),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => acilservisler()));
                },
              ),
            ],
          ),
        ),


      ),

      body:
      Stack(
        children: [
          arkaplan(
            child: SizedBox.expand(),
          ),
          Stack(
            children: [
              Positioned(
                bottom: 495,
                right: 0,
                child: Container(
                  width: 390,
                  height: 100,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadiusDirectional.circular(16.0),
                    color: Colors.white54,
                  ),
                  margin: EdgeInsets.all(16.0),
                  padding: EdgeInsets.all(26.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'HIZIR ACİL 112',
                        style: TextStyle(
                          fontFamily: 'Fjalla',
                          fontSize: 25,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () async {
                          await FlutterPhoneDirectCaller.callNumber(numberone);


                        },
                        child: Text(
                          'Ara',
                          style: TextStyle(
                            fontFamily: 'Dela',
                            fontSize: 20,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(110, 50),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          Stack(
            children: [
              Positioned(
                bottom: 385,
                right: 0,
                child: Container(
                  width: 390,
                  height: 100,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadiusDirectional.circular(16.0),
                    color: Colors.white54,
                  ),
                  margin: EdgeInsets.all(16.0),
                  padding: EdgeInsets.all(26.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'İTFAİYE 110',
                        style: TextStyle(
                          fontFamily: 'Fjalla',
                          fontSize: 25,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () async{
                          await FlutterPhoneDirectCaller.callNumber(numbertwo);
                        },
                        child: Text(
                          'Ara',
                          style: TextStyle(
                            fontFamily: 'Dela',
                            fontSize: 20,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(110, 50),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          Stack(
            children: [
              Positioned(
                bottom: 275,
                right: 0,
                child: Container(
                  width: 390,
                  height: 100,
                  alignment: Alignment.bottomRight,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadiusDirectional.circular(16.0),
                    color: Colors.white54,
                  ),
                  margin: EdgeInsets.all(16.0),
                  padding: EdgeInsets.all(26.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'POLİS İMDAT 155',
                        style: TextStyle(
                          fontFamily: 'Fjalla',
                          fontSize: 25,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () async {
                          await FlutterPhoneDirectCaller.callNumber(numberthree);
                        },
                        child: Text(
                          'Ara',
                          style: TextStyle(
                            fontFamily: 'Dela',
                            fontSize: 20,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(110, 50),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          Stack(
            children: [
              Positioned(
                bottom: 165,
                right: 0,
                child: Container(
                  width: 390,
                  height: 100,
                  alignment: Alignment.bottomRight,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadiusDirectional.circular(16.0),
                    color: Colors.white54,
                  ),
                  margin: EdgeInsets.all(16.0),
                  padding: EdgeInsets.all(26.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'JANDARMA 156',
                        style: TextStyle(
                          fontFamily: 'Fjalla',
                          fontSize: 25,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () async{
                          await FlutterPhoneDirectCaller.callNumber(numberfour);
                        },
                        child: Text(
                          'Ara',
                          style: TextStyle(
                            fontFamily: 'Dela',
                            fontSize: 20,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(110, 50),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          Stack(
            children: [
              Positioned(
                bottom: 55,
                right: 0,
                child: Container(
                  width: 390,
                  height: 100,
                  alignment: Alignment.bottomRight,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadiusDirectional.circular(16.0),
                    color: Colors.white54,
                  ),
                  margin: EdgeInsets.all(16.0),
                  padding: EdgeInsets.all(26.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'ORMAN YANGIN 177',
                        style: TextStyle(
                          fontFamily: 'Fjalla',
                          fontSize: 25,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: ()async {
                          await FlutterPhoneDirectCaller.callNumber(numberfive);
                        },
                        child: Text(
                          'Ara',
                          style: TextStyle(
                            fontFamily: 'Dela',
                            fontSize: 20,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(110, 50),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),

    );
  }
}
