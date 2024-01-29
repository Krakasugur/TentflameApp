import 'package:flutter/material.dart';
import 'package:tentflameapp/bilesenler/atesarka.dart';
import 'package:tentflameapp/sayfalar/data.dart';


class Ates extends StatelessWidget {
  const Ates({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(

          children: <Widget>[
            atesarka(),
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
                          'Ateş',
                          style: TextStyle(
                            fontFamily: 'Fjalla',
                            fontSize: 40,
                            color: Colors.white70,
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(height: 40),

                        Text(
                          'Ateş Nasıl Yakılır?',
                          style: TextStyle(
                            fontFamily: 'Exo',
                            fontSize: 31,
                            color: Colors.white30,
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Divider(color: Colors.black38),
                        SizedBox(height: 50),
                        Text(
                              "1.Elbisenizin arka kısmını rüzgârı engellemek için kullanın. Eğer rüzgâr doğrudan ateşin yönüne esiyorsa ateşi yakmak zor olabilir. İşi kolaylaştırmak için diz çöküp ya da çömelmek suretiyle sırtınızı rüzgâra döndürün ve ateşi rüzgârdan koruyun.\n\n"
                              "2.Ateşinizi yakarken alevi koruyun. Kibriti çakın ya da çakmak ile ateş çıkarın. Bunları kıvılcımı tutuşturacağınız malzeme yakınında yapın ve diğer elinizle alevin etrafına kapanarak rüzgârın alevi söndürmesini engelleyin. \n\n"
                              "3.Eğer nemli koşullarda ateş yakıyorsanız, su geçirmez kibritleri kullanmayı düşünebilirsiniz. Eğer iç mekânda ateş yakıyorsanız, alevin sönmesiyle ilgili endişe etmeniz muhtemelen gerekmez.\n\n"
                              "4.Kıvılcımı yaklaşık olarak malzemenin 3 ya da 4 farklı noktasına değdirin. Malzemenin birden fazla noktasına ateş değdirirseniz, ateşiniz daha hızlı ve istikrarlı bir şekilde yakabilir. Malzeme neredeyse anında tutuşmalı, böylece ardından yakacaklar ateşi yakabilir.\n\n"
                              "5.Yakacakları tutuşturmak için malzemeye üfleyin. Eğer malzemenin alevlerinin yakacaklara ulaşamayacağını düşünüyorsanız, malzemeye çok nazikçe üfleyerek alevi yakacakların yönüne doğru yönlendirin. Yakacaklar alev aldığında daha fazla yakacak ekleyerek ateşin büyümesini sağlayabilirsiniz.\n\n"
                              "6.Eğer hâlâ yakacakları tutuşturmakta zorlanıyorsanız, muhtemelen yeterince malzemeniz yoktur. Daha fazla malzeme ekleyin ve tekrar ateşleyin.\n\n"
                              "7.Eğer hâlâ yakacakları tutuşturmakta zorlanıyorsanız, muhtemelen yeterince malzemeniz yoktur. Daha fazla malzeme ekleyin ve tekrar ateşleyin.\n\n"
                              "8.Yakacak odunu ateşe yerleştirin. Ateşinizi yakacak olan odun parçaları, bileğiniz kalınlığında olmalıdır. Bu odunlar yakacaklarla ateşi yakacaklar ve yeni yaktığınız ateşin keyfini çıkarabilirsiniz.\n\n"
                              "9.Eğer büyük kütükler eklemek istiyorsanız, daha ince olan yakacakların alev almasını bekleyin. Bu şekilde ateş, büyük kütükleri yakacak kadar oksijene sahip olacak. Aksi takdirde büyük kütükler ateşi boğabilir.\n\n",
                          maxLines: 100,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontFamily: 'Avenir',
                            fontSize: 20,
                            color: Colors.white70,
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
                        color: Colors.white,
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
                      itemCount: Fire.assets.length,
                      itemBuilder: (context, index) {
                        return Card(
                          clipBehavior: Clip.antiAlias,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: AspectRatio(
                            aspectRatio: 1,
                            child: Image.asset(
                              Fire.assets[index],
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
