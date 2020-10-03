import 'package:creativedesign/Socialmedia/google_signin.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:widget_with_codeview/syntax_highlighter.dart';

class Google_SignIn_Code extends StatelessWidget {
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
        title: Text("Google Sign In",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Google_SignIn()));
          },
          icon: Icon(Icons.arrow_back_ios,size: 20,color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){
              launch("https://github.com/sudhirgamit/Creative-Design-In-Flutter/blob/master/lib/Socialmedia/google_signin.dart");
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
              style: TextStyle(fontFamily: 'monospace', fontSize: 12.0,decoration: TextDecoration.none,fontWeight: FontWeight.w500)
                  .apply(fontSizeFactor: 1.1),
              children: <TextSpan>[
                DartSyntaxHighlighter(style).format("""
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
