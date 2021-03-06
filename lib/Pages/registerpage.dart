import 'package:creativedesign/Pages/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController _name = new TextEditingController();
  String checkname="";  String checkemail=""; String checkpassword="";

  bool _namevalid = true;
  _namevalidation(String val){
    _namevalid = RegExp("^[a-zA-Z]{3,}").hasMatch(val);
    //print(_namevalid);
  }

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
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp
    ]);
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints view) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: "Regsiter",
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
                            Container(
                              height: view.maxHeight,
                              width: view.maxWidth,
                              color: Colors.white,
                            ),
                            Container(
                              height: view.minHeight/3, width: view.minWidth/1.8,
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
                            Stack(
                              alignment: AlignmentDirectional.bottomEnd,
                              children: <Widget>[
                                Container(
                                  height: view.maxHeight,
                                  width: view.maxWidth,
                                  color: Colors.transparent,
                                ),
                                Container(
                                  height: view.minHeight/3, width: view.minWidth/1.5,
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
                              ],
                            ),
                            Positioned(
                              left: 27,right: 0,top: view.maxHeight/7.5,bottom: 0,
                              child: Text("Sign up",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 30),),
                            ),
                            Positioned(
                              left: 27,right: 0,top: view.maxHeight/5.5,bottom: 0,
                              child: Text("Create new account",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 18),),
                            ),
                            Container(
                              height: view.maxHeight,
                              alignment: AlignmentDirectional.center,
                              //padding: EdgeInsets.only(top: view.minHeight/3.6,left: 10),
                              child: SingleChildScrollView(
                                child: Form(
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Column(
                                      children: <Widget>[
                                        TextField(
                                          onChanged: (String value){
                                            setState(() {
                                              _namevalidation(value);
                                              checkname=value;
                                            });
                                          },
                                          controller: _name,
                                          keyboardType: TextInputType.text,
                                          decoration: InputDecoration(
                                              labelText: "Name",
                                              labelStyle: TextStyle(color: Colors.black,fontSize: 18),
                                              //prefixIcon: _namevalid!=true ? Icon(Icons.person,color: Colors.red,): Icon(Icons.person,color: Colors.grey,),
                                              errorText: _namevalid!=true ? "Please enter valid name" : "",
                                              //suffixIcon: _emailvalid!=true ? null : Icon(Icons.done,color: checkemail=="" ? Colors.transparent : Colors.grey,),
                                              border: UnderlineInputBorder(),
                                              errorBorder: UnderlineInputBorder(
                                                  borderSide: BorderSide(color: Colors.grey,width: 1.5,style: BorderStyle.solid)
                                              ),
                                              focusedErrorBorder: _namevalid!=true ?
                                              UnderlineInputBorder(borderSide: BorderSide(color: Colors.red,width: 1.5,style: BorderStyle.solid)):
                                              UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey,width: 1.5,style: BorderStyle.solid))
                                          ),
                                          style: TextStyle(
                                              color: _namevalid!=true ? Colors.red :Colors.grey,
                                              fontSize: 20,fontWeight: FontWeight.w700
                                          ),
                                        ),
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
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: view.maxHeight,
                              alignment: AlignmentDirectional.bottomEnd,
                              padding: EdgeInsets.only(left: 27,bottom: 100),
                              child: Row(
                                children: <Widget>[
                                  Text("Sign up",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30),),
                                  SizedBox(width: view.minWidth/10),
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
                                          _name.text.trimLeft().isEmpty ? _namevalid = false : _name.text.length >= 3 ? _namevalid = true : _namevalid = false;
                                          _email.text.trimLeft().isEmpty ? _emailvalid = false : _emailvalid = true;
                                          _password.text.trimLeft().isEmpty ? _passwordvalid = false : _password.text.length >= 8 ? _passwordvalid = true : _passwordvalid = false;

                                          if(_namevalid == true && _emailvalid == true && _passwordvalid == true){
                                            print("Successfully registration..!");
                                          }else{
                                            print("Please try again for registration..!");
                                          }

                                        });
                                      },
                                      icon: Icon(
                                        Icons.trending_flat,
                                        size: 30,color: Colors.white,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),

                            Container(
                              height: view.maxHeight,
                              alignment: AlignmentDirectional.bottomEnd,
                              padding: EdgeInsets.only(right: 15,bottom: 40),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  Text("Have an account? ",style: TextStyle(fontSize: 16,color: Colors.white),),
                                  InkWell(
                                      onTap:(){
                                        setState(() {
                                          Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                                        });} ,
                                      child: Text(
                                        "Sign in",
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600
                                        ),
                                      )
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
            ),
          );
        }
    );
  }
}
