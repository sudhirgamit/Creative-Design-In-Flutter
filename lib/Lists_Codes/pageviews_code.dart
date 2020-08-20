import 'package:creativedesign/Lists/pageviews.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:widget_with_codeview/syntax_highlighter.dart';

class PageViews_Code extends StatelessWidget {
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
        title: Text("PageView",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>PageViews()));
          },
          icon: Icon(Icons.arrow_back_ios,size: 20,color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){
              launch("https://github.com/sudhirgamit/Creative-Design-In-Flutter/blob/master/lib/Lists/pageviews.dart");
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
import 'package:creativedesign/Lists_Codes/pageviews_code.dart';
import 'package:creativedesign/Pages/homepage.dart';
import 'package:flutter/material.dart';

class PageViews extends StatefulWidget {
  @override
  _PageViewsState createState() => _PageViewsState();
}
class _PageViewsState extends State<PageViews> {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final pageViews = <Widget>[
      Scaffold(
        //backgroundColor: Colors.white70,
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage("https://images.unsplash.com/photo-1596461128215-d0b37aea5124?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80"),fit: BoxFit.cover
              )
          ),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.white38,
            child: Center(child: Text("Creative Design",style: TextStyle(fontSize: 50,fontWeight: FontWeight.w600,color: Colors.white,letterSpacing: 2),),),
          ),
        ),
      ),
      Scaffold(
        //backgroundColor: Colors.orange,
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage("https://images.unsplash.com/photo-1596358711484-0b2b0f2344ac?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1534&q=80"),fit: BoxFit.cover
              )
          ),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.white38,
            child: Center(child: Text("Creative Design",style: TextStyle(fontSize: 50,fontWeight: FontWeight.w600,color: Colors.white,letterSpacing: 2),),),
          ),
        ),
      ),
      Scaffold(
        //backgroundColor: Colors.orange,
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage("https://images.unsplash.com/photo-1596480823752-39aba7588158?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80"),fit: BoxFit.cover
              )
          ),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.white38,
            child: Center(child: Text("Creative Design",style: TextStyle(fontSize: 50,fontWeight: FontWeight.w600,color: Colors.white,letterSpacing: 2),),),
          ),
        ),
      ),
      Scaffold(
        //backgroundColor: Colors.orange,
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage("https://images.unsplash.com/photo-1596470517077-1574bd91c663?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80"),fit: BoxFit.cover
              )
          ),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.white38,
            child: Center(child: Text("Creative Design",style: TextStyle(fontSize: 50,fontWeight: FontWeight.w600,color: Colors.white,letterSpacing: 2),),),
          ),
        ),
      ),
    ];
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("PageView",style: TextStyle(color: Colors.black),),
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>PageViews_Code()));
            },
            icon: Icon(Icons.transfer_within_a_station,size: 25,color: Colors.black),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: PageView(
        children: pageViews,
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
