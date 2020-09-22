import 'package:creativedesign/Pages/advance.dart';
import 'package:creativedesign/Socialmedia_Codes/google_signin_code.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Google_SignIn extends StatefulWidget {
  @override
  _Google_SignInState createState() => _Google_SignInState();
}
class _Google_SignInState extends State<Google_SignIn> {
  GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);
  bool _isLoggedInGoogle = false;
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  _login() async{
    try{
      await _googleSignIn.signIn();
      setState(() {
        _isLoggedInGoogle = true;
      });
      _scaffoldKey.currentState.showSnackBar(SnackBar(
        content: Text("Successfully Sign In"),
        action: SnackBarAction(label: "OK",onPressed: (){},textColor: Colors.white,),
        backgroundColor: Colors.lightGreen,
        duration: Duration(seconds: 3),
        behavior: SnackBarBehavior.floating,
      ));
    }catch (err){
      print(err);
    }
  }
  _logout() async{
    try{
      _googleSignIn.signOut();
      setState(() {
        _isLoggedInGoogle = false;
      });
      _scaffoldKey.currentState.showSnackBar(SnackBar(
        content: Text("Successfully Sign Out"),
        action: SnackBarAction(label: "OK",onPressed: (){},textColor: Colors.white,),
        backgroundColor: Colors.red,
        duration: Duration(seconds: 3),
        behavior: SnackBarBehavior.floating,
      ));
    }catch (err){
      print(err);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Google Sign In",style: TextStyle(color: Colors.black),),
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Google_SignIn_Code()));
            },
            icon: Icon(Icons.transfer_within_a_station,size: 25,color: Colors.black,),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: _isLoggedInGoogle==true ? Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(maxRadius: 60, backgroundImage: NetworkImage(_googleSignIn.currentUser.photoUrl),),
            Text(_googleSignIn.currentUser.displayName,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
            Text(_googleSignIn.currentUser.email,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
            SizedBox(height: 10,),
            CupertinoButton(
              child: Text("Google Sign Out",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20,letterSpacing:1),),
              color: Colors.red,
              onPressed: (){
                setState(() {
                  _logout();
                });
              },
            ),
          ],
        ) : CupertinoButton(
          child: Text("Google Sign In",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20,letterSpacing:1),),
          color: Colors.lightGreen,
          onPressed: (){
            setState(() {
              _login();
            });
          },
        ),
      ),
    );
  }
}
