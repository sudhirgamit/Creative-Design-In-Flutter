import 'package:creativedesign/Pages/creative_design.dart';
import 'package:flutter/material.dart';
import 'package:widget_with_codeview/syntax_highlighter.dart';

class Login_3_Code extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final SyntaxHighlighterStyle style =
    Theme.of(context).brightness == Brightness.dark
        ? SyntaxHighlighterStyle.darkThemeStyle()
        : SyntaxHighlighterStyle.lightThemeStyle();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Login 3",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Creative_Design()));
          },
          icon: Icon(Icons.arrow_back_ios,size: 20,color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){
              //launch("https://github.com/sudhirgamit/Creative-Design-In-Flutter/blob/master/lib/Async/future_builders.dart");
            },
            icon: Icon(Icons.share,size: 20,color: Colors.black),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: SelectableText.rich(
            TextSpan(
              style: TextStyle(fontFamily: 'monospace', fontSize: 12.0,decoration: TextDecoration.none,fontWeight: FontWeight.w500,)
                  .apply(fontSizeFactor: 1.1),
              children: <TextSpan>[
                DartSyntaxHighlighter(style).format("""
import 'package:creativedesign/Authentication/signup_2.dart';
import 'package:creativedesign/Authentication/signup_3.dart';
import 'package:creativedesign/Pages/creative_design.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Login_3 extends StatefulWidget {
  @override
  _Login_3State createState() => _Login_3State();
}
class _Login_3State extends State<Login_3> {
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
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          alignment: AlignmentDirectional.centerEnd,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                color: Colors.white,
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    InkWell(
                      onTap: (){
                        setState(() {
                          Navigator.push(context, MaterialPageRoute(builder: (contexr)=>SignUp_3()));
                        });
                      },
                      child: RotatedBox(
                        quarterTurns: 3,
                        child: Text("Sign Up",style: TextStyle(fontSize: 25,letterSpacing: 1,fontWeight: FontWeight.w700),),
                      ),
                    ),
                    Divider(color: Colors.teal,thickness: 3.5,height: 50,),
                    Icon(FontAwesomeIcons.facebookF,color: Colors.blue,),
                    SizedBox(height: 20,),
                    Icon(FontAwesomeIcons.google,color: Colors.green,),
                    SizedBox(height: 20,),
                    Icon(FontAwesomeIcons.instagram,color: Colors.red,)
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),
                boxShadow: [BoxShadow(
                  color: Colors.grey,
                  blurRadius: 8,spreadRadius: 1.5
                )]
              ),
              height: MediaQuery.of(context).size.height-150,
              width: MediaQuery.of(context).size.width-60,
              child: SingleChildScrollView(
                child: Form(
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(top: 50),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Sign In",style: TextStyle(fontSize: 35,letterSpacing: 1,fontWeight: FontWeight.w700,color: Colors.white),),
                                SizedBox(height: 6,),
                                Text("Welcome, to creative design and sign in.",style: TextStyle(fontSize: 16,letterSpacing: 1,fontWeight: FontWeight.w700,color: Colors.white),),
                              ],
                            ),
                          ),
                          SizedBox(height: 50,),
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
                                hintStyle: TextStyle(color: Colors.white,fontSize: 16),
                                prefixIcon: Icon(FontAwesomeIcons.mailBulk,color: Colors.white,),
                                errorText: _emailvalid!=true ? "Enter valid email id" : "",
                                border: UnderlineInputBorder(),
                                errorBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white,width: 1.5,style: BorderStyle.solid),
                                ),
                                focusedErrorBorder: _emailvalid!=true ?
                                UnderlineInputBorder(borderSide: BorderSide(color: Colors.red,width: 1.5,style: BorderStyle.solid)):
                                UnderlineInputBorder(borderSide: BorderSide(color: Colors.white,width: 1.5,style: BorderStyle.solid))
                            ),
                            style: TextStyle(
                                color: _emailvalid!=true ? Colors.black38 :Colors.white,
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
                                hintStyle: TextStyle(color: Colors.white,fontSize: 16),
                                prefixIcon: Icon(FontAwesomeIcons.lock,color: Colors.white,),
                                errorText: _passwordvalid!=true ? "Enter valid password" : "",
                                suffixIcon: show_hide ? IconButton(icon: Icon(Icons.visibility_off,color: Colors.white,),onPressed: (){setState(() {show_hide=false;});},)
                                    : IconButton(icon: Icon(Icons.visibility,color: Colors.white,),onPressed: (){setState(() {show_hide=true;});},),
                                border: UnderlineInputBorder(),
                                errorBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white,width: 1.5,style: BorderStyle.solid),
                                ),
                                focusedErrorBorder: _passwordvalid!=true ?
                                UnderlineInputBorder(borderSide: BorderSide(color: Colors.red,width: 1.5,style: BorderStyle.solid)):
                                UnderlineInputBorder(borderSide: BorderSide(color: Colors.white,width: 1.5,style: BorderStyle.solid))
                            ),
                            style: TextStyle(
                                color: _passwordvalid!=true ? Colors.black38 :Colors.white,
                                fontSize: 20,fontWeight: FontWeight.w700
                            ),
                          ),
                          SizedBox(height: 20,),
                          Text("Forgot Password?",style: TextStyle(fontSize: 16,letterSpacing: 1,fontWeight: FontWeight.w500,color: Colors.black45),),
                          SizedBox(height: 30,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                alignment: AlignmentDirectional.center,
                                width: 115,height: 60,
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(30),bottomLeft:Radius.circular(30)),
                                    boxShadow: [BoxShadow(
                                        color: Colors.black38,
                                        blurRadius: 10,offset: Offset(2.8,2.5)
                                    )]
                                ),
                                child: InkWell(
                                  onTap: (){
                                    setState(() {
                                      Navigator.push(context, MaterialPageRoute(builder: (contexr)=>Creative_Design()));
                                    });
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Icon(Icons.arrow_back,color: Colors.white,),
                                      SizedBox(width: 5,),
                                      Text(
                                        "BACK",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 20,letterSpacing: 1),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                alignment: AlignmentDirectional.center,
                                width: 120,height: 60,
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(30),bottomRight:Radius.circular(30)),
                                    boxShadow: [BoxShadow(
                                        color: Colors.black38,
                                        blurRadius: 10,offset: Offset(2.8,2.5)
                                    )]
                                ),
                                child: InkWell(
                                  onTap: (){},
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        "SIGNIN",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 20,letterSpacing: 1),
                                      ),
                                      SizedBox(width: 10,),
                                      Icon(Icons.arrow_forward,color: Colors.white,)
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

                """),
              ],
            ),
            style: DefaultTextStyle.of(context)
                .style
                .apply(fontSizeFactor: 1.0),
          ),
        ),
      ),
    );
  }
}
