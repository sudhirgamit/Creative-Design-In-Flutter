import 'package:creativedesign/Widgets/textformfields.dart';
import 'package:flutter/material.dart';
import 'package:widget_with_codeview/syntax_highlighter.dart';

class TextFormFields_Code extends StatelessWidget {
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
        title: Text("TextFormField",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>TextFormFields()));
          },
          icon: Icon(Icons.arrow_back_ios,size: 20,color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){
              //Navigator.push(context, MaterialPageRoute(builder: (context)=>Text_Box()));
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
import 'package:creativedesign/Codes/textformfields_code.dart';
import 'package:creativedesign/Pages/homepage.dart';
import 'package:flutter/material.dart';

class TextFormFields extends StatefulWidget {
  @override
  _TextFormFieldsState createState() => _TextFormFieldsState();
}
class _TextFormFieldsState extends State<TextFormFields> {
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
  final _scaffoldkey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("TextFormField",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
          },
          icon: Icon(Icons.arrow_back_ios,size: 20,color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>TextFormFields_Code()));
            },
            icon: Icon(Icons.transfer_within_a_station,size: 25,color: Colors.black),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 60,right: 10,left: 10,bottom: 10),
          child: Form(
            //autovalidate: true,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Student Information Form",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w600),),
                Divider(thickness: 1.5,color: Colors.blueGrey,indent: 20,endIndent: 20,height: 30,),
                TextFormField(
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
                TextFormField(
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
                TextFormField(
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
                SizedBox(height: 25,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Sign up",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30),),
                    SizedBox(width: 20,),
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
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context)=>SimpleDialog(
                                    title: Text("User Information"),
                                    children: <Widget>[
                                      ListTile(
                                        leading: Icon(Icons.person),
                                        title: Text(_name.text),
                                        onTap: (){},
                                      ),
                                      ListTile(
                                        leading: Icon(Icons.email),
                                        title: Text(_email.text),
                                        onTap: (){},
                                      ),
                                      ListTile(
                                        leading: Icon(Icons.lock),
                                        title: Text(_password.text),
                                        onTap: (){},
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: <Widget>[
                                          FlatButton(
                                            child: Text("Cancel",style: TextStyle(color: Colors.red),),
                                            onPressed: (){
                                              Navigator.pop(context,"Cancel");
                                            },
                                          ),
                                          FlatButton(
                                            child: Text("Ok",style: TextStyle(color: Colors.black),),
                                            onPressed: (){
                                              Navigator.pop(context,"Ok");
                                            },
                                          )
                                        ],
                                      )
                                    ],
                                  )
                              );
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
              ],
            ),
          ),
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
    );;
  }
}
