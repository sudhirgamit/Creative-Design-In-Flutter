import 'dart:async';
import 'package:creativedesign/Pages/dashboard.dart';
import 'package:creativedesign/Pages/loginpage.dart';
import 'package:creativedesign/Utils/constants.dart';
import 'package:creativedesign/main.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  Constants.prefs = await SharedPreferences.getInstance();
  runApp(Splash_Screen());
}

class Splash_Screen extends StatefulWidget {
  @override
  _Splash_ScreenState createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  final GlobalKey<NavigatorState> _navigatorKey = new GlobalKey<NavigatorState>();
  @override
  void initState() {
    super.initState();
    checklogin();
  }
  checklogin()
  async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    bool islogin=pref.getBool("LoggedIn");
    Timer(Duration(seconds: 5), () {
      if(islogin!=null) {
          if(islogin==true)
          {
            _navigatorKey.currentState.pushReplacementNamed('/dashboard');
          }else
          {
            _navigatorKey.currentState.pushReplacementNamed('/login');
          }
      }else {
          _navigatorKey.currentState.pushReplacementNamed('/login');
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: _navigatorKey,
      routes: <String,WidgetBuilder>{
        '/home':(BuildContext context) => new MyApp(),
        '/login':(BuildContext context) => new LoginPage(),
        '/dashboard':(BuildContext context) => new MyApp(),
      },
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.white,Colors.blueGrey],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight
              )
          ),
          child:Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ColorizeAnimatedTextKit(
                  text: ["CD"],
                  colors: [
                    Colors.orange,
                    Colors.white,
                    Colors.green,
                    Colors.blue,
                  ],
                  textStyle: TextStyle(
                    fontSize: 100,
                    fontFamily: "Times New Roman",
                    letterSpacing: 2,
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.bold,
                  ),
                  repeatForever: true,
                  isRepeatingAnimation: true,
                  speed: Duration(seconds: 1),
                  alignment: AlignmentDirectional.topStart,
                  textAlign: TextAlign.start,
                  onTap: (){},
                ),
                Divider(height: 2.5,indent: 80,endIndent: 80,color: Colors.blueGrey,thickness: 0.5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ColorizeAnimatedTextKit(
                      text: ["Creative "],
                      colors: [
                        Colors.indigo,
                        Colors.green,
                        Colors.white,
                        Colors.blue,
                      ],
                      textStyle: TextStyle(
                        fontSize: 30,
                        letterSpacing: 2,
                        fontWeight: FontWeight.bold,
                      ),
                      repeatForever: true,
                      isRepeatingAnimation: true,
                      speed: Duration(seconds: 1),
                      alignment: AlignmentDirectional.topStart,
                      textAlign: TextAlign.start,
                      onTap: (){},
                    ),

                    ColorizeAnimatedTextKit(
                      text: ["Design"],
                      colors: [
                        Colors.white,
                        Colors.blue,
                        Colors.yellow,
                        Colors.teal,
                      ],
                      textStyle: TextStyle(
                        fontSize: 30,
                        letterSpacing: 2,
                        color: Colors.teal,
                        fontWeight: FontWeight.bold,
                      ),
                      repeatForever: true,
                      isRepeatingAnimation: true,
                      speed: Duration(seconds: 1),
                      alignment: AlignmentDirectional.topStart,
                      textAlign: TextAlign.start,
                      onTap: (){},
                    ),

                  ],
                ),
                Divider(height: 2.5,indent: 80,endIndent: 80,color: Colors.black,thickness: 1.5,),
                ColorizeAnimatedTextKit(
                  text: ["Flutter"],
                  colors: [
                    Colors.lightBlueAccent,
                    Colors.deepOrange,
                    Colors.white,
                    Colors.teal,
                  ],
                  textStyle: TextStyle(
                      fontSize: 25,
                      letterSpacing: 2,
                      fontWeight: FontWeight.w500,
                      color: Colors.blueGrey,
                      fontStyle: FontStyle.italic
                  ),
                  repeatForever: true,
                  isRepeatingAnimation: true,
                  speed: Duration(seconds: 1),
                  alignment: AlignmentDirectional.topStart,
                  textAlign: TextAlign.start,
                  onTap: (){},
                ),
              ],
            )
          ),
        ),
      ),
    );
  }
}
