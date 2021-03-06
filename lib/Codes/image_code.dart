import 'package:creativedesign/Widgets/image_box.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:widget_with_codeview/syntax_highlighter.dart';

class Image_Code extends StatelessWidget {
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
        title: Text("Image Box",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Image_Box()));
          },
          icon: Icon(Icons.arrow_back_ios,size: 20,color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){
              launch("https://github.com/sudhirgamit/Creative-Design-In-Flutter/blob/master/lib/Widgets/image_box.dart");
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
import 'package:creativedesign/Codes/image_code.dart';
import 'package:creativedesign/Pages/homepage.dart';
import 'package:flutter/material.dart';

class Image_Box extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Image Box",style: TextStyle(color: Colors.black),),
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Image_Code()));
            },
            icon: Icon(Icons.transfer_within_a_station,size: 25,color: Colors.black),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Text("Image Network",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
              Card(child: Image.network("https://images.unsplash.com/photo-1594961969476-f2487c766a25?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")),
              SizedBox(height: 10,),
              Text("Image Network Progress",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
              Card(child:
              Image.network("https://upload.wikimedia.org/wikipedia/commons/2/2c/Rotating_earth_%28large%29.gif",
                loadingBuilder: (context,child,progress){
                  return progress==null ? child : LinearProgressIndicator(backgroundColor: Colors.blue,valueColor: AlwaysStoppedAnimation<Color>(Colors.grey));
                },
              )
              ),
              SizedBox(height: 10,),
              Text("Image Assets",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
              Card(child: Image.asset("assets/Screen.jpg")),
              SizedBox(height: 10,),
              Text("Image Assets Height/Width, Fit",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
              Card(child: Image.asset("assets/as.jpg",height: 200,width: 200,fit: BoxFit.fill,)),
              SizedBox(height: 10,),
              Text("Image Assets ColorBlendMode",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
              Card(child: Image.asset("assets/CD.png",colorBlendMode: BlendMode.difference,filterQuality: FilterQuality.low)),
            ],
          ),
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
    );;
  }
}
