import 'package:creativedesign/Other_Widgets/dismissibles.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:widget_with_codeview/syntax_highlighter.dart';

class Dismissibles_Code extends StatelessWidget {
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
        title: Text("Dismissible",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Dismissibles()));
          },
          icon: Icon(Icons.arrow_back_ios,size: 20,color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){
              launch("https://github.com/sudhirgamit/Creative-Design-In-Flutter/blob/master/lib/Other_Widgets/dismissibles.dart");
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
import 'package:creativedesign/Other_Widgets_Codes/dismissibles_code.dart';
import 'package:creativedesign/Pages/advance.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dismissibles extends StatefulWidget {
  @override
  _DismissiblesState createState() => _DismissiblesState();
}
class _DismissiblesState extends State<Dismissibles> {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  final items = List<String>.generate(5, (i)=>"Items "); // Items With i values
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Dismissible",style: TextStyle(color: Colors.black),),
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Dismissibles_Code()));
            },
            icon: Icon(Icons.transfer_within_a_station,size: 25,color: Colors.black),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context,index){
            final item = items[index];
            return Dismissible(
              key: Key(item),
              child: Card(
                margin: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                elevation: 5.0,
                child: ListTile(
                  leading: Icon(CupertinoIcons.profile_circled),
                  title: Text(item,style: TextStyle(color: CupertinoColors.systemBlue,fontSize: 20,fontWeight: FontWeight.w400)),
                  trailing:Icon(CupertinoIcons.delete),
                  contentPadding: EdgeInsets.all(20),
                ),
              ),
              background: Container(
                color: Colors.red,
                padding: EdgeInsets.only(left: 10),
                child: Row(
                  children: <Widget>[
                    Container(
                      color: Colors.red,
                      height: MediaQuery.of(context).size.height,
                      width: 100,
                      child: Icon(
                        CupertinoIcons.delete_simple,color: CupertinoColors.white,size: 40,
                      ),
                    ),
                  ],
                ),
              ),
              movementDuration: Duration(seconds: 10),
              resizeDuration: Duration(seconds: 2),
              secondaryBackground: Container(
                color: Colors.black12,
              ),
              onDismissed: (direction){
                setState(() {
                  items.removeAt(index);
                });
                _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text("Item Dismissed"),behavior: SnackBarBehavior.floating,));
              },
            );
          }
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
