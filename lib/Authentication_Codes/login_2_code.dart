import 'package:creativedesign/Pages/creative_design.dart';
import 'package:flutter/material.dart';
import 'package:widget_with_codeview/syntax_highlighter.dart';

class Login_2_Code extends StatelessWidget {
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
        title: Text("Login 2",style: TextStyle(color: Colors.black),),
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
import 'package:creativedesign/Pages/creative_design.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Login_2 extends StatefulWidget {
  @override
  _Login_2State createState() => _Login_2State();
}
class _Login_2State extends State<Login_2> {
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
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                alignment: AlignmentDirectional.topStart,
                child: IconButton(
                  onPressed: (){
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Creative_Design()));
                    });
                  },
                  icon: Icon(Icons.arrow_back,size: 25,),
                ),
              ),
              Container(
                alignment: AlignmentDirectional.topStart,
                padding: EdgeInsets.only(left: 30,top: 100),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Login",style: TextStyle(fontWeight: FontWeight.w700,color: Colors.white,fontSize: 40,letterSpacing: 1,shadows: [BoxShadow(color: Colors.red,blurRadius: 13)]),),
                    SizedBox(height: 5,),
                    Text("Please sign in to continue",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black54,fontSize: 18,letterSpacing: 1),),
                  ],
                ),
              ),
              Form(
                child: Container(
                  alignment: AlignmentDirectional.topStart,
                  padding: EdgeInsets.only(left: 30,top: 20,right: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
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
                            labelStyle: TextStyle(color: Colors.grey,fontSize: 18),
                            prefixIcon: Icon(Icons.email),
                            hoverColor: Colors.teal, fillColor: Colors.white,filled: true,
                            enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey,width: 1.5,style: BorderStyle.solid),),
                            errorText: _emailvalid!=true ? "Enter valid email id" : "",
                            border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black12,width: 1.5,style: BorderStyle.solid),),
                            errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black12,width: 1.5,style: BorderStyle.solid),
                            ),
                            focusedErrorBorder: _emailvalid!=true ?
                            OutlineInputBorder(borderSide: BorderSide(color: Colors.red,width: 1.5,style: BorderStyle.solid)):
                            OutlineInputBorder(borderSide: BorderSide(color: Colors.black12,width: 1.5,style: BorderStyle.solid))
                        ),
                        style: TextStyle(
                            color: _emailvalid!=true ? Colors.red :Colors.grey,
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
                            labelText: "Password",
                            labelStyle: TextStyle(color: Colors.grey,fontSize: 18),
                            prefixIcon: Icon(Icons.lock),
                            errorText: _passwordvalid!=true ? "Enter valid password" : "",
                            suffixIcon: Container(
                              padding: EdgeInsets.only(top: 15,right: 10),
                              child: Text("Forgot? ",style: TextStyle(fontSize: 18,color: Colors.orangeAccent,fontWeight: FontWeight.w500),),
                            ),
                            border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black12,width: 1.5,style: BorderStyle.solid),),
                            errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black12,width: 1.5,style: BorderStyle.solid),
                            ),
                            focusedErrorBorder: _passwordvalid!=true ?
                            OutlineInputBorder(borderSide: BorderSide(color: Colors.red,width: 1.5,style: BorderStyle.solid)):
                            OutlineInputBorder(borderSide: BorderSide(color: Colors.black12,width: 1.5,style: BorderStyle.solid))
                        ),
                        style: TextStyle(
                            color: _passwordvalid!=true ? Colors.red :Colors.grey,
                            fontSize: 20,fontWeight: FontWeight.w700
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        alignment: AlignmentDirectional.center,
                        width: 150,height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            gradient: LinearGradient(
                              colors: [Colors.red,Colors.orange],
                            ),
                            boxShadow: [BoxShadow(
                              color: Colors.grey,
                              blurRadius: 13,offset: Offset(2.5,4.5)
                            )]
                        ),
                        child: InkWell(
                          onTap: (){},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "LOGIN",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 20,letterSpacing: 1),
                              ),
                              SizedBox(width: 10,),
                              Icon(Icons.arrow_forward,color: Colors.white,)
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Don't have an account?",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
            InkWell(
                onTap: (){
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp_2()));
                  });
                },
                child: Text(" Sign up",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Colors.orangeAccent),)
            ),
          ],
        ),
      )
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
