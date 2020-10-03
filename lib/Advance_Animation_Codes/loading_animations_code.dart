import 'package:creativedesign/Advance_Animation/loading_animations.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:widget_with_codeview/syntax_highlighter.dart';

class Loading_Animations_Code extends StatelessWidget {
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
        title: Text("Loading Animations",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Loading_Animations()));
          },
          icon: Icon(Icons.arrow_back_ios,size: 20,color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){
              launch("https://github.com/sudhirgamit/Creative-Design-In-Flutter/blob/master/lib/Advance_Animation/loading_animations.dart");
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
import 'package:creativedesign/Advance_Animation_Codes/loading_animations_code.dart';
import 'package:creativedesign/Pages/advance.dart';
import 'package:flutter/material.dart';
import 'package:loading_animations/loading_animations.dart';

class Loading_Animations extends StatefulWidget {
  @override
  _Loading_AnimationsState createState() => _Loading_AnimationsState();
}
class _Loading_AnimationsState extends State<Loading_Animations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Loading Animations",style: TextStyle(color: Colors.black),),
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Loading_Animations_Code()));
            },
            icon: Icon(Icons.transfer_within_a_station,size: 25,color: Colors.black),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          // Flapping With Circle And Square
          Divider(thickness: 1.5,color: Colors.grey,height: 10,indent: 30,endIndent: 30,),
          Center(child: Text("Flapping",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.teal),)),
          Divider(thickness: 1.5,color: Colors.grey,height: 10,indent: 30,endIndent: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingFlipping.circle(size: 10,),
              LoadingFlipping.circle(size: 20,),
              LoadingFlipping.circle(size: 30,),
              LoadingFlipping.circle(size: 40,),
              LoadingFlipping.circle(size: 50,),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingFlipping.square(size: 10,),
              LoadingFlipping.square(size: 20,),
              LoadingFlipping.square(size: 30,),
              LoadingFlipping.square(size: 40,),
              LoadingFlipping.square(size: 50,),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingFlipping.circle(size: 10,borderSize: 1.5,),
              LoadingFlipping.circle(size: 20,borderSize: 1.5,),
              LoadingFlipping.circle(size: 30,borderSize: 1.5,),
              LoadingFlipping.circle(size: 40,borderSize: 1.5,),
              LoadingFlipping.circle(size: 50,borderSize: 1.5,),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingFlipping.square(size: 10,borderSize: 1.5,),
              LoadingFlipping.square(size: 20,borderSize: 1.5,),
              LoadingFlipping.square(size: 30,borderSize: 1.5,),
              LoadingFlipping.square(size: 40,borderSize: 1.5,),
              LoadingFlipping.square(size: 50,borderSize: 1.5,),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingFlipping.circle(size: 10,borderSize: 2.5,borderColor: Colors.lightGreen,),
              LoadingFlipping.circle(size: 20,borderSize: 2.5,borderColor: Colors.grey,),
              LoadingFlipping.circle(size: 30,borderSize: 2.5,borderColor: Colors.redAccent,),
              LoadingFlipping.circle(size: 40,borderSize: 2.5,borderColor: Colors.cyan,),
              LoadingFlipping.circle(size: 50,borderSize: 2.5,borderColor: Colors.blue,),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingFlipping.square(size: 10,borderSize: 2.5,borderColor: Colors.lightGreen,),
              LoadingFlipping.square(size: 20,borderSize: 2.5,borderColor: Colors.grey,),
              LoadingFlipping.square(size: 30,borderSize: 2.5,borderColor: Colors.redAccent,),
              LoadingFlipping.square(size: 40,borderSize: 2.5,borderColor: Colors.cyan,),
              LoadingFlipping.square(size: 50,borderSize: 2.5,borderColor: Colors.blue,),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingFlipping.circle(size: 10,borderSize: 2.5,borderColor: Colors.lightGreen,backgroundColor: Colors.lightGreen,),
              LoadingFlipping.circle(size: 20,borderSize: 2.5,borderColor: Colors.grey,backgroundColor: Colors.grey),
              LoadingFlipping.circle(size: 30,borderSize: 2.5,borderColor: Colors.redAccent,backgroundColor: Colors.redAccent),
              LoadingFlipping.circle(size: 40,borderSize: 2.5,borderColor: Colors.cyan,backgroundColor: Colors.cyan),
              LoadingFlipping.circle(size: 50,borderSize: 2.5,borderColor: Colors.blue,backgroundColor: Colors.blue),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingFlipping.square(size: 10,borderSize: 2.5,borderColor: Colors.lightGreen,backgroundColor: Colors.lightGreen,),
              LoadingFlipping.square(size: 20,borderSize: 2.5,borderColor: Colors.grey,backgroundColor: Colors.grey),
              LoadingFlipping.square(size: 30,borderSize: 2.5,borderColor: Colors.redAccent,backgroundColor: Colors.redAccent),
              LoadingFlipping.square(size: 40,borderSize: 2.5,borderColor: Colors.cyan,backgroundColor: Colors.cyan),
              LoadingFlipping.square(size: 50,borderSize: 2.5,borderColor: Colors.blue,backgroundColor: Colors.blue),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingFlipping.circle(size: 10,borderSize: 2.5,borderColor: Colors.lightGreen,backgroundColor: Colors.lightGreen,duration: Duration(seconds: 1),),
              LoadingFlipping.circle(size: 20,borderSize: 2.5,borderColor: Colors.grey,backgroundColor: Colors.grey,duration: Duration(seconds: 2)),
              LoadingFlipping.circle(size: 30,borderSize: 2.5,borderColor: Colors.redAccent,backgroundColor: Colors.redAccent,duration: Duration(seconds: 3)),
              LoadingFlipping.circle(size: 40,borderSize: 2.5,borderColor: Colors.cyan,backgroundColor: Colors.cyan,duration: Duration(seconds: 4)),
              LoadingFlipping.circle(size: 50,borderSize: 2.5,borderColor: Colors.blue,backgroundColor: Colors.blue,duration: Duration(seconds: 5)),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingFlipping.square(size: 10,borderSize: 2.5,borderColor: Colors.lightGreen,backgroundColor: Colors.lightGreen,duration: Duration(seconds: 1),),
              LoadingFlipping.square(size: 20,borderSize: 2.5,borderColor: Colors.grey,backgroundColor: Colors.grey,duration: Duration(seconds: 2)),
              LoadingFlipping.square(size: 30,borderSize: 2.5,borderColor: Colors.redAccent,backgroundColor: Colors.redAccent,duration: Duration(seconds: 3)),
              LoadingFlipping.square(size: 40,borderSize: 2.5,borderColor: Colors.cyan,backgroundColor: Colors.cyan,duration: Duration(seconds: 4)),
              LoadingFlipping.square(size: 50,borderSize: 2.5,borderColor: Colors.blue,backgroundColor: Colors.blue,duration: Duration(seconds: 5)),
            ],
          ),
          // BouncingGrid With Circle And Square
          Divider(thickness: 1.5,color: Colors.green,height: 10,indent: 30,endIndent: 30,),
          Center(child: Text("Bouncing Grid",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.green),)),
          Divider(thickness: 1.5,color: Colors.green,height: 10,indent: 30,endIndent: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingBouncingGrid.circle(size: 10,),
              LoadingBouncingGrid.circle(size: 20,),
              LoadingBouncingGrid.circle(size: 30,),
              LoadingBouncingGrid.circle(size: 40,),
              LoadingBouncingGrid.circle(size: 50,),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingBouncingGrid.square(size: 10,),
              LoadingBouncingGrid.square(size: 20,),
              LoadingBouncingGrid.square(size: 30,),
              LoadingBouncingGrid.square(size: 40,),
              LoadingBouncingGrid.square(size: 50,),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingBouncingGrid.circle(size: 10,borderSize: 1.5,),
              LoadingBouncingGrid.circle(size: 20,borderSize: 1.5,),
              LoadingBouncingGrid.circle(size: 30,borderSize: 1.5,),
              LoadingBouncingGrid.circle(size: 40,borderSize: 1.5,),
              LoadingBouncingGrid.circle(size: 50,borderSize: 1.5,),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingBouncingGrid.square(size: 10,borderSize: 1.5,),
              LoadingBouncingGrid.square(size: 20,borderSize: 1.5,),
              LoadingBouncingGrid.square(size: 30,borderSize: 1.5,),
              LoadingBouncingGrid.square(size: 40,borderSize: 1.5,),
              LoadingBouncingGrid.square(size: 50,borderSize: 1.5,),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingBouncingGrid.circle(size: 10,borderSize: 2.5,borderColor: Colors.lightGreen,),
              LoadingBouncingGrid.circle(size: 20,borderSize: 2.5,borderColor: Colors.grey,),
              LoadingBouncingGrid.circle(size: 30,borderSize: 2.5,borderColor: Colors.redAccent,),
              LoadingBouncingGrid.circle(size: 40,borderSize: 2.5,borderColor: Colors.cyan,),
              LoadingBouncingGrid.circle(size: 50,borderSize: 2.5,borderColor: Colors.blue,),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingBouncingGrid.square(size: 10,borderSize: 2.5,borderColor: Colors.lightGreen,),
              LoadingBouncingGrid.square(size: 20,borderSize: 2.5,borderColor: Colors.grey,),
              LoadingBouncingGrid.square(size: 30,borderSize: 2.5,borderColor: Colors.redAccent,),
              LoadingBouncingGrid.square(size: 40,borderSize: 2.5,borderColor: Colors.cyan,),
              LoadingBouncingGrid.square(size: 50,borderSize: 2.5,borderColor: Colors.blue,),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingBouncingGrid.circle(size: 10,borderSize: 2.5,borderColor: Colors.lightGreen,backgroundColor: Colors.lightGreen,),
              LoadingBouncingGrid.circle(size: 20,borderSize: 2.5,borderColor: Colors.grey,backgroundColor: Colors.grey),
              LoadingBouncingGrid.circle(size: 30,borderSize: 2.5,borderColor: Colors.redAccent,backgroundColor: Colors.redAccent),
              LoadingBouncingGrid.circle(size: 40,borderSize: 2.5,borderColor: Colors.cyan,backgroundColor: Colors.cyan),
              LoadingBouncingGrid.circle(size: 50,borderSize: 2.5,borderColor: Colors.blue,backgroundColor: Colors.blue),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingBouncingGrid.square(size: 10,borderSize: 2.5,borderColor: Colors.lightGreen,backgroundColor: Colors.lightGreen,),
              LoadingBouncingGrid.square(size: 20,borderSize: 2.5,borderColor: Colors.grey,backgroundColor: Colors.grey),
              LoadingBouncingGrid.square(size: 30,borderSize: 2.5,borderColor: Colors.redAccent,backgroundColor: Colors.redAccent),
              LoadingBouncingGrid.square(size: 40,borderSize: 2.5,borderColor: Colors.cyan,backgroundColor: Colors.cyan),
              LoadingBouncingGrid.square(size: 50,borderSize: 2.5,borderColor: Colors.blue,backgroundColor: Colors.blue),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingBouncingGrid.circle(size: 10,borderSize: 2.5,borderColor: Colors.lightGreen,backgroundColor: Colors.lightGreen,duration: Duration(seconds: 1),),
              LoadingBouncingGrid.circle(size: 20,borderSize: 2.5,borderColor: Colors.grey,backgroundColor: Colors.grey,duration: Duration(seconds: 2)),
              LoadingBouncingGrid.circle(size: 30,borderSize: 2.5,borderColor: Colors.redAccent,backgroundColor: Colors.redAccent,duration: Duration(seconds: 3)),
              LoadingBouncingGrid.circle(size: 40,borderSize: 2.5,borderColor: Colors.cyan,backgroundColor: Colors.cyan,duration: Duration(seconds: 4)),
              LoadingBouncingGrid.circle(size: 50,borderSize: 2.5,borderColor: Colors.blue,backgroundColor: Colors.blue,duration: Duration(seconds: 5)),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingBouncingGrid.square(size: 10,borderSize: 2.5,borderColor: Colors.lightGreen,backgroundColor: Colors.lightGreen,duration: Duration(seconds: 1),),
              LoadingBouncingGrid.square(size: 20,borderSize: 2.5,borderColor: Colors.grey,backgroundColor: Colors.grey,duration: Duration(seconds: 2)),
              LoadingBouncingGrid.square(size: 30,borderSize: 2.5,borderColor: Colors.redAccent,backgroundColor: Colors.redAccent,duration: Duration(seconds: 3)),
              LoadingBouncingGrid.square(size: 40,borderSize: 2.5,borderColor: Colors.cyan,backgroundColor: Colors.cyan,duration: Duration(seconds: 4)),
              LoadingBouncingGrid.square(size: 50,borderSize: 2.5,borderColor: Colors.blue,backgroundColor: Colors.blue,duration: Duration(seconds: 5)),
            ],
          ),
          // FadingLine With Circle And Square
          Divider(thickness: 1.5,color: Colors.orange,height: 10,indent: 30,endIndent: 30,),
          Center(child: Text("Fading Line",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.orange),)),
          Divider(thickness: 1.5,color: Colors.orange,height: 10,indent: 30,endIndent: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingFadingLine.circle(size: 10,),
              LoadingFadingLine.circle(size: 20,),
              LoadingFadingLine.circle(size: 30,),
              LoadingFadingLine.circle(size: 40,),
              LoadingFadingLine.circle(size: 50,),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingFadingLine.square(size: 10,),
              LoadingFadingLine.square(size: 20,),
              LoadingFadingLine.square(size: 30,),
              LoadingFadingLine.square(size: 40,),
              LoadingFadingLine.square(size: 50,),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingFadingLine.circle(size: 10,borderSize: 1.5,),
              LoadingFadingLine.circle(size: 20,borderSize: 1.5,),
              LoadingFadingLine.circle(size: 30,borderSize: 1.5,),
              LoadingFadingLine.circle(size: 40,borderSize: 1.5,),
              LoadingFadingLine.circle(size: 50,borderSize: 1.5,),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingFadingLine.square(size: 10,borderSize: 1.5,),
              LoadingFadingLine.square(size: 20,borderSize: 1.5,),
              LoadingFadingLine.square(size: 30,borderSize: 1.5,),
              LoadingFadingLine.square(size: 40,borderSize: 1.5,),
              LoadingFadingLine.square(size: 50,borderSize: 1.5,),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingFadingLine.circle(size: 10,borderSize: 2.5,borderColor: Colors.lightGreen,),
              LoadingFadingLine.circle(size: 20,borderSize: 2.5,borderColor: Colors.grey,),
              LoadingFadingLine.circle(size: 30,borderSize: 2.5,borderColor: Colors.redAccent,),
              LoadingFadingLine.circle(size: 40,borderSize: 2.5,borderColor: Colors.cyan,),
              LoadingFadingLine.circle(size: 50,borderSize: 2.5,borderColor: Colors.blue,),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingFadingLine.square(size: 10,borderSize: 2.5,borderColor: Colors.lightGreen,),
              LoadingFadingLine.square(size: 20,borderSize: 2.5,borderColor: Colors.grey,),
              LoadingFadingLine.square(size: 30,borderSize: 2.5,borderColor: Colors.redAccent,),
              LoadingFadingLine.square(size: 40,borderSize: 2.5,borderColor: Colors.cyan,),
              LoadingFadingLine.square(size: 50,borderSize: 2.5,borderColor: Colors.blue,),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingFadingLine.circle(size: 10,borderSize: 2.5,borderColor: Colors.lightGreen,backgroundColor: Colors.lightGreen,),
              LoadingFadingLine.circle(size: 20,borderSize: 2.5,borderColor: Colors.grey,backgroundColor: Colors.grey),
              LoadingFadingLine.circle(size: 30,borderSize: 2.5,borderColor: Colors.redAccent,backgroundColor: Colors.redAccent),
              LoadingFadingLine.circle(size: 40,borderSize: 2.5,borderColor: Colors.cyan,backgroundColor: Colors.cyan),
              LoadingFadingLine.circle(size: 50,borderSize: 2.5,borderColor: Colors.blue,backgroundColor: Colors.blue),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingFadingLine.square(size: 10,borderSize: 2.5,borderColor: Colors.lightGreen,backgroundColor: Colors.lightGreen,),
              LoadingFadingLine.square(size: 20,borderSize: 2.5,borderColor: Colors.grey,backgroundColor: Colors.grey),
              LoadingFadingLine.square(size: 30,borderSize: 2.5,borderColor: Colors.redAccent,backgroundColor: Colors.redAccent),
              LoadingFadingLine.square(size: 40,borderSize: 2.5,borderColor: Colors.cyan,backgroundColor: Colors.cyan),
              LoadingFadingLine.square(size: 50,borderSize: 2.5,borderColor: Colors.blue,backgroundColor: Colors.blue),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingFadingLine.circle(size: 10,borderSize: 2.5,borderColor: Colors.lightGreen,backgroundColor: Colors.lightGreen,duration: Duration(seconds: 1),),
              LoadingFadingLine.circle(size: 20,borderSize: 2.5,borderColor: Colors.grey,backgroundColor: Colors.grey,duration: Duration(seconds: 2)),
              LoadingFadingLine.circle(size: 30,borderSize: 2.5,borderColor: Colors.redAccent,backgroundColor: Colors.redAccent,duration: Duration(seconds: 3)),
              LoadingFadingLine.circle(size: 40,borderSize: 2.5,borderColor: Colors.cyan,backgroundColor: Colors.cyan,duration: Duration(seconds: 4)),
              LoadingFadingLine.circle(size: 50,borderSize: 2.5,borderColor: Colors.blue,backgroundColor: Colors.blue,duration: Duration(seconds: 5)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingFadingLine.square(size: 10,borderSize: 2.5,borderColor: Colors.lightGreen,backgroundColor: Colors.lightGreen,duration: Duration(seconds: 1),),
              LoadingFadingLine.square(size: 20,borderSize: 2.5,borderColor: Colors.grey,backgroundColor: Colors.grey,duration: Duration(seconds: 2)),
              LoadingFadingLine.square(size: 30,borderSize: 2.5,borderColor: Colors.redAccent,backgroundColor: Colors.redAccent,duration: Duration(seconds: 3)),
              LoadingFadingLine.square(size: 40,borderSize: 2.5,borderColor: Colors.cyan,backgroundColor: Colors.cyan,duration: Duration(seconds: 4)),
              LoadingFadingLine.square(size: 50,borderSize: 2.5,borderColor: Colors.blue,backgroundColor: Colors.blue,duration: Duration(seconds: 5)),
            ],
          ),
          // BumpingLine With Circle And Square
          Divider(thickness: 1.5,color: Colors.lime,height: 10,indent: 30,endIndent: 30,),
          Center(child: Text("Bumping Line",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.lime),)),
          Divider(thickness: 1.5,color: Colors.lime,height: 10,indent: 30,endIndent: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingBumpingLine.circle(size: 10,),
              LoadingBumpingLine.circle(size: 20,),
              LoadingBumpingLine.circle(size: 30,),
              LoadingBumpingLine.circle(size: 40,),
              LoadingBumpingLine.circle(size: 50,),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingBumpingLine.square(size: 10,),
              LoadingBumpingLine.square(size: 20,),
              LoadingBumpingLine.square(size: 30,),
              LoadingBumpingLine.square(size: 40,),
              LoadingBumpingLine.square(size: 50,),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingBumpingLine.circle(size: 10,borderSize: 1.5,),
              LoadingBumpingLine.circle(size: 20,borderSize: 1.5,),
              LoadingBumpingLine.circle(size: 30,borderSize: 1.5,),
              LoadingBumpingLine.circle(size: 40,borderSize: 1.5,),
              LoadingBumpingLine.circle(size: 50,borderSize: 1.5,),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingBumpingLine.square(size: 10,borderSize: 1.5,),
              LoadingBumpingLine.square(size: 20,borderSize: 1.5,),
              LoadingBumpingLine.square(size: 30,borderSize: 1.5,),
              LoadingBumpingLine.square(size: 40,borderSize: 1.5,),
              LoadingBumpingLine.square(size: 50,borderSize: 1.5,),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingBumpingLine.circle(size: 10,borderSize: 2.5,borderColor: Colors.lightGreen,),
              LoadingBumpingLine.circle(size: 20,borderSize: 2.5,borderColor: Colors.grey,),
              LoadingBumpingLine.circle(size: 30,borderSize: 2.5,borderColor: Colors.redAccent,),
              LoadingBumpingLine.circle(size: 40,borderSize: 2.5,borderColor: Colors.cyan,),
              LoadingBumpingLine.circle(size: 50,borderSize: 2.5,borderColor: Colors.blue,),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingBumpingLine.square(size: 10,borderSize: 2.5,borderColor: Colors.lightGreen,),
              LoadingBumpingLine.square(size: 20,borderSize: 2.5,borderColor: Colors.grey,),
              LoadingBumpingLine.square(size: 30,borderSize: 2.5,borderColor: Colors.redAccent,),
              LoadingBumpingLine.square(size: 40,borderSize: 2.5,borderColor: Colors.cyan,),
              LoadingBumpingLine.square(size: 50,borderSize: 2.5,borderColor: Colors.blue,),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingBumpingLine.circle(size: 10,borderSize: 2.5,borderColor: Colors.lightGreen,backgroundColor: Colors.lightGreen,),
              LoadingBumpingLine.circle(size: 20,borderSize: 2.5,borderColor: Colors.grey,backgroundColor: Colors.grey),
              LoadingBumpingLine.circle(size: 30,borderSize: 2.5,borderColor: Colors.redAccent,backgroundColor: Colors.redAccent),
              LoadingBumpingLine.circle(size: 40,borderSize: 2.5,borderColor: Colors.cyan,backgroundColor: Colors.cyan),
              LoadingBumpingLine.circle(size: 50,borderSize: 2.5,borderColor: Colors.blue,backgroundColor: Colors.blue),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingBumpingLine.square(size: 10,borderSize: 2.5,borderColor: Colors.lightGreen,backgroundColor: Colors.lightGreen,),
              LoadingBumpingLine.square(size: 20,borderSize: 2.5,borderColor: Colors.grey,backgroundColor: Colors.grey),
              LoadingBumpingLine.square(size: 30,borderSize: 2.5,borderColor: Colors.redAccent,backgroundColor: Colors.redAccent),
              LoadingBumpingLine.square(size: 40,borderSize: 2.5,borderColor: Colors.cyan,backgroundColor: Colors.cyan),
              LoadingBumpingLine.square(size: 50,borderSize: 2.5,borderColor: Colors.blue,backgroundColor: Colors.blue),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingBumpingLine.circle(size: 10,borderSize: 2.5,borderColor: Colors.lightGreen,backgroundColor: Colors.lightGreen,duration: Duration(seconds: 1),),
              LoadingBumpingLine.circle(size: 20,borderSize: 2.5,borderColor: Colors.grey,backgroundColor: Colors.grey,duration: Duration(seconds: 2)),
              LoadingBumpingLine.circle(size: 30,borderSize: 2.5,borderColor: Colors.redAccent,backgroundColor: Colors.redAccent,duration: Duration(seconds: 3)),
              LoadingBumpingLine.circle(size: 40,borderSize: 2.5,borderColor: Colors.cyan,backgroundColor: Colors.cyan,duration: Duration(seconds: 4)),
              LoadingBumpingLine.circle(size: 50,borderSize: 2.5,borderColor: Colors.blue,backgroundColor: Colors.blue,duration: Duration(seconds: 5)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingBumpingLine.square(size: 10,borderSize: 2.5,borderColor: Colors.lightGreen,backgroundColor: Colors.lightGreen,duration: Duration(seconds: 1),),
              LoadingBumpingLine.square(size: 20,borderSize: 2.5,borderColor: Colors.grey,backgroundColor: Colors.grey,duration: Duration(seconds: 2)),
              LoadingBumpingLine.square(size: 30,borderSize: 2.5,borderColor: Colors.redAccent,backgroundColor: Colors.redAccent,duration: Duration(seconds: 3)),
              LoadingBumpingLine.square(size: 40,borderSize: 2.5,borderColor: Colors.cyan,backgroundColor: Colors.cyan,duration: Duration(seconds: 4)),
              LoadingBumpingLine.square(size: 50,borderSize: 2.5,borderColor: Colors.blue,backgroundColor: Colors.blue,duration: Duration(seconds: 5)),
            ],
          ),
          // BouncingLine With Circle And Square
          Divider(thickness: 1.5,color: Colors.brown,height: 10,indent: 30,endIndent: 30,),
          Center(child: Text("Bouncing Line",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.brown),)),
          Divider(thickness: 1.5,color: Colors.brown,height: 10,indent: 30,endIndent: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingBouncingLine.circle(size: 10,),
              LoadingBouncingLine.circle(size: 20,),
              LoadingBouncingLine.circle(size: 30,),
              LoadingBouncingLine.circle(size: 40,),
              LoadingBouncingLine.circle(size: 50,),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingBouncingLine.square(size: 10,),
              LoadingBouncingLine.square(size: 20,),
              LoadingBouncingLine.square(size: 30,),
              LoadingBouncingLine.square(size: 40,),
              LoadingBouncingLine.square(size: 50,),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingBouncingLine.circle(size: 10,borderSize: 1.5,),
              LoadingBouncingLine.circle(size: 20,borderSize: 1.5,),
              LoadingBouncingLine.circle(size: 30,borderSize: 1.5,),
              LoadingBouncingLine.circle(size: 40,borderSize: 1.5,),
              LoadingBouncingLine.circle(size: 50,borderSize: 1.5,),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingBouncingLine.square(size: 10,borderSize: 1.5,),
              LoadingBouncingLine.square(size: 20,borderSize: 1.5,),
              LoadingBouncingLine.square(size: 30,borderSize: 1.5,),
              LoadingBouncingLine.square(size: 40,borderSize: 1.5,),
              LoadingBouncingLine.square(size: 50,borderSize: 1.5,),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingBouncingLine.circle(size: 10,borderSize: 2.5,borderColor: Colors.lightGreen,),
              LoadingBouncingLine.circle(size: 20,borderSize: 2.5,borderColor: Colors.grey,),
              LoadingBouncingLine.circle(size: 30,borderSize: 2.5,borderColor: Colors.redAccent,),
              LoadingBouncingLine.circle(size: 40,borderSize: 2.5,borderColor: Colors.cyan,),
              LoadingBouncingLine.circle(size: 50,borderSize: 2.5,borderColor: Colors.blue,),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingBouncingLine.square(size: 10,borderSize: 2.5,borderColor: Colors.lightGreen,),
              LoadingBouncingLine.square(size: 20,borderSize: 2.5,borderColor: Colors.grey,),
              LoadingBouncingLine.square(size: 30,borderSize: 2.5,borderColor: Colors.redAccent,),
              LoadingBouncingLine.square(size: 40,borderSize: 2.5,borderColor: Colors.cyan,),
              LoadingBouncingLine.square(size: 50,borderSize: 2.5,borderColor: Colors.blue,),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingBouncingLine.circle(size: 10,borderSize: 2.5,borderColor: Colors.lightGreen,backgroundColor: Colors.lightGreen,),
              LoadingBouncingLine.circle(size: 20,borderSize: 2.5,borderColor: Colors.grey,backgroundColor: Colors.grey),
              LoadingBouncingLine.circle(size: 30,borderSize: 2.5,borderColor: Colors.redAccent,backgroundColor: Colors.redAccent),
              LoadingBouncingLine.circle(size: 40,borderSize: 2.5,borderColor: Colors.cyan,backgroundColor: Colors.cyan),
              LoadingBouncingLine.circle(size: 50,borderSize: 2.5,borderColor: Colors.blue,backgroundColor: Colors.blue),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingBouncingLine.square(size: 10,borderSize: 2.5,borderColor: Colors.lightGreen,backgroundColor: Colors.lightGreen,),
              LoadingBouncingLine.square(size: 20,borderSize: 2.5,borderColor: Colors.grey,backgroundColor: Colors.grey),
              LoadingBouncingLine.square(size: 30,borderSize: 2.5,borderColor: Colors.redAccent,backgroundColor: Colors.redAccent),
              LoadingBouncingLine.square(size: 40,borderSize: 2.5,borderColor: Colors.cyan,backgroundColor: Colors.cyan),
              LoadingBouncingLine.square(size: 50,borderSize: 2.5,borderColor: Colors.blue,backgroundColor: Colors.blue),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingBouncingLine.circle(size: 10,borderSize: 2.5,borderColor: Colors.lightGreen,backgroundColor: Colors.lightGreen,duration: Duration(seconds: 1),),
              LoadingBouncingLine.circle(size: 20,borderSize: 2.5,borderColor: Colors.grey,backgroundColor: Colors.grey,duration: Duration(seconds: 2)),
              LoadingBouncingLine.circle(size: 30,borderSize: 2.5,borderColor: Colors.redAccent,backgroundColor: Colors.redAccent,duration: Duration(seconds: 3)),
              LoadingBouncingLine.circle(size: 40,borderSize: 2.5,borderColor: Colors.cyan,backgroundColor: Colors.cyan,duration: Duration(seconds: 4)),
              LoadingBouncingLine.circle(size: 50,borderSize: 2.5,borderColor: Colors.blue,backgroundColor: Colors.blue,duration: Duration(seconds: 5)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingBouncingLine.square(size: 10,borderSize: 2.5,borderColor: Colors.lightGreen,backgroundColor: Colors.lightGreen,duration: Duration(seconds: 1),),
              LoadingBouncingLine.square(size: 20,borderSize: 2.5,borderColor: Colors.grey,backgroundColor: Colors.grey,duration: Duration(seconds: 2)),
              LoadingBouncingLine.square(size: 30,borderSize: 2.5,borderColor: Colors.redAccent,backgroundColor: Colors.redAccent,duration: Duration(seconds: 3)),
              LoadingBouncingLine.square(size: 40,borderSize: 2.5,borderColor: Colors.cyan,backgroundColor: Colors.cyan,duration: Duration(seconds: 4)),
              LoadingBouncingLine.square(size: 50,borderSize: 2.5,borderColor: Colors.blue,backgroundColor: Colors.blue,duration: Duration(seconds: 5)),
            ],
          ),
          // DoubleFlipping With Circle And Square
          Divider(thickness: 1.5,color: Colors.indigo,height: 10,indent: 30,endIndent: 30,),
          Center(child: Text("Double Flipping",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.indigo),)),
          Divider(thickness: 1.5,color: Colors.indigo,height: 10,indent: 30,endIndent: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingDoubleFlipping.circle(size: 10,),
              LoadingDoubleFlipping.circle(size: 20,),
              LoadingDoubleFlipping.circle(size: 30,),
              LoadingDoubleFlipping.circle(size: 40,),
              LoadingDoubleFlipping.circle(size: 50,),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingDoubleFlipping.square(size: 10,),
              LoadingDoubleFlipping.square(size: 20,),
              LoadingDoubleFlipping.square(size: 30,),
              LoadingDoubleFlipping.square(size: 40,),
              LoadingDoubleFlipping.square(size: 50,),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingDoubleFlipping.circle(size: 10,borderSize: 1.5,),
              LoadingDoubleFlipping.circle(size: 20,borderSize: 1.5,),
              LoadingDoubleFlipping.circle(size: 30,borderSize: 1.5,),
              LoadingDoubleFlipping.circle(size: 40,borderSize: 1.5,),
              LoadingDoubleFlipping.circle(size: 50,borderSize: 1.5,),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingDoubleFlipping.square(size: 10,borderSize: 1.5,),
              LoadingDoubleFlipping.square(size: 20,borderSize: 1.5,),
              LoadingDoubleFlipping.square(size: 30,borderSize: 1.5,),
              LoadingDoubleFlipping.square(size: 40,borderSize: 1.5,),
              LoadingDoubleFlipping.square(size: 50,borderSize: 1.5,),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingDoubleFlipping.circle(size: 10,borderSize: 2.5,borderColor: Colors.lightGreen,),
              LoadingDoubleFlipping.circle(size: 20,borderSize: 2.5,borderColor: Colors.grey,),
              LoadingDoubleFlipping.circle(size: 30,borderSize: 2.5,borderColor: Colors.redAccent,),
              LoadingDoubleFlipping.circle(size: 40,borderSize: 2.5,borderColor: Colors.cyan,),
              LoadingDoubleFlipping.circle(size: 50,borderSize: 2.5,borderColor: Colors.blue,),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingDoubleFlipping.square(size: 10,borderSize: 2.5,borderColor: Colors.lightGreen,),
              LoadingDoubleFlipping.square(size: 20,borderSize: 2.5,borderColor: Colors.grey,),
              LoadingDoubleFlipping.square(size: 30,borderSize: 2.5,borderColor: Colors.redAccent,),
              LoadingDoubleFlipping.square(size: 40,borderSize: 2.5,borderColor: Colors.cyan,),
              LoadingDoubleFlipping.square(size: 50,borderSize: 2.5,borderColor: Colors.blue,),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingDoubleFlipping.circle(size: 10,borderSize: 2.5,borderColor: Colors.lightGreen,backgroundColor: Colors.lightGreen,),
              LoadingDoubleFlipping.circle(size: 20,borderSize: 2.5,borderColor: Colors.grey,backgroundColor: Colors.grey),
              LoadingDoubleFlipping.circle(size: 30,borderSize: 2.5,borderColor: Colors.redAccent,backgroundColor: Colors.redAccent),
              LoadingDoubleFlipping.circle(size: 40,borderSize: 2.5,borderColor: Colors.cyan,backgroundColor: Colors.cyan),
              LoadingDoubleFlipping.circle(size: 50,borderSize: 2.5,borderColor: Colors.blue,backgroundColor: Colors.blue),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingDoubleFlipping.square(size: 10,borderSize: 2.5,borderColor: Colors.lightGreen,backgroundColor: Colors.lightGreen,),
              LoadingDoubleFlipping.square(size: 20,borderSize: 2.5,borderColor: Colors.grey,backgroundColor: Colors.grey),
              LoadingDoubleFlipping.square(size: 30,borderSize: 2.5,borderColor: Colors.redAccent,backgroundColor: Colors.redAccent),
              LoadingDoubleFlipping.square(size: 40,borderSize: 2.5,borderColor: Colors.cyan,backgroundColor: Colors.cyan),
              LoadingDoubleFlipping.square(size: 50,borderSize: 2.5,borderColor: Colors.blue,backgroundColor: Colors.blue),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingDoubleFlipping.circle(size: 10,borderSize: 2.5,borderColor: Colors.lightGreen,backgroundColor: Colors.lightGreen,duration: Duration(seconds: 1),),
              LoadingDoubleFlipping.circle(size: 20,borderSize: 2.5,borderColor: Colors.grey,backgroundColor: Colors.grey,duration: Duration(seconds: 2)),
              LoadingDoubleFlipping.circle(size: 30,borderSize: 2.5,borderColor: Colors.redAccent,backgroundColor: Colors.redAccent,duration: Duration(seconds: 3)),
              LoadingDoubleFlipping.circle(size: 40,borderSize: 2.5,borderColor: Colors.cyan,backgroundColor: Colors.cyan,duration: Duration(seconds: 4)),
              LoadingDoubleFlipping.circle(size: 50,borderSize: 2.5,borderColor: Colors.blue,backgroundColor: Colors.blue,duration: Duration(seconds: 5)),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingDoubleFlipping.square(size: 10,borderSize: 2.5,borderColor: Colors.lightGreen,backgroundColor: Colors.lightGreen,duration: Duration(seconds: 1),),
              LoadingDoubleFlipping.square(size: 20,borderSize: 2.5,borderColor: Colors.grey,backgroundColor: Colors.grey,duration: Duration(seconds: 2)),
              LoadingDoubleFlipping.square(size: 30,borderSize: 2.5,borderColor: Colors.redAccent,backgroundColor: Colors.redAccent,duration: Duration(seconds: 3)),
              LoadingDoubleFlipping.square(size: 40,borderSize: 2.5,borderColor: Colors.cyan,backgroundColor: Colors.cyan,duration: Duration(seconds: 4)),
              LoadingDoubleFlipping.square(size: 50,borderSize: 2.5,borderColor: Colors.blue,backgroundColor: Colors.blue,duration: Duration(seconds: 5)),
            ],
          ),
          // JumpingLine With Circle And Square
          Divider(thickness: 1.5,color: Colors.blueGrey,height: 10,indent: 30,endIndent: 30,),
          Center(child: Text("Jumping Line",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.blueGrey),)),
          Divider(thickness: 1.5,color: Colors.blueGrey,height: 10,indent: 30,endIndent: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingJumpingLine.circle(size: 10,),
              LoadingJumpingLine.circle(size: 20,),
              LoadingJumpingLine.circle(size: 30,),
              LoadingJumpingLine.circle(size: 40,),
              LoadingJumpingLine.circle(size: 50,),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingJumpingLine.square(size: 10,),
              LoadingJumpingLine.square(size: 20,),
              LoadingJumpingLine.square(size: 30,),
              LoadingJumpingLine.square(size: 40,),
              LoadingJumpingLine.square(size: 50,),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingJumpingLine.circle(size: 10,borderSize: 1.5,),
              LoadingJumpingLine.circle(size: 20,borderSize: 1.5,),
              LoadingJumpingLine.circle(size: 30,borderSize: 1.5,),
              LoadingJumpingLine.circle(size: 40,borderSize: 1.5,),
              LoadingJumpingLine.circle(size: 50,borderSize: 1.5,),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingJumpingLine.square(size: 10,borderSize: 1.5,),
              LoadingJumpingLine.square(size: 20,borderSize: 1.5,),
              LoadingJumpingLine.square(size: 30,borderSize: 1.5,),
              LoadingJumpingLine.square(size: 40,borderSize: 1.5,),
              LoadingJumpingLine.square(size: 50,borderSize: 1.5,),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingJumpingLine.circle(size: 10,borderSize: 2.5,borderColor: Colors.lightGreen,),
              LoadingJumpingLine.circle(size: 20,borderSize: 2.5,borderColor: Colors.grey,),
              LoadingJumpingLine.circle(size: 30,borderSize: 2.5,borderColor: Colors.redAccent,),
              LoadingJumpingLine.circle(size: 40,borderSize: 2.5,borderColor: Colors.cyan,),
              LoadingJumpingLine.circle(size: 50,borderSize: 2.5,borderColor: Colors.blue,),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingJumpingLine.square(size: 10,borderSize: 2.5,borderColor: Colors.lightGreen,),
              LoadingJumpingLine.square(size: 20,borderSize: 2.5,borderColor: Colors.grey,),
              LoadingJumpingLine.square(size: 30,borderSize: 2.5,borderColor: Colors.redAccent,),
              LoadingJumpingLine.square(size: 40,borderSize: 2.5,borderColor: Colors.cyan,),
              LoadingJumpingLine.square(size: 50,borderSize: 2.5,borderColor: Colors.blue,),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingJumpingLine.circle(size: 10,borderSize: 2.5,borderColor: Colors.lightGreen,backgroundColor: Colors.lightGreen,),
              LoadingJumpingLine.circle(size: 20,borderSize: 2.5,borderColor: Colors.grey,backgroundColor: Colors.grey),
              LoadingJumpingLine.circle(size: 30,borderSize: 2.5,borderColor: Colors.redAccent,backgroundColor: Colors.redAccent),
              LoadingJumpingLine.circle(size: 40,borderSize: 2.5,borderColor: Colors.cyan,backgroundColor: Colors.cyan),
              LoadingJumpingLine.circle(size: 50,borderSize: 2.5,borderColor: Colors.blue,backgroundColor: Colors.blue),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingJumpingLine.square(size: 10,borderSize: 2.5,borderColor: Colors.lightGreen,backgroundColor: Colors.lightGreen,),
              LoadingJumpingLine.square(size: 20,borderSize: 2.5,borderColor: Colors.grey,backgroundColor: Colors.grey),
              LoadingJumpingLine.square(size: 30,borderSize: 2.5,borderColor: Colors.redAccent,backgroundColor: Colors.redAccent),
              LoadingJumpingLine.square(size: 40,borderSize: 2.5,borderColor: Colors.cyan,backgroundColor: Colors.cyan),
              LoadingJumpingLine.square(size: 50,borderSize: 2.5,borderColor: Colors.blue,backgroundColor: Colors.blue),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingJumpingLine.circle(size: 10,borderSize: 2.5,borderColor: Colors.lightGreen,backgroundColor: Colors.lightGreen,duration: Duration(seconds: 1),),
              LoadingJumpingLine.circle(size: 20,borderSize: 2.5,borderColor: Colors.grey,backgroundColor: Colors.grey,duration: Duration(seconds: 2)),
              LoadingJumpingLine.circle(size: 30,borderSize: 2.5,borderColor: Colors.redAccent,backgroundColor: Colors.redAccent,duration: Duration(seconds: 3)),
              LoadingJumpingLine.circle(size: 40,borderSize: 2.5,borderColor: Colors.cyan,backgroundColor: Colors.cyan,duration: Duration(seconds: 4)),
              LoadingJumpingLine.circle(size: 50,borderSize: 2.5,borderColor: Colors.blue,backgroundColor: Colors.blue,duration: Duration(seconds: 5)),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingJumpingLine.square(size: 10,borderSize: 2.5,borderColor: Colors.lightGreen,backgroundColor: Colors.lightGreen,duration: Duration(seconds: 1),),
              LoadingJumpingLine.square(size: 20,borderSize: 2.5,borderColor: Colors.grey,backgroundColor: Colors.grey,duration: Duration(seconds: 2)),
              LoadingJumpingLine.square(size: 30,borderSize: 2.5,borderColor: Colors.redAccent,backgroundColor: Colors.redAccent,duration: Duration(seconds: 3)),
              LoadingJumpingLine.square(size: 40,borderSize: 2.5,borderColor: Colors.cyan,backgroundColor: Colors.cyan,duration: Duration(seconds: 4)),
              LoadingJumpingLine.square(size: 50,borderSize: 2.5,borderColor: Colors.blue,backgroundColor: Colors.blue,duration: Duration(seconds: 5)),
            ],
          ),
          // Rotating With Square
          Divider(thickness: 1.5,color: Colors.purpleAccent,height: 10,indent: 30,endIndent: 30,),
          Center(child: Text("Rotating",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.purpleAccent),)),
          Divider(thickness: 1.5,color: Colors.purpleAccent,height: 10,indent: 30,endIndent: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingRotating.square(size: 10,),
              LoadingRotating.square(size: 20,),
              LoadingRotating.square(size: 30,),
              LoadingRotating.square(size: 40,),
              LoadingRotating.square(size: 50,),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingRotating.square(size: 10,borderSize: 1.5,),
              LoadingRotating.square(size: 20,borderSize: 1.5,),
              LoadingRotating.square(size: 30,borderSize: 1.5,),
              LoadingRotating.square(size: 40,borderSize: 1.5,),
              LoadingRotating.square(size: 50,borderSize: 1.5,),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingRotating.square(size: 10,borderSize: 2.5,borderColor: Colors.lightGreen,),
              LoadingRotating.square(size: 20,borderSize: 2.5,borderColor: Colors.grey,),
              LoadingRotating.square(size: 30,borderSize: 2.5,borderColor: Colors.redAccent,),
              LoadingRotating.square(size: 40,borderSize: 2.5,borderColor: Colors.cyan,),
              LoadingRotating.square(size: 50,borderSize: 2.5,borderColor: Colors.blue,),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingRotating.square(size: 10,borderSize: 2.5,borderColor: Colors.lightGreen,backgroundColor: Colors.lightGreen,),
              LoadingRotating.square(size: 20,borderSize: 2.5,borderColor: Colors.grey,backgroundColor: Colors.grey),
              LoadingRotating.square(size: 30,borderSize: 2.5,borderColor: Colors.redAccent,backgroundColor: Colors.redAccent),
              LoadingRotating.square(size: 40,borderSize: 2.5,borderColor: Colors.cyan,backgroundColor: Colors.cyan),
              LoadingRotating.square(size: 50,borderSize: 2.5,borderColor: Colors.blue,backgroundColor: Colors.blue),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoadingRotating.square(size: 10,borderSize: 2.5,borderColor: Colors.lightGreen,backgroundColor: Colors.lightGreen,duration: Duration(seconds: 1),),
              LoadingRotating.square(size: 20,borderSize: 2.5,borderColor: Colors.grey,backgroundColor: Colors.grey,duration: Duration(seconds: 2)),
              LoadingRotating.square(size: 30,borderSize: 2.5,borderColor: Colors.redAccent,backgroundColor: Colors.redAccent,duration: Duration(seconds: 3)),
              LoadingRotating.square(size: 40,borderSize: 2.5,borderColor: Colors.cyan,backgroundColor: Colors.cyan,duration: Duration(seconds: 4)),
              LoadingRotating.square(size: 50,borderSize: 2.5,borderColor: Colors.blue,backgroundColor: Colors.blue,duration: Duration(seconds: 5)),
            ],
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
