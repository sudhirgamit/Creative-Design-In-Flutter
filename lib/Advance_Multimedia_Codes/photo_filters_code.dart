import 'package:creativedesign/Advance_Multimedia/photo_filters.dart';
import 'package:flutter/material.dart';
import 'package:widget_with_codeview/syntax_highlighter.dart';

class Photo_Filters_Code extends StatelessWidget {
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
        title: Text("Photo Filters",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Photo_Filters()));
          },
          icon: Icon(Icons.arrow_back_ios,size: 20,color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){
              //launch("https://github.com/sudhirgamit/Creative-Design-In-Flutter/blob/master/lib/Animation/animated_align.dart");
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
import 'dart:typed_data';
import 'package:creativedesign/Advance_Multimedia_Codes/photo_filters_code.dart';
import 'package:creativedesign/Pages/advance.dart';
import 'package:creativedesign/Utils/filters.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:ui' as ui;
import 'package:flutter/services.dart';

class Photo_Filters extends StatefulWidget {
  @override
  _Photo_FiltersState createState() => _Photo_FiltersState();
}
class _Photo_FiltersState extends State<Photo_Filters> {
  final List<List<double>> filters = [NOFILTER,PURPLE,YELLOW,CYAN,BLACKWHITE,OLDTIMES,COLDLIFE,MILK,SEPIUM];
  final GlobalKey _filterKey = GlobalKey();
  void convertWidgetToImage() async{
    RenderRepaintBoundary renderRepaintBoundary= _filterKey.currentContext.findRenderObject();
    ui.Image boxImage = await renderRepaintBoundary.toImage(pixelRatio: 1);
    ByteData byteData = await boxImage.toByteData(format: ui.ImageByteFormat.png);
    Uint8List uint8list = byteData.buffer.asUint8List();
    showDialog(
        context: context,
        builder: (context){
          return AlertDialog(
            elevation: 5.0,
            title: Center(child: Text("Saved")),
            content: Container(
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width,
                  maxHeight: MediaQuery.of(context).size.height-200,
                ),
                child: Image.memory(
                  uint8list,
                )
            ),
          );
        }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Photo Filters",style: TextStyle(color: Colors.black),),
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Photo_Filters_Code()));
            },
            icon: Icon(Icons.transfer_within_a_station,size: 25,color: Colors.black,),
          )
        ],
      ),
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: convertWidgetToImage,
        child: Icon(CupertinoIcons.check_mark),
        elevation: 5.0,
        mini: true,
        backgroundColor: Colors.green,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Center(
        child: RepaintBoundary(
          key: _filterKey,
          child: Container(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width-100,
              maxHeight: MediaQuery.of(context).size.height-200,
            ),
            child: PageView.builder(
                itemCount: filters.length,
                itemBuilder: (context,index){
                  return ColorFiltered(
                    colorFilter: ColorFilter.matrix(filters[index]),
                    child: Card(
                      elevation: 2.0,
                      child: Image.asset(
                          "assets/Screen.jpg",
                          fit: BoxFit.cover,
                      ),
                    ),
                  );
                }
            ),
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
