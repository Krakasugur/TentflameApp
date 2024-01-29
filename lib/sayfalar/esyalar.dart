import 'package:flutter/material.dart';
import 'package:tentflameapp/bilesenler/esyalararka.dart';
import 'package:tentflameapp/sayfalar/data.dart';


class Esyalar extends StatelessWidget {
  const Esyalar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(

          children: <Widget>[
            esyalararka(),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Eşyalar',
                          style: TextStyle(
                            fontFamily: 'Fjalla',
                            fontSize: 40,
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(height: 40),

                        Text(
                          'Hangi Eşyalar Bulunmalı?',
                          style: TextStyle(
                            fontFamily: 'Exo',
                            fontSize: 31,
                            color: Colors.black54,
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Divider(color: Colors.black38),
                        SizedBox(height: 50),
                    Text(
                      "Barınma Ekipmanları:\n"
                          "1. Çadır: Uyku ve konfor için kullanılır. Mevsimlere uygun modelleri mevcuttur.\n\n"
                          "2. Uyku Tulumu: Isıyı korur, rahat bir uyku sağlar. Mevsime uygun tulum seçimi önemlidir.\n\n"
                          "3. Çadır Altı (Groundsheet): Çadırın altını korur, nemden izole eder.\n\n"
                          "Ateş ve Pişirme Malzemeleri:\n\n"
                          "1. Kamp Ocağı ve Yakıt: Yemek pişirirken veya su kaynatırken kullanılır. Farklı yakıt türleri mevcuttur.\n\n"
                          "2. Yemek Malzemeleri ve Tencere-Tava Seti: Basit yemekler yapmak için gereklidir.\n\n"
                          "Kişisel Eşyalar:\n\n"
                          "1. Giysiler: Mevsime uygun giysiler ve yedek kıyafetler.\n\n"
                          "2. Aydınlatma: El feneri, kafa lambası veya çadır lambası gibi.\n\n"
                          "3. Kişisel Hijyen Malzemeleri: Diş fırçası, sabun, havlu vb.\n\n"
                          "Güvenlik ve İlk Yardım Ekipmanları:\n\n"
                          "1. İlk Yardım Kiti: Küçük yaralanmalar için.\n\n"
                          "2. Harita ve Pusula: Yol bulmada yardımcı olur.\n\n"
                          "3. Bıçak ve Çakı: Acil durumlarda kullanılır.\n\n"
                          "Doğa Etkinlikleri İçin Gereçler:\n\n"
                          "1. Dağcılık Ekipmanları: Halat, kask, karabina gibi.\n\n"
                          "2. Balıkçılık Malzemeleri: Olta, yemler, olta takımı.\n\n"
                          "3. Gözlem Malzemeleri: Teleskop, dürbün gibi.\n\n",

                    maxLines: 60,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontFamily: 'Avenir',
                            fontSize: 20,
                            color: Colors.black87,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 32),
                        Divider(color: Colors.black38),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 32.0),
                    child: Text(
                      'Görseller',
                      style: TextStyle(
                        fontFamily: 'Avenir',
                        fontSize: 25,
                        color: const Color(0xff47455f),
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Container(
                    height: 250,
                    padding: const EdgeInsets.only(left: 32.0),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: Data.assets.length,
                      itemBuilder: (context, index) {
                        return Card(
                          clipBehavior: Clip.antiAlias,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: AspectRatio(
                            aspectRatio: 1,
                            child: Image.asset(
                              Data.assets[index],
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),

            IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
