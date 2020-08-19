import 'package:creativedesign/Pages/homepage.dart';
import 'package:creativedesign/Widgets/icon_box.dart';
import 'package:flutter/material.dart';
import 'package:widget_with_codeview/source_code_view.dart';
import 'package:widget_with_codeview/syntax_highlighter.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';


class Icon_Code extends StatelessWidget {
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
        title: Text("Icon Box",style: TextStyle(color: Colors.black),),
        centerTitle: true,
          leading: IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Icon_Box()));
            },
            icon: Icon(Icons.arrow_back_ios,size: 20,color: Colors.black),
          ),
          actions: <Widget>[
            IconButton(
              onPressed: (){
                //Navigator.push(context, MaterialPageRoute(builder: (context)=>Icon_Box()));
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
                
import 'package:creativedesign/Codes/icon_code.dart';
import 'package:flutter/material.dart';

class Icon_Box extends StatefulWidget {
  @override
  _Icon_BoxState createState() => _Icon_BoxState();
}

class _Icon_BoxState extends State<Icon_Box> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Icon Box"),
        actions: <Widget>[
          IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Icon_Code()));
            },
            icon: Icon(Icons.code,size: 25,),
          )
        ],
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(Icons.add_circle,color: Colors.yellow,),
            Icon(Icons.person,size: 35,),
            Icon(Icons.phone,size: 40,color: Colors.blue,),
            Icon(Icons.print,size: 45,color: Colors.red,textDirection: TextDirection.ltr,),
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
