import 'package:creativedesign/Navigation/tabs.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:widget_with_codeview/syntax_highlighter.dart';

class Tabs_Code extends StatelessWidget {
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
        title: Text("Tab Bar",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Tabs()));
          },
          icon: Icon(Icons.arrow_back_ios,size: 20,color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){
              launch("https://github.com/sudhirgamit/Creative-Design-In-Flutter/blob/master/lib/Navigation/tabs.dart");
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
import 'package:creativedesign/Navigation_Codes/tabs_code.dart';
import 'package:creativedesign/Pages/homepage.dart';
import 'package:flutter/material.dart';

class Tabs extends StatefulWidget {
  @override
  _TabsState createState() => _TabsState();
}
class _TabsState extends State<Tabs> {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          key: _scaffoldKey,
          appBar: AppBar(
            title: Text("Tab Bar"),
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Tabs_Code()));
                },
                icon: Icon(Icons.transfer_within_a_station,size: 25,),
              )
            ],
            bottom: TabBar(
              unselectedLabelColor: Colors.black,
              labelColor: Colors.white,
              tabs: <Widget>[
                Column(
                  children: <Widget>[
                    Icon(Icons.home,size: 30,color: Colors.white,),
                    Text("Home")
                  ],
                ),
                Column(
                  children: <Widget>[
                    Icon(Icons.person,size: 30,color: Colors.white,),
                    Text("Person")
                  ],
                ),
                Column(
                  children: <Widget>[
                    Icon(Icons.location_city,size: 30,color: Colors.white,),
                    Text("City")
                  ],
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.home,size: 100,color: Colors.blue,),
                  Text("That's My Home")
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.person,size: 100,color: Colors.blue,),
                    Text("That's A Person")
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.location_city,size: 100,color: Colors.blue,),
                  Text("That's My City")
                ],
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
