import 'package:creativedesign/Pages/advance.dart';
import 'package:creativedesign/Plugins_Codes/url_launchers_code.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:url_launcher/url_launcher.dart';

class URL_Launchers extends StatefulWidget {
  @override
  _URL_LaunchersState createState() => _URL_LaunchersState();
}
class _URL_LaunchersState extends State<URL_Launchers> {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  Future<void> share() async {
    await FlutterShare.share(
        title: 'Cake Shop',
        text: 'Discount Offer Of Cake Shop',
        linkUrl: 'https://play.google.com/store/apps/details?id=com.galaxytechnologies.cake_shop&hl=en_IN',
        chooserTitle: 'Share'
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("URL Launcher",style: TextStyle(color: Colors.black),),
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>URL_Launchers_Code()));
            },
            icon: Icon(Icons.transfer_within_a_station,size: 25,color: Colors.black,),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text("Share All Social Media"),
            CupertinoButton(
                child: Text("Share"),
                color: CupertinoColors.activeGreen,
                onPressed: (){
                  setState(() {
                    share();
                  });
                }
            ),
            Divider(color: CupertinoColors.inactiveGray,thickness: 1.5,indent: 50,endIndent: 50,),
            Text("Phone Call"),
            CupertinoButton(
                child: Text("Call"),
                color: CupertinoColors.systemBlue,
                onPressed: (){
                  setState(() {
                    launch("tel:+918238895676");
                  });
                }
            ),
            Divider(color: CupertinoColors.inactiveGray,thickness: 1.5,indent: 50,endIndent: 50,),
            Text("Phone Email"),
            CupertinoButton(
                child: Text("Email"),
                color: CupertinoColors.destructiveRed,
                onPressed: (){
                  setState(() {
                    launch("mailto:sudhirgamit43@gmail.com");
                  });
                }
            ),
            Divider(color: CupertinoColors.inactiveGray,thickness: 1.5,indent: 50,endIndent: 50,),
            Text("Web URL Link"),
            CupertinoButton(
                child: Text("URL"),
                color: CupertinoColors.systemTeal,
                onPressed: (){
                  setState(() {
                    launch("https://github.com/sudhirgamit/Creative-Design-In-Flutter");
                  });
                }
            ),
          ],
        ),
      ),
    );
  }
}
