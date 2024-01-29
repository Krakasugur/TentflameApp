import 'package:flutter/material.dart';
import 'package:tentflameapp/sayfalar/menü/havadurumu.dart';
import 'package:tentflameapp/sayfalar/menü/pusula.dart';
import 'package:tentflameapp/sayfalar/menü/acilservisler.dart';
import 'package:tentflameapp/bilesenler/arkaplan.dart';
import 'package:flutter/cupertino.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:tentflameapp/sayfalar/materialWidget.dart';

class anasayfa extends StatefulWidget {
  @override
  _anasayfaState createState() => _anasayfaState();
}

class _anasayfaState extends State<anasayfa> {

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
        centerTitle: true,
        title: Text('Ana Sayfa',
        style: TextStyle(
          fontFamily: 'Fjalla',
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
              ),),
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
      body: Stack(
        children: [
          arkaplan(child: Container(), ),
          Container(
            child: SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          child: CarouselSlider(
                            options: CarouselOptions(
                              autoPlay: false,
                              aspectRatio: 1.0,
                              enlargeCenterPage: true,
                              viewportFraction: 0.6,
                            ),
                            items: [
                              materialWidget("Çadır", "assets/homeassets/tent.png", "Çadır Nasıl Kurulur?"),
                              materialWidget("Ateş", "assets/homeassets/fire.png", "Ateş Nasıl Yakılır?"),
                              materialWidget("Eşyalar", "assets/homeassets/items.png", "Hangi Malzemeler Bulunmalı?"),
                            ],
                          ),
                        ),
                        SizedBox(height: 20,),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}