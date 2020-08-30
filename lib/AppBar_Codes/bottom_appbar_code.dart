import 'package:creativedesign/AppBar/bottom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:widget_with_codeview/syntax_highlighter.dart';

class Bottom_AppBar_Code extends StatelessWidget {
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
        title: Text("Bottom AppBar",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Bottom_Appbar()));
          },
          icon: Icon(Icons.arrow_back_ios,size: 20,color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){
              launch("https://github.com/sudhirgamit/Creative-Design-In-Flutter/blob/master/lib/AppBar/bottom_appbar.dart");
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
import 'package:creativedesign/AppBar_Codes/bottom_appbar_code.dart';
import 'package:creativedesign/Pages/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bottom_Appbar extends StatefulWidget {
  @override
  _Bottom_AppbarState createState() => _Bottom_AppbarState();
}
class _Bottom_AppbarState extends State<Bottom_Appbar> {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  String _imageUrl = "https://images.unsplash.com/photo-1585130640692-cf130195ca1f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=667&q=80";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            // Banner Widget
            Text("Banner Widget",textAlign: TextAlign.center,style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 20),),
            Container(
              margin: EdgeInsets.all(10),
              color: Colors.yellow,
              height: 100,
              child: ClipRect(
                child: Banner(
                  message: "10% Discount",
                  location: BannerLocation.topEnd,
                  color: Colors.red,
                  child: Container(
                    alignment: AlignmentDirectional.center,
                    child: Text("Banner Widget",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.black,),),
                  ),
                ),
              ),
            ),
            Divider(thickness: 1.5,color: Colors.lightGreen,indent: 20,endIndent: 20,),
            // ButtonBar Widget
            Text("ButtonBar Widget",textAlign: TextAlign.center,style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 20),),
            ButtonBar(
              alignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                OutlineButton(
                  onPressed: (){},
                  child: Text("OK"),
                  splashColor: Colors.cyan,
                  textColor: Colors.black,
                  padding: EdgeInsets.symmetric(horizontal: 50,vertical: 15),
                ),
                OutlineButton(
                  onPressed: (){},
                  child: Text("CANCEL"),
                  splashColor: Colors.cyan,
                  textColor: Colors.black,
                  padding: EdgeInsets.symmetric(horizontal: 40,vertical: 15),
                )
              ],
            ),
            Divider(thickness: 1.5,color: Colors.lightGreen,indent: 20,endIndent: 20,),
            // Baseline Widget
            Text("Baseline Widget",textAlign: TextAlign.center,style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 20),),
            SizedBox(height: 20,),
            Container(
              color: Colors.cyan,
              height: 120,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Baseline(
                    baseline: 30,
                    baselineType: TextBaseline.alphabetic,
                    child: Container(
                      color: Colors.red,
                      width: 95,height: 95,
                    ),
                  ),
                  Baseline(
                    baseline: 150,
                    baselineType: TextBaseline.alphabetic,
                    child: Container(
                      color: Colors.blueAccent,
                      width: 95,height: 95,
                    ),
                  ),
                  Baseline(
                    baseline: 30,
                    baselineType: TextBaseline.alphabetic,
                    child: Container(
                      color: Colors.lightGreen,
                      width: 95,height: 95,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30,),
            Divider(thickness: 1.5,color: Colors.lightGreen,indent: 20,endIndent: 20,),
            // Baseline Widget
            Text("ClipOval Widget",textAlign: TextAlign.center,style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 20),),
            Container(
              width: 200,height: 200,
              child: ClipOval(
                clipBehavior: Clip.antiAlias,
                child: Image.network(_imageUrl)
              ),
            ),
            Divider(thickness: 1.5,color: Colors.lightGreen,indent: 20,endIndent: 20,),
            // Baseline Widget
            Text("ClipRect Widget",textAlign: TextAlign.center,style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 20),),
            Container(
              width: 200,height: 200,
              child: ClipRect(
                  clipBehavior: Clip.hardEdge,
                  child: Image.network(_imageUrl)
              ),
            ),
            Divider(thickness: 1.5,color: Colors.lightGreen,indent: 20,endIndent: 20,),
            // Baseline Widget
            Text("ClipRRect Widget",textAlign: TextAlign.center,style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 20),),
            Container(
              width: 200,height: 200,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Image.network(_imageUrl,fit: BoxFit.cover,)
              ),
            ),
            Divider(thickness: 1.5,color: Colors.lightGreen,indent: 20,endIndent: 20,),
            // Baseline Widget
            Text("ClipPath Widget",textAlign: TextAlign.center,style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 20),),
            Container(
              width: 200,height: 200,
              child: ClipPath(
                  clipper: ArcClipper(),
                  child: Image.network(_imageUrl,fit: BoxFit.cover,)
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        elevation: 10.0,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              onPressed: () {
                setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                });
              },
              icon: Icon(Icons.arrow_back_ios),
              color: Colors.black,
              splashColor: Colors.grey,
              tooltip: "Back",
            ),
            Text("Bottom Bar",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 20),),
            IconButton(
              onPressed: (){
                setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Bottom_AppBar_Code()));
                });
              },
              icon: Icon(Icons.transfer_within_a_station),
              color: Colors.black,
              splashColor: Colors.grey,
              tooltip: "Code",
            ),
          ],
        ),
      ),
    );
  }
}

class ArcClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height-50);
    var firstControlPoint = Offset(size.width/4,size.height);
    var firstPoint = Offset(size.width/2,size.height);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy, firstPoint.dx, firstPoint.dy);
    var secondControlPoint = Offset(size.width-(size.width/4),size.height);
    var secondPoint = Offset(size.width,size.height-50);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy, secondPoint.dx, secondPoint.dy);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
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
