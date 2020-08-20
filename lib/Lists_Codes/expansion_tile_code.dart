import 'package:creativedesign/Lists/expansion_tile.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:widget_with_codeview/syntax_highlighter.dart';

class Expansion_Tile_Code extends StatelessWidget {
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
        title: Text("ExpansionTile",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Expansion_Tile()));
          },
          icon: Icon(Icons.arrow_back_ios,size: 20,color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){
              launch("https://github.com/sudhirgamit/Creative-Design-In-Flutter/blob/master/lib/Lists/expansion_tile.dart");
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
import 'package:creativedesign/Lists_Codes/expansion_tile_code.dart';
import 'package:creativedesign/Pages/homepage.dart';
import 'package:flutter/material.dart';

class Expansion_Tile extends StatelessWidget {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("ExpansionTile",style: TextStyle(color: Colors.black),),
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Expansion_Tile_Code()));
            },
            icon: Icon(Icons.transfer_within_a_station,size: 25,color: Colors.black),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.all(10),
        children: <Widget>[
          Card(
            elevation: 5.0,
            child: ExpansionTile(
              leading: CircleAvatar(
                child: Chip(
                  label: Text("A"),
                ),
              ),
              title: Text("Names",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w700,letterSpacing: 2),),
              children: <Widget>[
                CircleAvatar(child: Chip(label: Text("A"),),),Divider(color: Colors.blueGrey,thickness: 0.0,endIndent: 120,indent: 120,),
                CircleAvatar(child: Chip(label: Text("N"),),),Divider(color: Colors.blueGrey,thickness: 0.0,endIndent: 120,indent: 120,),
                CircleAvatar(child: Chip(label: Text("S"),),),Divider(color: Colors.blueGrey,thickness: 0.0,endIndent: 120,indent: 120,),
                CircleAvatar(child: Chip(label: Text("H"),),),Divider(color: Colors.blueGrey,thickness: 0.0,endIndent: 120,indent: 120,),
                CircleAvatar(child: Chip(label: Text("U"),),),Divider(color: Colors.white,thickness: 0.0,endIndent: 120,indent: 120,),
              ],
            ),
          ),
          Card(
            elevation: 5.0,
            child: ExpansionTile(
              leading: CircleAvatar(
                child: Chip(
                  label: Text("B"),
                ),
              ),
              title: Text("Names",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w700,letterSpacing: 2),),
              children: <Widget>[
                CircleAvatar(child: Chip(label: Text("B"),),),Divider(color: Colors.blueGrey,thickness: 0.0,endIndent: 120,indent: 120,),
                CircleAvatar(child: Chip(label: Text("H"),),),Divider(color: Colors.blueGrey,thickness: 0.0,endIndent: 120,indent: 120,),
                CircleAvatar(child: Chip(label: Text("A"),),),Divider(color: Colors.blueGrey,thickness: 0.0,endIndent: 120,indent: 120,),
                CircleAvatar(child: Chip(label: Text("V"),),),Divider(color: Colors.blueGrey,thickness: 0.0,endIndent: 120,indent: 120,),
                CircleAvatar(child: Chip(label: Text("U"),),),Divider(color: Colors.white,thickness: 0.0,endIndent: 120,indent: 120,),
              ],
            ),
          ),
          Card(
            elevation: 5.0,
            child: ExpansionTile(
              leading: CircleAvatar(
                child: Chip(
                  label: Text("C"),
                ),
              ),
              title: Text("Names",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w700,letterSpacing: 2),),
              children: <Widget>[
                CircleAvatar(child: Chip(label: Text("C"),),),Divider(color: Colors.blueGrey,thickness: 0.0,endIndent: 120,indent: 120,),
                CircleAvatar(child: Chip(label: Text("H"),),),Divider(color: Colors.blueGrey,thickness: 0.0,endIndent: 120,indent: 120,),
                CircleAvatar(child: Chip(label: Text("A"),),),Divider(color: Colors.blueGrey,thickness: 0.0,endIndent: 120,indent: 120,),
                CircleAvatar(child: Chip(label: Text("K"),),),Divider(color: Colors.blueGrey,thickness: 0.0,endIndent: 120,indent: 120,),
                CircleAvatar(child: Chip(label: Text("U"),),),Divider(color: Colors.white,thickness: 0.0,endIndent: 120,indent: 120,),
              ],
            ),
          ),
          Card(
            elevation: 5.0,
            child: ExpansionTile(
              leading: CircleAvatar(
                child: Chip(
                  label: Text("D"),
                ),
              ),
              title: Text("Names",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w700,letterSpacing: 2),),
              children: <Widget>[
                CircleAvatar(child: Chip(label: Text("D"),),),Divider(color: Colors.blueGrey,thickness: 0.0,endIndent: 120,indent: 120,),
                CircleAvatar(child: Chip(label: Text("H"),),),Divider(color: Colors.blueGrey,thickness: 0.0,endIndent: 120,indent: 120,),
                CircleAvatar(child: Chip(label: Text("A"),),),Divider(color: Colors.blueGrey,thickness: 0.0,endIndent: 120,indent: 120,),
                CircleAvatar(child: Chip(label: Text("R"),),),Divider(color: Colors.blueGrey,thickness: 0.0,endIndent: 120,indent: 120,),
                CircleAvatar(child: Chip(label: Text("A"),),),Divider(color: Colors.white,thickness: 0.0,endIndent: 120,indent: 120,),
              ],
            ),
          ),
          Card(
            elevation: 5.0,
            child: ExpansionTile(
              leading: CircleAvatar(
                child: Chip(
                  label: Text("E"),
                ),
              ),
              title: Text("Names",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w700,letterSpacing: 2),),
              children: <Widget>[
                CircleAvatar(child: Chip(label: Text("E"),),),Divider(color: Colors.blueGrey,thickness: 0.0,endIndent: 120,indent: 120,),
                CircleAvatar(child: Chip(label: Text("Y"),),),Divider(color: Colors.blueGrey,thickness: 0.0,endIndent: 120,indent: 120,),
                CircleAvatar(child: Chip(label: Text("U"),),),Divider(color: Colors.blueGrey,thickness: 0.0,endIndent: 120,indent: 120,),
                CircleAvatar(child: Chip(label: Text("B"),),),Divider(color: Colors.blueGrey,thickness: 0.0,endIndent: 120,indent: 120,),
                CircleAvatar(child: Chip(label: Text("H"),),),Divider(color: Colors.white,thickness: 0.0,endIndent: 120,indent: 120,),
              ],
            ),
          ),

          Card(
            elevation: 5.0,
            child: ExpansionTile(
              leading: CircleAvatar(
                child: Chip(
                  label: Text("F"),
                ),
              ),
              title: Text("Names",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w700,letterSpacing: 2),),
              children: <Widget>[
                CircleAvatar(child: Chip(label: Text("F"),),),Divider(color: Colors.blueGrey,thickness: 0.0,endIndent: 120,indent: 120,),
                CircleAvatar(child: Chip(label: Text("E"),),),Divider(color: Colors.blueGrey,thickness: 0.0,endIndent: 120,indent: 120,),
                CircleAvatar(child: Chip(label: Text("Y"),),),Divider(color: Colors.blueGrey,thickness: 0.0,endIndent: 120,indent: 120,),
                CircleAvatar(child: Chip(label: Text("A"),),),Divider(color: Colors.blueGrey,thickness: 0.0,endIndent: 120,indent: 120,),
                CircleAvatar(child: Chip(label: Text("N"),),),Divider(color: Colors.white,thickness: 0.0,endIndent: 120,indent: 120,),
              ],
            ),
          ),
          Card(
            elevation: 5.0,
            child: ExpansionTile(
              leading: CircleAvatar(
                child: Chip(
                  label: Text("G"),
                ),
              ),
              title: Text("Names",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w700,letterSpacing: 2),),
              children: <Widget>[
                CircleAvatar(child: Chip(label: Text("G"),),),Divider(color: Colors.blueGrey,thickness: 0.0,endIndent: 120,indent: 120,),
                CircleAvatar(child: Chip(label: Text("O"),),),Divider(color: Colors.blueGrey,thickness: 0.0,endIndent: 120,indent: 120,),
                CircleAvatar(child: Chip(label: Text("O"),),),Divider(color: Colors.blueGrey,thickness: 0.0,endIndent: 120,indent: 120,),
                CircleAvatar(child: Chip(label: Text("G"),),),Divider(color: Colors.blueGrey,thickness: 0.0,endIndent: 120,indent: 120,),
                CircleAvatar(child: Chip(label: Text("B"),),),Divider(color: Colors.blueGrey,thickness: 0.0,endIndent: 120,indent: 120,),
                CircleAvatar(child: Chip(label: Text("Y"),),),Divider(color: Colors.white,thickness: 0.0,endIndent: 120,indent: 120,),
              ],
            ),
          ),
          Card(
            elevation: 5.0,
            child: ExpansionTile(
              leading: CircleAvatar(
                child: Chip(
                  label: Text("H"),
                ),
              ),
              title: Text("Names",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w700,letterSpacing: 2),),
              children: <Widget>[
                CircleAvatar(child: Chip(label: Text("H"),),),Divider(color: Colors.blueGrey,thickness: 0.0,endIndent: 120,indent: 120,),
                CircleAvatar(child: Chip(label: Text("E"),),),Divider(color: Colors.blueGrey,thickness: 0.0,endIndent: 120,indent: 120,),
                CircleAvatar(child: Chip(label: Text("R"),),),Divider(color: Colors.blueGrey,thickness: 0.0,endIndent: 120,indent: 120,),
                CircleAvatar(child: Chip(label: Text("R"),),),Divider(color: Colors.blueGrey,thickness: 0.0,endIndent: 120,indent: 120,),
                CircleAvatar(child: Chip(label: Text("Y"),),),Divider(color: Colors.white,thickness: 0.0,endIndent: 120,indent: 120,),
              ],
            ),
          ),
        ],
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
