import 'package:flutter/material.dart';
import 'package:tentflameapp/sayfalar/cadir.dart';
import 'package:tentflameapp/sayfalar/esyalar.dart';
import 'package:tentflameapp/sayfalar/ates.dart';


class materialWidget extends StatefulWidget {
 final String materialName;
 final String image;
 final String description;

  materialWidget(this.materialName, this.image, this.description);

  @override
  State<materialWidget> createState() => _materialWidgetState();
}

class _materialWidgetState extends State<materialWidget> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 100, bottom: 30),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40.0),
              ),
              color: Colors.white,
              child: Container(
                width: double.infinity,
                height: size.height,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 80),
                      Text(
                        widget.materialName,
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(height: 20),
                      Text(
                        widget.description,
                        style: TextStyle(color: Colors.black54),
                        textAlign: TextAlign.start,
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: () {
                          if (widget.materialName == "Eşyalar") {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Esyalar()),
                            );
                          } else if (widget.materialName == "Ateş") {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Ates()),
                            );
                          } else if (widget.materialName == "Çadır") {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Cadir()),
                            );
                          }
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Daha Fazla',
                              style: TextStyle(
                                fontFamily: 'Avenir',
                                fontSize: 15,
                                color: Colors.blue,
                                fontWeight: FontWeight.w400,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.blue,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Image.asset(
              widget.image,
              width: 180,
            ),
          ),
        ],
      ),
    );
  }
}
