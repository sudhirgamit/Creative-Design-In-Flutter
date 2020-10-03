import 'package:creativedesign/Authentication/login_2.dart';
import 'package:creativedesign/Pages/creative_design.dart';
import 'package:flutter/material.dart';

class SignUp_2 extends StatefulWidget {
  @override
  _SignUp_2State createState() => _SignUp_2State();
}
class _SignUp_2State extends State<SignUp_2> {
  String checkname=""; String checkemail=""; String checkpassword=""; String checkcpassword="";
  TextEditingController _name = new TextEditingController();
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
  TextEditingController _cpassword = new TextEditingController();
  bool _cpasswordvalid = true;
  _cpasswordvalidation(String val){
    _cpasswordvalid = RegExp(r"^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}").hasMatch(val);
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
                  padding: EdgeInsets.only(left: 30,top: 50),
                  child:  Text("Create Account",style: TextStyle(fontWeight: FontWeight.w700,color: Colors.white,fontSize: 40,letterSpacing: 1,shadows: [BoxShadow(color: Colors.red,blurRadius: 13)]),),
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
                              _namevalidation(value);
                              checkname=value;
                            });
                          },
                          controller: _name,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              labelText: "Full Name",
                              labelStyle: TextStyle(color: Colors.grey,fontSize: 18),
                              prefixIcon: Icon(Icons.person),
                              hoverColor: Colors.teal, fillColor: Colors.white,filled: true,
                              enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey,width: 1.5,style: BorderStyle.solid),),
                              errorText: _namevalid!=true ? "Enter valid name" : "",
                              border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black12,width: 1.5,style: BorderStyle.solid),),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black12,width: 1.5,style: BorderStyle.solid),
                              ),
                              focusedErrorBorder: _namevalid!=true ?
                              OutlineInputBorder(borderSide: BorderSide(color: Colors.red,width: 1.5,style: BorderStyle.solid)):
                              OutlineInputBorder(borderSide: BorderSide(color: Colors.black12,width: 1.5,style: BorderStyle.solid))
                          ),
                          style: TextStyle(
                              color: _namevalid!=true ? Colors.red :Colors.grey,
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
                              suffixIcon: show_hide ? IconButton(icon: Icon(Icons.visibility_off,color: Colors.grey,),onPressed: (){setState(() {show_hide=false;});},)
                                  : IconButton(icon: Icon(Icons.visibility,color: Colors.grey,),onPressed: (){setState(() {show_hide=true;});},),
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
                        SizedBox(height: 5,),
                        TextField(
                          onChanged: (String value){
                            setState(() {
                              _cpasswordvalidation(value);
                              checkcpassword=value;
                            });
                          },
                          controller: _cpassword,
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: show_hide ? true :false,
                          decoration: InputDecoration(
                              labelText: "Confirm Password",
                              labelStyle: TextStyle(color: Colors.grey,fontSize: 18),
                              prefixIcon: Icon(Icons.lock),
                              errorText: _cpasswordvalid!=true ? "Enter valid confirm password" : "",
                              border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black12,width: 1.5,style: BorderStyle.solid),),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black12,width: 1.5,style: BorderStyle.solid),
                              ),
                              focusedErrorBorder: _cpasswordvalid!=true ?
                              OutlineInputBorder(borderSide: BorderSide(color: Colors.red,width: 1.5,style: BorderStyle.solid)):
                              OutlineInputBorder(borderSide: BorderSide(color: Colors.black12,width: 1.5,style: BorderStyle.solid))
                          ),
                          style: TextStyle(
                              color: _cpasswordvalid!=true ? Colors.red :Colors.grey,
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
                                  "SIGNUP",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 20,letterSpacing: 1),
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
              Text("Already have a account?",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
              InkWell(
                  onTap: (){
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Login_2()));
                    });
                  },
                  child: Text(" Sign in",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Colors.orangeAccent),)
              ),
            ],
          ),
        )
    );
  }
}
