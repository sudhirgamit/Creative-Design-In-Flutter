import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Container(
          color: Colors.black12,
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Container(
              //width: view.maxWidth,
              padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
              color: Colors.black12,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      //color: Colors.blue,
                      gradient: LinearGradient(
                          colors: [Colors.lightBlueAccent,Colors.teal]
                      ),

                    ),
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Creative Design",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.white,
                        letterSpacing: 1.5,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),

                  Container(
                    width: 100,
                    height: 100,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      //color: Colors.blue,
                      gradient: LinearGradient(
                          colors: [Colors.orange,Colors.deepOrange]
                      ),

                    ),
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Creative Design",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.white,
                        letterSpacing: 1.5,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),

                  Container(
                    width: 100,
                    height: 100,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      //color: Colors.blue,
                      gradient: LinearGradient(
                          colors: [Colors.black26,Colors.blueGrey]
                      ),

                    ),
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Creative Design",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.white,
                        letterSpacing: 1.5,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
