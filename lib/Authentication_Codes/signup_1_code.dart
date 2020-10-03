import 'package:creativedesign/Pages/creative_design.dart';
import 'package:flutter/material.dart';
import 'package:widget_with_codeview/syntax_highlighter.dart';

class SignUp_1_Code extends StatelessWidget {
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
        title: Text("SignUp 1",style: TextStyle(color: Colors.black),),
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
import 'package:creativedesign/Authentication/login_1.dart';
import 'package:creativedesign/Pages/creative_design.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUp_1 extends StatefulWidget {
  @override
  _SignUp_1State createState() => _SignUp_1State();
}
class _SignUp_1State extends State<SignUp_1> {
  TextEditingController _name = new TextEditingController();
  String checkname="";  String checkemail=""; String checkpassword="";
  bool _namevalid = true;
  _namevalidation(String val){
    _namevalid = RegExp("^[a-zA-Z]{3,}").hasMatch(val);
  }
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
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
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
                        child: InkWell(
                          onTap: (){
                            setState(() {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Login_1()));
                            });
                          },
                          child: Text("Log in",
                            style: TextStyle(fontWeight: FontWeight.w400,color: Colors.white,fontSize: 20),),
                        )
                    ),
                  ],
                ),
                SizedBox(height: 25,),
                Container(
                  child: Column(
                    children: <Widget>[
                      Text("Create your",
                          style: TextStyle(fontWeight: FontWeight.w700,color: Colors.white,fontSize: 35)
                      ),
                      Text("account",
                          style: TextStyle(fontWeight: FontWeight.w700,color: Colors.white,fontSize: 35)
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30,),
                Form(
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
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
                                hintText: "Your name",
                                hintStyle: TextStyle(color: Colors.white,fontSize: 18),
                                prefix: Text("    "),
                                errorText: _namevalid!=true ? "Enter valid name" : "",
                                border: OutlineInputBorder( borderRadius: BorderRadius.all(Radius.circular(50))),
                                errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white,width: 1.5,style: BorderStyle.solid),
                                    borderRadius: BorderRadius.all(Radius.circular(50))
                                ),
                                focusedErrorBorder: _namevalid!=true ?
                                OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(50)),borderSide: BorderSide(color: Colors.red,width: 1.5,style: BorderStyle.solid)):
                                OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(50)),borderSide: BorderSide(color: Colors.white,width: 1.5,style: BorderStyle.solid))
                            ),
                            style: TextStyle(
                                color: _namevalid!=true ? Colors.red :Colors.white,
                                fontSize: 20,fontWeight: FontWeight.w700
                            ),
                          ),
                          SizedBox(height: 5,),
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
                                suffixIcon: show_hide ? IconButton(icon: Icon(Icons.visibility_off,color: Colors.white,),onPressed: (){setState(() {show_hide=false;});},)
                                    : IconButton(icon: Icon(Icons.visibility,color: Colors.white,),onPressed: (){setState(() {show_hide=true;});},),
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
                            child: Text("Join Us",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 20,letterSpacing: 1),),
                            padding: EdgeInsets.symmetric(horizontal: 120,vertical: 22),
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                          ),
                          SizedBox(height: 20,),
                          Container(
                            child: Column(
                              children: <Widget>[
                                Text("By pressing \"Join Us\" you agree to",
                                    style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white,fontSize: 12)
                                ),
                                Text("our terms & conditions ",
                                    style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white,fontSize: 12)
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                  ),
                )
              ],
            )
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
