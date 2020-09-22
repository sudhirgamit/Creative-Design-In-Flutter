import 'package:creativedesign/Socialmedia/facebook_signin.dart';
import 'package:flutter/material.dart';
import 'package:widget_with_codeview/syntax_highlighter.dart';

class Facebook_SignIn_Code extends StatelessWidget {
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
        title: Text("Facebook Sign In",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Facebook_SignIn()));
          },
          icon: Icon(Icons.arrow_back_ios,size: 20,color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){
              //launch("https://github.com/sudhirgamit/Creative-Design-In-Flutter/blob/master/lib/Navigation/bottom_navigation.dart");
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
import 'package:creativedesign/Socialmedia_Codes/facebook_signin_code.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'dart:convert' as JSON;

class Facebook_SignIn extends StatefulWidget {
  @override
  _Facebook_SignInState createState() => _Facebook_SignInState();
}
class _Facebook_SignInState extends State<Facebook_SignIn> {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  bool _isLoggedInFacebook = false;
  Map userProfile;
  final FacebookLogin facebookLogin = FacebookLogin();
  _login() async{
    final result = await facebookLogin.logIn(['email']);
    print(result.accessToken.token);
    switch (result.status) {
      case FacebookLoginStatus.loggedIn:
        final token = result.accessToken.token;
        final graphResponse = await http.get('https://graph.facebook.com/v2.12/me?fields=name,picture,email&access_token={token}'); //token=doller_sign{token}
        final profile = JSON.jsonDecode(graphResponse.body);
        print(profile);
        setState(() {
          userProfile = profile;
          _isLoggedInFacebook = true;
        });
        break;
      case FacebookLoginStatus.cancelledByUser:
        setState(() => _isLoggedInFacebook = false );
        break;
      case FacebookLoginStatus.error:
        setState(() => _isLoggedInFacebook = false );
        break;
    }
  }
  _logout(){
    facebookLogin.logOut();
    setState(() {
      _isLoggedInFacebook = false;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Facebook Sign In",style: TextStyle(color: Colors.black),),
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Facebook_SignIn_Code()));
            },
            icon: Icon(Icons.transfer_within_a_station,size: 25,color: Colors.black,),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: _isLoggedInFacebook==true ? Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(maxRadius: 60, backgroundImage: NetworkImage(userProfile["picture"]["data"]["url"]),),
            Text(userProfile["name"],style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
            //Text(userProfile["email"],style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
            SizedBox(height: 10,),
            CupertinoButton(
              child: Text("Facebook Sign Out",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20,letterSpacing:1),),
              color: Colors.red,
              onPressed: (){
                setState(() {
                  _logout();
                });
              },
            ),
          ],
        ) : CupertinoButton(
          child: Text("Facebook Sign In",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20,letterSpacing:1),),
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
