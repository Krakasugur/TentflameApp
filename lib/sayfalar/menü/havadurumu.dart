import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:tentflameapp/sayfalar/anasayfa.dart';
import 'package:tentflameapp/sayfalar/menü/pusula.dart';
import 'package:tentflameapp/sayfalar/menü/acilservisler.dart';
import 'package:tentflameapp/servisler/havaservis.dart';
import 'package:tentflameapp/modeller/modeller.dart';
import 'package:tentflameapp/bilesenler/weatherarkaplan.dart';

class havadurumu extends StatefulWidget {
  const havadurumu({super.key});

  @override
  State<havadurumu> createState() => _havadurumuState();
}

class _havadurumuState extends State<havadurumu> {

  final _weatherService = WeatherService("733ebe6041abbaeff8b2e204aa8a8466");
  Weather? _weather;



  _fetchWeather() async{
    String cityName = await _weatherService.getCurrentCity();

    try {
      final weather = await _weatherService.getWeather(cityName);
      setState(() {
        _weather = weather;
      });
    }
    catch (e) {
      print(e);
    }
  }

  String getWeatherAnimation(String? mainCondition){
    if(mainCondition == null) return 'assets/weathers/sunny.json';

    switch(mainCondition.toLowerCase()){
      case 'clouds':
      case 'mist':
      case 'smoke':
      case 'haze':
      case 'dust':
      case 'fog':
        return 'assets/weathers/clouds.json';
      case 'rain':
      case 'drizzle':
      case 'shower rain':
        return 'assets/weathers/rain.json';
      case 'thunderstorm':
        return 'assets/weathers/thunder.json';
      case 'clear':
        return 'assets/weathers/sunny.json';
      case 'snow':
        return 'assets/weathers/snow.json';
      default:
        return 'assets/weathers/sunny.json';
    }
  }


@override
  void initState() {
    super.initState();
    _fetchWeather();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/weathers/havabackground.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: Text('Hava Durumu',
        style: TextStyle(
          fontFamily: 'Fjalla',
        ),
        ),
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
                Navigator.push(context, MaterialPageRoute(builder: (context) => anasayfa()));
              },
            ),
            ListTile(
              title: Text('Hava Durumu',
              style:  TextStyle(
                fontFamily: 'Fjalla'
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
              ),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => acilservisler()));
              },
            ),
          ],
        ),
      ),),
      body: Stack(
          children: [
          weatherarkaplan(
          child: SizedBox.expand(),
    ),
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center ,


        children: [
          Align(
            alignment: Alignment.topCenter,
          child: Text(_weather?.cityName ?? "Şehir Yükleniyor...",
          style: TextStyle(
          fontSize: 30,
          fontFamily: 'Fjalla',
        ),),
        ),

        Lottie.asset(getWeatherAnimation(_weather?.mainCondition ?? "")),


                 Text('${_weather?.temperature.round()}°C',style: TextStyle(
                 fontSize: 30,
                 fontFamily: 'Fjalla',

        ),),


          Text(_weather?.mainCondition ?? "",
          style: TextStyle(
            fontFamily: 'Fjalla',
            fontSize: 30,
          ),),

      ],),
      ),
      ],
      ),

    );
  }
}
