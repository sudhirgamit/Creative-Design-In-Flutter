import 'package:creativedesign/Authentication/signup_4.dart';
import 'package:creativedesign/Pages/creative_design.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Login_4 extends StatefulWidget {
  @override
  _Login_4State createState() => _Login_4State();
}
class _Login_4State extends State<Login_4> {
  String checkmobile="";
  TextEditingController _mobile = new TextEditingController();
  bool _mobilevalid = true;
  _mobilevalidation(String val){
    _mobilevalid = RegExp("[6-9]{1}[0-9]{9}").hasMatch(val);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.lightGreen,Colors.green,Colors.lightGreen,]
            ),
          ),
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 20),
                  width: MediaQuery.of(context).size.width,height: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage("https://www.pngarts.com/files/4/Modern-House-Free-PNG-Image.png")
                      )
                  ),
                ),
                Text("Sign In",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300,fontSize: 40),),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: TextField(
                    controller: _mobile,
                    onChanged: (String value){
                      setState(() {
                        _mobilevalidation(value);
                      });
                    },
                    maxLength: 10,
                    style: TextStyle(
                        color: _mobilevalid!=true ? Colors.red :Colors.white,
                        fontSize: 20,fontWeight: FontWeight.w700
                    ),
                    decoration: InputDecoration(
                        labelText: "Mobile No",
                        labelStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),
                        counter: Container(),
                        fillColor: Colors.transparent,
                        filled: true,
                        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: const BorderRadius.horizontal(
                                right: Radius.circular(30)),
                            borderSide: BorderSide(color: Colors.white, width: 1.0)),
                        errorText: _mobilevalid ? null : "Please enter a valid mobile.",
                        prefixIcon: Icon(
                          Icons.phone,
                          size: 25,color: Colors.white,
                        ),
                        prefixText: "+91 ",
                        prefixStyle: TextStyle(
                          color: Colors.white,fontSize: 20,
                        ),
                        border: new OutlineInputBorder(
                            borderRadius: const BorderRadius.horizontal(
                                right: Radius.circular(30)
                            )
                        )
                    ),
                    keyboardType: TextInputType.phone,
                  )
                ),
                SizedBox(height: 5,),
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [BoxShadow(
                      color: Colors.green,
                      spreadRadius: 1.3,blurRadius: 13
                    )]
                  ),
                  child: CupertinoButton(
                    child: Icon(Icons.arrow_forward,size: 30,),
                    onPressed: (){},
                    color: Colors.teal,
                    padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: 50,width: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle
                      ),
                      child: Icon(FontAwesomeIcons.google,color: Colors.indigoAccent,),
                    ),
                    Container(
                      child: Text("Forgot?",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white),),
                    ),
                    Container(
                      height: 50,width: 50,
                      decoration: BoxDecoration(
                          color: Colors.indigoAccent,
                          shape: BoxShape.circle
                      ),
                      child: Icon(FontAwesomeIcons.facebookF,color: Colors.white,),
                    ),
                  ],
                ),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    CupertinoButton(
                      child: Text("Back",style: TextStyle(color: Colors.white ,fontSize: 25,fontWeight: FontWeight.w600)),
                      onPressed: (){
                        setState(() {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Creative_Design()));
                        });
                      },
                      color: Colors.red,
                      padding: EdgeInsets.symmetric(vertical: 18,horizontal: 33),
                      borderRadius: BorderRadius.only(topRight: Radius.circular(50),bottomRight: Radius.circular(50)),
                    ),
                    CupertinoButton(
                      child: Text("Sign Up",style: TextStyle(color: Colors.white ,fontSize: 25,fontWeight: FontWeight.w600)),
                      onPressed: (){
                        setState(() {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp_4()));
                        });
                      },
                      color: Colors.blue,
                      padding: EdgeInsets.symmetric(vertical: 18,horizontal: 22),
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(50),bottomLeft: Radius.circular(50)),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
