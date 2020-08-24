import 'dart:io';
import 'package:creativedesign/Pages/homepage.dart';
import 'package:creativedesign/Pages/registerpage.dart';
import 'package:creativedesign/Utils/constants.dart';
import 'package:creativedesign/card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _name = new TextEditingController();
  String checkname="";  String checkemail=""; String checkpassword="";

  TextEditingController _email = new TextEditingController();
  bool _emailvalid = true;
  _emailvalidation(String val){
    // Remove Comment : V
    _emailvalid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(val);
    //print(_emailvalid);
  }

  TextEditingController _password = new TextEditingController();
  bool _passwordvalid = true; bool show_hide=true;
  _passwordvalidation(String val){
    // Remove Comment : V
    _passwordvalid = RegExp(r"^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}").hasMatch(val);
    //print(_passwordvalid);
  }

  // BackPress Button
  Future<bool> onBackPress() {
    return showDialog<bool>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Exit App?'),
          content: Container(
            height: 30,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: Text(
                    'Do you want to exit an app?',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w300
                    ),
                  ),
                ),

              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('CANCEL'),
              onPressed: () {
                setState(() {
                  Navigator.pop(context);
                });
              },
            ),
            FlatButton(
              child: Text('OK',style: TextStyle(color:Colors.red,fontSize: 15),),
              onPressed: () {
                exit(0);
              },
            ),
          ],
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp
    ]);
    return WillPopScope(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Login",
        theme: ThemeData(
            primarySwatch: Colors.blueGrey
        ),
        home: Scaffold(
            backgroundColor: Colors.white,
            appBar: null,
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: Column(
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        //MyCard(),
                        Container(
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width,
                          color: Colors.white,
                        ),
                        Container(
                          height: 230, width: 230,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(bottomRight: Radius.circular(250)),
                              gradient: LinearGradient(
                                colors: [Colors.deepOrangeAccent,Colors.orangeAccent,],
                              ),
                              boxShadow: [BoxShadow(
                                  color: Colors.deepOrangeAccent,
                                  blurRadius: 12,
                                  spreadRadius: 1.0
                              )]
                          ),
                        ),
                        Positioned(
                          bottom: 0,top: 400,left: 120,right: 0,
                          child: Container(
                            height: 100, width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(250)),
                                gradient: LinearGradient(
                                  colors: [Colors.lightBlueAccent,Colors.blueAccent,],
                                ),
                                boxShadow: [BoxShadow(
                                    color: Colors.blueAccent,
                                    blurRadius: 7,
                                    spreadRadius: 1.0
                                )]
                            ),
                          ),
                        ),

                        Positioned(
                          left: 27,right: 200,top: 100,bottom: 0,
                          child: Text("Sign in",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 30),),
                        ),
                        Positioned(
                          left: 27,right: 200,top: 130,bottom: 0,
                          child: Text("Sign in to continue",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 18),),
                        ),
                        Positioned(
                          left: 320,right: 0,top: 30,bottom: 0,
                          child: InkWell(
                              splashColor: Colors.blueAccent,
                              onTap: (){
                                setState(() {
                                  Constants.prefs.setBool("LoggedIn", true);
                                  Constants.prefs.setString("Key", "Guest");
                                  Constants.prefs.setString("Name", "Guest");
                                  Constants.prefs.setString("Email", "guest@gmail.com");
                                  Navigator.pushReplacementNamed(context, "/dashboard");
                                });
                              },
                              child: Text(
                                "Skip",
                                style: TextStyle(color: Colors.black87,fontWeight: FontWeight.w600,fontSize: 20),)),
                        ),
                        Positioned(
                          left: 10,right: 10,top: 220,bottom: 30,
                          child: SingleChildScrollView(
                            child: Form(
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  //mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    TextField(
                                      onChanged: (String value){
                                        setState(() {
                                          _emailvalidation(value);
                                          checkemail=value;
                                        });
                                      },
                                      controller: _email,
                                      keyboardType: TextInputType.emailAddress,
                                      decoration: InputDecoration(
                                          labelText: "Email",
                                          labelStyle: TextStyle(color: Colors.black,fontSize: 18),
                                          //prefixIcon: _namevalid!=true ? Icon(Icons.person,color: Colors.red,): Icon(Icons.person,color: Colors.grey,),
                                          errorText: _emailvalid!=true ? "Please enter valid email" : "",
                                          //suffixIcon: _emailvalid!=true ? null : Icon(Icons.done,color: checkemail=="" ? Colors.transparent : Colors.grey,),
                                          border: UnderlineInputBorder(),
                                          errorBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(color: Colors.grey,width: 1.5,style: BorderStyle.solid)
                                          ),
                                          focusedErrorBorder: _emailvalid!=true ?
                                          UnderlineInputBorder(borderSide: BorderSide(color: Colors.red,width: 1.5,style: BorderStyle.solid)):
                                          UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey,width: 1.5,style: BorderStyle.solid))
                                      ),
                                      style: TextStyle(
                                          color: _emailvalid!=true ? Colors.red :Colors.grey,
                                          fontSize: 20,fontWeight: FontWeight.w700
                                      ),
                                    ),
                                    SizedBox(height: 10,),
                                    TextField(
                                      onChanged: (String value){
                                        setState(() {
                                          _passwordvalidation(value);
                                          checkpassword=value;
                                        });
                                      },
                                      controller: _password,
                                      keyboardType: TextInputType.visiblePassword,
                                      obscureText: show_hide ? true :false,
                                      decoration: InputDecoration(
                                          labelText: "Password",
                                          labelStyle: TextStyle(color: Colors.black,fontSize: 18),
                                          //prefixIcon: _passwordvalid!=true ? Icon(Icons.lock,color: Colors.red,): Icon(Icons.lock,color: Colors.grey,),
                                          errorText: _passwordvalid!=true ? "Please enter valid password" : "",
                                          suffixIcon: show_hide ? IconButton(icon: Icon(Icons.visibility_off,color: Colors.grey,),onPressed: (){setState(() {show_hide=false;});},)
                                              : IconButton(icon: Icon(Icons.visibility,color: Colors.grey,),onPressed: (){setState(() {show_hide=true;});},),
                                          border: UnderlineInputBorder(),
                                          errorBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(color: Colors.grey,width: 1.5,style: BorderStyle.solid)
                                          ),
                                          focusedErrorBorder: _passwordvalid!=true ?
                                          UnderlineInputBorder(borderSide: BorderSide(color: Colors.red,width: 1.5,style: BorderStyle.solid)):
                                          UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey,width: 1.5,style: BorderStyle.solid))
                                      ),
                                      style: TextStyle(
                                          color: _passwordvalid!=true ? Colors.red :Colors.grey,
                                          fontSize: 20,fontWeight: FontWeight.w700
                                      ),
                                    ),
                                    SizedBox(height: 50,),
                                    Row(
                                      children: <Widget>[
                                        Text("Login",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30),),
                                        SizedBox(width: 60,),
                                        _emailvalid==true  && _passwordvalid==true ?
                                        Container(
                                          width: 60,height: 60,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                              color: Colors.red,
                                              shape: BoxShape.circle,
                                              boxShadow: [BoxShadow(
                                                  color: Colors.red,
                                                  blurRadius: 5
                                              )]
                                          ),
                                          child: IconButton(alignment: Alignment.center,
                                            onPressed: (){
                                              setState(() {
                                                //Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                                                _email.text.trimLeft().isEmpty ? _emailvalid = false : _emailvalid = true;
                                                _password.text.trimLeft().isEmpty ? _passwordvalid = false : _password.text.length >= 8 ? _passwordvalid = true : _passwordvalid = false;

                                                if(_emailvalid == true && _passwordvalid == true){
                                                  Constants.prefs.setBool("LoggedIn", true);
                                                  Constants.prefs.setString("Name", "Sudhir Gamit");
                                                  Constants.prefs.setString("Email", _email.text);
                                                  Navigator.pushReplacementNamed(context, "/dashboard");
                                                }

                                              });
                                            },
                                            icon: Icon(
                                              Icons.trending_flat,
                                              size: 30,color: Colors.white,
                                            ),
                                          ),
                                        ) :
                                        Container(
                                          width: 60,height: 60,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                              color: Colors.grey,
                                              shape: BoxShape.circle,
                                              boxShadow: [BoxShadow(
                                                  color: Colors.grey,
                                                  blurRadius: 5
                                              )]
                                          ),
                                          child: IconButton(
                                            alignment: Alignment.center,
                                            icon: Icon(
                                              Icons.trending_flat,
                                              size: 30,color: Colors.white,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 50,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: <Widget>[
                                        Text("Don't have an account? ",style: TextStyle(fontSize: 16,color: Colors.white),),
                                        InkWell(
                                            onTap:(){
                                              setState(() {
                                                Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterPage()));
                                              });} ,
                                            child: Text(
                                              "Sign up",
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w600
                                              ),
                                            )
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
        ),
      ),
      onWillPop: onBackPress,
    );
  }
}
