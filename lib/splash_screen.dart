import 'dart:async';
import 'package:creativedesign/Pages/loginpage.dart';
import 'package:creativedesign/Utils/constants.dart';
import 'package:creativedesign/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
//import 'package:animated_text_kit/animated_text_kit.dart';

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
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp
    ]);
    return MaterialApp(
      navigatorKey: _navigatorKey,
      routes: <String,WidgetBuilder>{
        '/home':(BuildContext context) => new MyApp(),
        '/login':(BuildContext context) => new LoginPage(),
        '/dashboard':(BuildContext context) => new MyApp(),
      },
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.white,Colors.blueGrey],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight
                  ),
                image: DecorationImage(
                  image: AssetImage("assets/splash.png"),
                )
              ),
            ),
          ),
        ),
      ),
    );
  }
}
