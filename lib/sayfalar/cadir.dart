import 'package:flutter/material.dart';
import 'package:tentflameapp/sayfalar/data.dart';
import 'package:tentflameapp/bilesenler/cadirarka.dart';

class Cadir extends StatelessWidget {
  const Cadir({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(

          children: <Widget>[
            cadirarka(),
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
                          'Çadır',
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
                          'Çadır Nasıl Kurulur?',
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
                              "1.Çadır Malzemelerini Açın: İyi bir kamp alanı bulduktan sonra, çadırınızın parçalarını açma zamanı geldi. Tüm parçaları aynı anda çıkarmak en hızlı kurulumu sağlar. Her bir öğeyi tek tek çıkarmak yerine hepsini bir yerde tutun. Çünkü malzeme listesi kullanılan çadırın türüne göre değişebilir.\n\n"
                              "2.Zemin Bezini Serin: Alanı ne kadar temizlerseniz temizleyin, çadırınızı delip rahatsız edici bir zemin yapabilecek dallar ve diğer kalıntılar olabilir. Zemin bezi, çadırınızın en azından çoğunu kapsayacak kadar büyük olmalıdır. Zemin bezi, daha konforlu bir dinlenme sağlar. \n\n"
                              "3. Çadır Direklerini Yerleştirin: Tüm çadır parçalarını çıkardıktan sonra destek direklerini çadır gövdesinden geçirin. Çadırın iskelesini serin. Böylece direkleri doğru yuvalardan geçirdiğinizden emin olabilirsiniz. Bu, çadır kurulumunun en zaman alıcı kısmı olabilir ancak oldukça basittir.\n\n"
                              "4. Tünel Çadır Durumunda Direkleri Yerleştirin: Eğer tünel çadırı kullanıyorsanız, direklerin birbirine paralel olduğundan emin olun.\n\n"
                              "5. Çadırı Kurun: Destek direklerinin eklemleri varsa, onları sabitleyin. Direklerin çadırın ana gövdesine önceden yerleştirilmiş bir çerçevesi olacak. Çadırın bir kısmını kaldırarak çadıra yardım edin. Direkler çadırın çerçevesini tutmalı. Eğer tutmuyorsa, direklerin gevşek parçalarını sabitleyin veya ihtiyaca göre uzatın.\n\n"
                              "6.Çadır Çivilerini Çakın: Çadırınızla birlikte gelen çivileri bir tokmak veya yakındaki bir taşla toprağa çakın. Bu, çadırı sabitleyecek ve hareket etmesini önleyecektir. Herhangi bir nedenden dolayı çadır çivileriniz yoksa, sağlam sopalar kullanarak toprağa iterek iyileştirebilirsiniz.\n\n"
                              "7.Yağmurluk Kurulumu: Çadırlar genellikle su geçirmez değildir. İşte burada yağmurluk devreye girer. Yağmurluk, çadırın üzerine yerleştirdiğiniz ek bir parçadır. Çadırın üzerinde yağmurluk için tutacaklar olmalı. Yağmur yağmayacağından eminseniz bile kurmayı unutmayın. Tüm ekipmanınızı bir arada tutacak ve beklenmedik yağmurlara karşı hazır olmanızı sağlayacaktır.\n\n"
                              "8. Eşyalarınızı Çadıra Taşıyın: Çadır kurulduktan sonra içini donatabilirsiniz. Çadırda genellikle çok fazla yer olmadığından, hangi şeylerin dışarıda saklanacağına ve hangilerinin içeride tutulacağına karar vermelisiniz. Uyku tulumları çadırda olmalı. Kutular ve sert kasa depolama dışarıda bırakılabilir. \n\n"
                              "9.Kamp alanınızda ayı riski varsa, yiyecekleri çadırın dışında tutmanız önerilir. Eğer bir ayı gelirse, granola kokusunu aldığı için çadırınızı karıştırmasını istemezsiniz. \n\n",
                          maxLines: 100,
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
                      itemCount: Tent.assets.length,
                      itemBuilder: (context, index) {
                        return Card(
                          clipBehavior: Clip.antiAlias,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: AspectRatio(
                            aspectRatio: 1,
                            child: Image.asset(
                              Tent.assets[index],
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
