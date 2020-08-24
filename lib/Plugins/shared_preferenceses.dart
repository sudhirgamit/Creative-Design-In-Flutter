import 'package:creativedesign/Pages/advance.dart';
import 'package:creativedesign/Plugins_Codes/shared_preferenceses_code.dart';
import 'package:creativedesign/Utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Shared_Preferenceses extends StatefulWidget {
  @override
  _Shared_PreferencesesState createState() => _Shared_PreferencesesState();
}
class _Shared_PreferencesesState extends State<Shared_Preferenceses> {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
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
  String useremail; String userpass;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Shared Preferences",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Advance()));
          },
          icon: Icon(Icons.arrow_back_ios,size: 20,color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Shared_Preferenceses_Code()));
            },
            icon: Icon(Icons.transfer_within_a_station,size: 25,color: Colors.black,),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 60,right: 10,left: 10,bottom: 10),
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Student Login",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.w600,shadows: [Shadow(color: Colors.blueGrey,blurRadius: 12)]),),
                Divider(thickness: 2.5,color: Colors.lightGreen,indent: 90,endIndent: 90,height: 30,),
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
                      prefixIcon: Icon(CupertinoIcons.mail),
                      labelStyle: TextStyle(color: Colors.black,fontSize: 18),
                      //prefixIcon: _namevalid!=true ? Icon(Icons.person,color: Colors.red,): Icon(Icons.person,color: Colors.grey,),
                      errorText: _emailvalid!=true ? "Please enter valid email" : "",
                      //suffixIcon: _emailvalid!=true ? null : Icon(Icons.done,color: checkemail=="" ? Colors.transparent : Colors.grey,),
                      border: OutlineInputBorder(),
                      errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey,width: 1.5,style: BorderStyle.solid)
                      ),
                      focusedErrorBorder: _emailvalid!=true ?
                      OutlineInputBorder(borderSide: BorderSide(color: Colors.red,width: 1.5,style: BorderStyle.solid)):
                      OutlineInputBorder(borderSide: BorderSide(color: Colors.grey,width: 1.5,style: BorderStyle.solid))
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
                      prefixIcon: Icon(CupertinoIcons.padlock),
                      labelText: "Password",
                      labelStyle: TextStyle(color: Colors.black,fontSize: 18),
                      //prefixIcon: _passwordvalid!=true ? Icon(Icons.lock,color: Colors.red,): Icon(Icons.lock,color: Colors.grey,),
                      errorText: _passwordvalid!=true ? "Please enter valid password" : "",
                      suffixIcon: show_hide ? IconButton(icon: Icon(Icons.visibility_off,color: Colors.grey,),onPressed: (){setState(() {show_hide=false;});},)
                          : IconButton(icon: Icon(Icons.visibility,color: Colors.grey,),onPressed: (){setState(() {show_hide=true;});},),
                      border: OutlineInputBorder(),
                      errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey,width: 1.5,style: BorderStyle.solid)
                      ),
                      focusedErrorBorder: _passwordvalid!=true ?
                      OutlineInputBorder(borderSide: BorderSide(color: Colors.red,width: 1.5,style: BorderStyle.solid)):
                      OutlineInputBorder(borderSide: BorderSide(color: Colors.grey,width: 1.5,style: BorderStyle.solid))
                  ),
                  style: TextStyle(
                      color: _passwordvalid!=true ? Colors.red :Colors.grey,
                      fontSize: 20,fontWeight: FontWeight.w700
                  ),
                ),
                SizedBox(height: 25,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CircleAvatar(
                      maxRadius: 30,
                      backgroundColor: CupertinoColors.activeBlue,
                      child: IconButton(
                        tooltip: "Save",
                        onPressed: (){
                          setState(() {
                            _email.text.trimLeft().isEmpty ? _emailvalid = false : _emailvalid = true;
                            _password.text.trimLeft().isEmpty ? _passwordvalid = false : _password.text.length >= 8 ? _passwordvalid = true : _passwordvalid = false;
                            if(_emailvalid == true && _passwordvalid == true){
                              try{
                                Constants.prefs.setString("useremail", _email.text);
                                Constants.prefs.setString("userpass", _password.text);
                                useremail = Constants.prefs.getString("useremail");
                                userpass = Constants.prefs.getString("userpass");
                              }catch(e){
                                print(e);
                              }
                            }
                          });
                        },
                        icon: Icon(Icons.save,size: 30,color: CupertinoColors.white,),
                      ),
                    ),
                    CircleAvatar(
                      maxRadius: 30,
                      backgroundColor: CupertinoColors.activeBlue,
                      child: IconButton(
                        tooltip: "Clear",
                        onPressed: (){
                          setState(() {
                            Constants.prefs.remove("useremail");
                            Constants.prefs.remove("userpass");
                            useremail = Constants.prefs.getString("useremail");
                            userpass = Constants.prefs.getString("userpass");
                          });
                        },
                        icon: Icon(CupertinoIcons.delete,size: 30,color: CupertinoColors.white,),
                      ),
                    ),
                  ],
                ),
                Divider(height: 25,thickness: 2.5,color: Colors.lightGreen,),
                Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: useremail==null ? 0 :60),
                    child: useremail==null ? Container(
                      alignment: Alignment.center,
                      child: Text(
                        "No data found!",
                        style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20,color: Colors.grey),
                      ),
                    ) :
                    Row(
                      children: <Widget>[
                        Text(
                          "Email : ",
                          style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),
                        ),
                        Text(
                          useremail==null ? "" : useremail,overflow: TextOverflow.ellipsis,maxLines: 1,
                          style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20),
                        ),
                      ],
                    )
                ),
                SizedBox(height: 15,),
                Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: 60),
                    child: useremail==null ? Container() :
                    Row(
                      children: <Widget>[
                        Text(
                          "Pass  : ",
                          style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),
                        ),
                        Text(
                          userpass==null ? "" : userpass,overflow: TextOverflow.ellipsis,maxLines: 1,
                          style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20),
                        ),
                      ],
                    )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
