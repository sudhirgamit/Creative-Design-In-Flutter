import 'package:creativedesign/Authentication/signup_1.dart';
import 'package:creativedesign/Pages/creative_design.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login_1 extends StatefulWidget {
  @override
  _Login_1State createState() => _Login_1State();
}
class _Login_1State extends State<Login_1> {
  String checkemail=""; String checkpassword="";
  TextEditingController _email = new TextEditingController();
  bool _emailvalid = true;
  _emailvalidation(String val){
    _emailvalid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(val);
  }
  TextEditingController _password = new TextEditingController();
  bool _passwordvalid = true; bool show_hide=true;
  _passwordvalidation(String val){
    _passwordvalid = RegExp(r"^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}").hasMatch(val);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 3),
                          child: IconButton(
                            onPressed: (){
                              setState(() {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Creative_Design()));
                              });
                            },
                            icon: Icon(Icons.arrow_back,color: Colors.white,size: 25,),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 10),
                          child: MaterialButton(
                            onPressed: (){
                              setState(() {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp_1()));
                              });
                            },
                            child: Text("Sign up", style: TextStyle(fontWeight: FontWeight.w400,color: Colors.white,fontSize: 25),),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15,),
                    Container(
                      child: Text("Log in",
                          style: TextStyle(fontWeight: FontWeight.w700,color: Colors.white,fontSize: 35)
                      ),
                    ),
                    SizedBox(height: 20,),
                    CircleAvatar(
                      maxRadius: 70,
                      backgroundImage: NetworkImage("https://images.unsplash.com/photo-1503249023995-51b0f3778ccf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30,),
            Expanded(
                flex: 2,
                child: SingleChildScrollView(
                  child: Form(
                    child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Column(
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
                                  hintText: "Email",
                                  hintStyle: TextStyle(color: Colors.white,fontSize: 18),
                                  prefix: Text("    "),
                                  errorText: _emailvalid!=true ? "Enter valid email id" : "",
                                  border: OutlineInputBorder( borderRadius: BorderRadius.all(Radius.circular(50))),
                                  errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.white,width: 1.5,style: BorderStyle.solid),
                                      borderRadius: BorderRadius.all(Radius.circular(50))
                                  ),
                                  focusedErrorBorder: _emailvalid!=true ?
                                  OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(50)),borderSide: BorderSide(color: Colors.red,width: 1.5,style: BorderStyle.solid)):
                                  OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(50)),borderSide: BorderSide(color: Colors.white,width: 1.5,style: BorderStyle.solid))
                              ),
                              style: TextStyle(
                                  color: _emailvalid!=true ? Colors.red :Colors.white,
                                  fontSize: 20,fontWeight: FontWeight.w700
                              ),
                            ),
                            SizedBox(height: 5,),
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
                                  hintText: "Password",
                                  hintStyle: TextStyle(color: Colors.white,fontSize: 18),
                                  prefix: Text("    "),
                                  errorText: _passwordvalid!=true ? "Enter valid password" : "",
                                  suffixIcon: Container(
                                    padding: EdgeInsets.only(top: 15,right: 10),
                                    child: Text("Forgot? ",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.w500),),
                                  ),
                                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(50))),
                                  errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.white,width: 1.5,style: BorderStyle.solid),
                                      borderRadius: BorderRadius.all(Radius.circular(50))
                                  ),
                                  focusedErrorBorder: _passwordvalid!=true ?
                                  OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(50)),borderSide: BorderSide(color: Colors.red,width: 1.5,style: BorderStyle.solid)):
                                  OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(50)),borderSide: BorderSide(color: Colors.white,width: 1.5,style: BorderStyle.solid))
                              ),
                              style: TextStyle(
                                  color: _passwordvalid!=true ? Colors.red :Colors.white,
                                  fontSize: 20,fontWeight: FontWeight.w700
                              ),
                            ),
                            SizedBox(height: 20,),
                            CupertinoButton(
                              onPressed: (){},
                              color: Colors.lightGreen,
                              child: Text("Log in",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 20,letterSpacing: 1),),
                              padding: EdgeInsets.symmetric(horizontal: 128,vertical: 22),
                              borderRadius: BorderRadius.all(Radius.circular(50)),
                            )
                          ],
                        )
                    ),
                  ),
                )
            ),
          ],
        )
      ),
    );
  }
}
