import 'package:creativedesign/Lists/gridviews.dart';
import 'package:flutter/material.dart';
import 'package:widget_with_codeview/syntax_highlighter.dart';

class GridViews_Code extends StatelessWidget {
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
        title: Text("GridView & GridTile",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>GridViews()));
          },
          icon: Icon(Icons.arrow_back_ios,size: 20,color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){
              //Navigator.push(context, MaterialPageRoute(builder: (context)=>Future_Builders()));
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
import 'package:creativedesign/Lists_Codes/gridviews_code.dart';
import 'package:creativedesign/Pages/homepage.dart';
import 'package:flutter/material.dart';

class GridViews extends StatefulWidget {
  @override
  _GridViewsState createState() => _GridViewsState();
}
class _GridViewsState extends State<GridViews> {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Gridiew & GridTile",style: TextStyle(color: Colors.black),),
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>GridViews_Code()));
            },
            icon: Icon(Icons.transfer_within_a_station,size: 25,color: Colors.black),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          children: <Widget>[
            Card(
              child: GridTile(
                child: Text("1"),
                header: Icon(Icons.access_alarm,size: 120,color: Colors.orange,),
                footer: Text("Access Alarm",textAlign: TextAlign.center,style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600,),),
              ),
            ),
            Card(
              child: GridTile(
                child: Text("2"),
                header: Icon(Icons.cloud_download,size: 120,color: Colors.orange,),
                footer: Text("Cloud Download",textAlign: TextAlign.center,style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600,)),
              ),
            ),
            Card(
              child: GridTile(
                child: Text("3"),
                header: Icon(Icons.weekend,size: 120,color: Colors.orange,),
                footer: Text("Weekend",textAlign: TextAlign.center,style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600,)),
              ),
            ),
            Card(
              child: GridTile(
                child: Text("4"),
                header: Icon(Icons.pages,size: 120,color: Colors.orange,),
                footer: Text("Pages",textAlign: TextAlign.center,style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600,)),
              ),
            ),
            Card(
              child: GridTile(
                child: Text("5"),
                header: Icon(Icons.next_week,size: 120,color: Colors.orange,),
                footer: Text("Next Week",textAlign: TextAlign.center,style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600,)),
              ),
            ),
            Card(
              child: GridTile(
                child: Text("6"),
                header: Icon(Icons.account_balance,size: 120,color: Colors.orange,),
                footer: Text("Account Balance",textAlign: TextAlign.center,style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600,)),
              ),
            ),
          ],
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
