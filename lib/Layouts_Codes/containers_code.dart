import 'package:creativedesign/Layouts/containers.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:widget_with_codeview/syntax_highlighter.dart';

class Containers_Code extends StatelessWidget {
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
        title: Text("Container",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Containers()));
          },
          icon: Icon(Icons.arrow_back_ios,size: 20,color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){
              launch("https://github.com/sudhirgamit/Creative-Design-In-Flutter/blob/master/lib/Layouts/containers.dart");
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
import 'package:creativedesign/Layouts_Codes/containers_code.dart';
import 'package:creativedesign/Pages/homepage.dart';
import 'package:flutter/material.dart';

class Containers extends StatelessWidget {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text("Container Layouts"),
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Containers_Code()));
            },
            icon: Icon(Icons.transfer_within_a_station,size: 25),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: 120,
                color: Colors.orange,
                alignment: Alignment.center,
                child: Text("Simple Container",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 10,),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 120,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.blueGrey,Colors.black12]
                  ),
                ),
                child: Text("Decoration Gradient",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 10,),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 120,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.pink,
                  backgroundBlendMode: BlendMode.hardLight,
                  border: Border.all(color: Colors.white30,width: 5,style: BorderStyle.solid)
                ),
                child: Text("Border BlendMode",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 10,),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 120,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))
                ),
                child: Text("BorderRadius 10-20",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 10,),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 120,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: [new BoxShadow(
                      color: Colors.black,
                      blurRadius: 10,
                      spreadRadius: 1.5
                    )],
                ),
                child: Text("BoxShadow 10",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 10,),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 120,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  shape: BoxShape.circle
                ),
                child: Text("Circle Container",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 10,),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 120,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("https://images.unsplash.com/photo-1594584558834-3a5a2a49758d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80"),
                      fit: BoxFit.fill,
                      matchTextDirection: true,
                      colorFilter: ColorFilter.linearToSrgbGamma()
                    )
                ),
                child: Text("Image Container",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
              ),
            ],
          ),
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
