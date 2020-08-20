import 'package:creativedesign/Widgets/textfield_box.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:widget_with_codeview/syntax_highlighter.dart';

class TextField_Code extends StatelessWidget {
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
        title: Text("TextField Box",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>TextField_Box()));
          },
          icon: Icon(Icons.arrow_back_ios,size: 20,color: Colors.black,),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){
              launch("https://github.com/sudhirgamit/Creative-Design-In-Flutter/blob/master/lib/Widgets/textfield_box.dart");
            },
            icon: Icon(Icons.share,size: 20,color: Colors.black,),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: SelectableText.rich(
            TextSpan(
              style: TextStyle(fontFamily: 'monospace', fontSize: 12.0,decoration: TextDecoration.none,fontWeight: FontWeight.w500)
                  .apply(fontSizeFactor: 1.1),
              children: <TextSpan>[
                DartSyntaxHighlighter(style).format("""
import 'package:creativedesign/Codes/textfield_code.dart';
import 'package:creativedesign/Pages/homepage.dart';
import 'package:flutter/material.dart';

class TextField_Box extends StatefulWidget {
  @override
  _TextField_BoxState createState() => _TextField_BoxState();
}
class _TextField_BoxState extends State<TextField_Box> {
  final _scaffoldkey =new GlobalKey<ScaffoldState>();
  TextEditingController _name = new TextEditingController();
  bool _namevalid = true; String checkname=""; String checknumber="";
  String checkemail=""; String checkurl=""; String checkdate=""; String checkpassword="";
  String checkmultiline="";
  _namevalidation(String val){
    _namevalid = RegExp("^[a-zA-Z]{3,}").hasMatch(val);
    print(_namevalid);
  }
  TextEditingController _number = new TextEditingController();
  bool _numbervalid = true;
  _numbervalidation(String val){
    // First Input Number Starting Of 6 into 9 Numbers To maximum 10 Number Input
    _numbervalid = RegExp("^[6-9]{1}[0-9]{9}").hasMatch(val);
    print(_numbervalid);
  }
  TextEditingController _email = new TextEditingController();
  bool _emailvalid = true;
  _emailvalidation(String val){
    _emailvalid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(val);
    print(_emailvalid);
  }
  TextEditingController _url = new TextEditingController();
  bool _urlvalid = true;
  _urlvalidation(String val){
    if(val=="https://www.google.com" || val=="http://www.google.com"){
      _urlvalid = true;
    }else{
      _urlvalid =false;
    }
    print(_urlvalid);
  }
  TextEditingController _date = new TextEditingController();
  TextEditingController _password = new TextEditingController();
  bool _passwordvalid = true; bool show_hide=true;
  _passwordvalidation(String val){
    _passwordvalid = RegExp(r"^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}").hasMatch(val);
    print(_passwordvalid);
  }
  TextEditingController _multiline = new TextEditingController();
  bool _multilinevalid = true;
  _multilinevalidation(String val){
    _multilinevalid = RegExp("^[a-zA-Z0-9]{3}").hasMatch(val);
    print(_multilinevalid);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      appBar: AppBar(
        title: Text("TextFiled Box"),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
          },
          icon: Icon(Icons.arrow_back_ios,size: 20,),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>TextField_Code()));
            },
            icon: Icon(Icons.transfer_within_a_station,size: 25),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Only Text Input",style: TextStyle(fontSize: 20,fontFamily: "Times New Roman",fontWeight: FontWeight.w600,color: Colors.blueGrey),),
              SizedBox(height: 10,),
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
                  hintText: "Name",
                  labelText: "Name",
                  labelStyle: TextStyle(color: _namevalid!=true ? Colors.red : Colors.blue),
                  prefixIcon: _namevalid!=true ? Icon(Icons.person,color: Colors.red,): Icon(Icons.person,color: Colors.blue,),
                  errorText: _namevalid!=true ? "Please enter name" : "",
                  suffixIcon: _namevalid!=true ? null : Icon(Icons.done,color: checkname=="" ? Colors.white : Colors.blue,),
                  border: OutlineInputBorder(),
                  errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueAccent,width: 1.5,style: BorderStyle.solid)
                  ),
                  focusedErrorBorder: _namevalid!=true ?
                  OutlineInputBorder(borderSide: BorderSide(color: Colors.red,width: 1.5,style: BorderStyle.solid)):
                  OutlineInputBorder(borderSide: BorderSide(color: Colors.blueAccent,width: 1.5,style: BorderStyle.solid))
                ),
                style: TextStyle(
                  color: _namevalid!=true ? Colors.red :Colors.blue,
                  fontSize: 20
                ),
              ),
              Text("Only Number Input",style: TextStyle(fontSize: 20,fontFamily: "Times New Roman",fontWeight: FontWeight.w600,color: Colors.blueGrey),),
              SizedBox(height: 10,),
              TextField(
                onChanged: (String value){
                  setState(() {
                    _numbervalidation(value);
                    checknumber=value;
                  });
                },
                controller: _number,
                // Maximum Number Of Character or Number
                maxLength: 10,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    hintText: "Mobile No",
                    labelText: "Mobile No",
                    labelStyle: TextStyle(color: _numbervalid!=true ? Colors.red : Colors.blue),
                    prefixIcon: _numbervalid!=true ? Icon(Icons.phone,color: Colors.red,): Icon(Icons.phone,color: Colors.blue,),
                    errorText: _numbervalid!=true ? "Please enter mobile no" : "",
                    suffixIcon: _numbervalid!=true ? null : Icon(Icons.done,color: checknumber=="" ? Colors.white : Colors.blue,),
                    border: OutlineInputBorder(),
                    errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blueAccent,width: 1.5,style: BorderStyle.solid)
                    ),
                    focusedErrorBorder: _numbervalid!=true ?
                    OutlineInputBorder(borderSide: BorderSide(color: Colors.red,width: 1.5,style: BorderStyle.solid)):
                    OutlineInputBorder(borderSide: BorderSide(color: Colors.blueAccent,width: 1.5,style: BorderStyle.solid))
                ),
                style: TextStyle(
                    color: _numbervalid!=true ? Colors.red :Colors.blue,
                    fontSize: 20
                ),
              ),
              Text("Only Email Input",style: TextStyle(fontSize: 20,fontFamily: "Times New Roman",fontWeight: FontWeight.w600,color: Colors.blueGrey),),
              SizedBox(height: 10,),
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
                    hintText: "Email Address",
                    prefixIcon: _emailvalid!=true ? Icon(Icons.email,color: Colors.red,): Icon(Icons.email,color: Colors.green,),
                    errorText: _emailvalid!=true ? "Please enter valid email address" : "",
                    suffixIcon: _emailvalid!=true ? null : Icon(Icons.done,color: checkemail=="" ? Colors.white : Colors.green,),
                    border: UnderlineInputBorder(),
                    errorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.green,width: 1.5,style: BorderStyle.solid)
                    ),
                    focusedErrorBorder: _emailvalid!=true ?
                    UnderlineInputBorder(borderSide: BorderSide(color: Colors.red,width: 1.5,style: BorderStyle.solid)):
                    UnderlineInputBorder(borderSide: BorderSide(color: Colors.green,width: 1.5,style: BorderStyle.solid))
                ),
                style: TextStyle(
                    color: _emailvalid!=true ? Colors.red :Colors.green,
                    fontSize: 20
                ),
              ),
              Text("Only URL Input",style: TextStyle(fontSize: 20,fontFamily: "Times New Roman",fontWeight: FontWeight.w600,color: Colors.blueGrey),),
              SizedBox(height: 10,),
              TextField(
                onChanged: (String value){
                  setState(() {
                    _urlvalidation(value);
                    checkurl=value;
                  });
                },
                controller: _url,
                keyboardType: TextInputType.url,
                decoration: InputDecoration(
                    hintText: "URL : https://www.google.com",
                    prefixIcon: _urlvalid!=true ? Icon(Icons.web,color: Colors.red,): Icon(Icons.web,color: Colors.green,),
                    errorText: _urlvalid!=true ? "Please enter valid url" : "",
                    suffixIcon: _urlvalid!=true ? null : Icon(Icons.done,color: checkurl=="" ? Colors.white : Colors.green,),
                    border: UnderlineInputBorder(),
                    errorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.green,width: 1.5,style: BorderStyle.solid)
                    ),
                    focusedErrorBorder: _urlvalid!=true ?
                    UnderlineInputBorder(borderSide: BorderSide(color: Colors.red,width: 1.5,style: BorderStyle.solid)):
                    UnderlineInputBorder(borderSide: BorderSide(color: Colors.green,width: 1.5,style: BorderStyle.solid))
                ),
                style: TextStyle(
                    color: _urlvalid!=true ? Colors.red :Colors.green,
                    fontSize: 20
                ),
              ),
              Text("Only Date Input",style: TextStyle(fontSize: 20,fontFamily: "Times New Roman",fontWeight: FontWeight.w600,color: Colors.blueGrey),),
              SizedBox(height: 10,),
              TextField(
                onTap: (){
                  DateTime date = DateTime.now();
                  showDatePicker(
                      context: context,
                      initialDate: date,
                      firstDate: DateTime(2020),
                      lastDate: DateTime(2025)
                  ).then((DateTime date1){
                    if(date1!=null){
                      _date.text = date1.toString();
                      checkdate = date1.toString();
                    }
                  });
                },
                controller: _date,
                keyboardType: TextInputType.datetime,
                decoration: InputDecoration(
                    hintText: "Date Time",
                    prefixIcon:Icon(Icons.date_range,color: Colors.blueGrey,),
                    suffixIcon: Icon(Icons.done,color: checkdate=="" ? Colors.white : Colors.blueGrey,),
                    border: UnderlineInputBorder(),
                    errorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.blueGrey,width: 1.5,style: BorderStyle.solid)
                    ),
                    focusedErrorBorder:
                    UnderlineInputBorder(borderSide: BorderSide(color: Colors.blueGrey,width: 1.5,style: BorderStyle.solid))
                ),
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 20
                ),
              ),
              SizedBox(height: 10,),
              Text("Only Password Input",style: TextStyle(fontSize: 20,fontFamily: "Times New Roman",fontWeight: FontWeight.w600,color: Colors.blueGrey),),
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
                    hintText: "Password",
                    prefixIcon: _passwordvalid!=true ? Icon(Icons.lock,color: Colors.red,): Icon(Icons.lock,color: Colors.blueGrey,),
                    errorText: _passwordvalid!=true ? "Please enter valid password" : "",
                    suffixIcon: show_hide ? IconButton(icon: Icon(Icons.visibility_off,color: Colors.blueGrey,),onPressed: (){setState(() {show_hide=false;});},)
                        : IconButton(icon: Icon(Icons.visibility,color: Colors.blueGrey,),onPressed: (){setState(() {show_hide=true;});},),
                    border: UnderlineInputBorder(),
                    errorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.blueGrey,width: 1.5,style: BorderStyle.solid)
                    ),
                    focusedErrorBorder: _passwordvalid!=true ?
                    UnderlineInputBorder(borderSide: BorderSide(color: Colors.red,width: 1.5,style: BorderStyle.solid)):
                    UnderlineInputBorder(borderSide: BorderSide(color: Colors.blueGrey,width: 1.5,style: BorderStyle.solid))
                ),
                style: TextStyle(
                    color: _passwordvalid!=true ? Colors.red :Colors.blueGrey,
                    fontSize: 20
                ),
              ),
              Text("Multiline Input",style: TextStyle(fontSize: 20,fontFamily: "Times New Roman",fontWeight: FontWeight.w600,color: Colors.blueGrey),),
              SizedBox(height: 10,),
              TextField(
                onChanged: (String value){
                  setState(() {
                    _numbervalidation(value);
                    checkmultiline=value;
                  });
                },
                controller: _multiline,
                maxLines: 6,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                    hintText: "Typing here...",
                    labelText: "Multiline",
                    labelStyle: TextStyle(color: _multilinevalid!=true ? Colors.red : Colors.blue),
                    prefixIcon: _multilinevalid!=true ? Icon(Icons.chat,color: Colors.red,): Icon(Icons.chat,color: Colors.blue,),
                    errorText: _multilinevalid!=true ? "Please typing anything" : "",
                    suffixIcon: _multilinevalid!=true ? null : Icon(Icons.done,color: checknumber=="" ? Colors.white : Colors.blue,),
                    border: OutlineInputBorder(),
                    errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blueAccent,width: 1.5,style: BorderStyle.solid)
                    ),
                    focusedErrorBorder: _multilinevalid!=true ?
                    OutlineInputBorder(borderSide: BorderSide(color: Colors.red,width: 1.5,style: BorderStyle.solid)):
                    OutlineInputBorder(borderSide: BorderSide(color: Colors.blueAccent,width: 1.5,style: BorderStyle.solid))
                ),
                style: TextStyle(
                    color: _multilinevalid!=true ? Colors.red :Colors.blue,
                    fontSize: 20
                ),
              ),
            ],
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
    );
  }
}
