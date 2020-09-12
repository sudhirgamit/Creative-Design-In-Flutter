import 'package:creativedesign/Layouts/flexibles.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:widget_with_codeview/syntax_highlighter.dart';

class Flexibles_Code extends StatelessWidget {
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
        title: Text("Flexible Layouts",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Flexibles()));
          },
          icon: Icon(Icons.arrow_back_ios,size: 20,color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){
              launch("https://github.com/sudhirgamit/Creative-Design-In-Flutter/blob/master/lib/Layouts/flexibles.dart");
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
import 'package:creativedesign/Layouts_Codes/flexibles_code.dart';
import 'package:creativedesign/Pages/homepage.dart';
import 'package:flutter/material.dart';

class Flexibles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Flexible Layouts",style: TextStyle(color: Colors.black),),
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Flexibles_Code()));
            },
            icon: Icon(Icons.transfer_within_a_station,size: 25,color: Colors.black),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(5),
        child: Column(
         children: <Widget>[
           Flexible(
             flex: 2,
             fit: FlexFit.tight,
             child: Container(
               color: Colors.cyan,
               alignment: AlignmentDirectional.center,
               child: Text("Flex : 2",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.white),),
             ),
           ),
           Flexible(
             flex: 1,
             fit: FlexFit.tight,
             child: Container(
               color: Colors.lightGreen,
               alignment: AlignmentDirectional.center,
               child: Text("Flex : 1",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.white),),
             ),
           ),
           Flexible(
             flex: 3,
             fit: FlexFit.tight,
             child: Container(
               color: Colors.blue,
               alignment: AlignmentDirectional.center,
               child: Text("Flex : 3",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.white),),
             ),
           ),
           Flexible(
             flex: 2,
             fit: FlexFit.tight,
             child: Container(
               color: Colors.teal,
               alignment: AlignmentDirectional.center,
               child: Text("Flex : 2",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.white),),
             ),
           ),
           Flexible(
             flex: 4,
             fit: FlexFit.tight,
             child: Container(
               color: Colors.orange,
               alignment: AlignmentDirectional.center,
               child: Text("Flex : 4",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.white),),
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
