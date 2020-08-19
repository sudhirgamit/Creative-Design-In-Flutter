import 'package:creativedesign/Animation/animated_list.dart';
import 'package:flutter/material.dart';
import 'package:widget_with_codeview/syntax_highlighter.dart';

class Animated_List_Code extends StatelessWidget {
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
        title: Text("Animated List",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Animated_List()));
          },
          icon: Icon(Icons.arrow_back_ios,size: 20,color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){
              //Navigator.push(context, MaterialPageRoute(builder: (context)=>Custom_AppBar()));
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
import 'package:creativedesign/Animation_Codes/animated_list_code.dart';
import 'package:creativedesign/Pages/homepage.dart';
import 'package:flutter/material.dart';

class Animated_List extends StatefulWidget {
  @override
  _Animated_ListState createState() => _Animated_ListState();
}
class _Animated_ListState extends State<Animated_List> {
  final listKey = new GlobalKey<AnimatedListState>();
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  List<String> _lists = []; int _count = 0;
  Widget _listItem(context,index,animation){
    String item = _lists[index];
    return SlideTransition(
      position: Tween<Offset>(
        begin: Offset(-1,0),
        end: Offset.zero
      ).animate(animation),
      child: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [BoxShadow(
                color: Colors.black,
                blurRadius: 10,
                spreadRadius: 0.5
            )],
          borderRadius: BorderRadius.all(Radius.circular(5))
        ),
        child: ListTile(
          leading: CircleAvatar(
            child: Text(item),
          ),
          title: Text("Creative Design",style: TextStyle(color: Colors.black,fontSize: 20,letterSpacing: 1,fontWeight: FontWeight.w600),),
          trailing: Icon(Icons.arrow_forward),
        ),
      )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Animated List",style: TextStyle(color: Colors.black),),
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Animated_List_Code()));
            },
            icon: Icon(Icons.transfer_within_a_station,size: 25,color: Colors.black),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height-150,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [BoxShadow(
                color: Colors.black,
                blurRadius: 12,
                spreadRadius: 0.5
              )]
            ),
            child: AnimatedList(
                key: listKey,
                initialItemCount: _lists.length,
                itemBuilder: (context,index,animation){
                  return _listItem(context,index,animation);
                },
                reverse: true,
            ),
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RaisedButton(
                onPressed: (){
                  setState(() {
                    _count +=1;
                    listKey.currentState.insertItem(0, duration:Duration(milliseconds: 400));
                    _lists = []..add(_count.toString())..addAll(_lists);
                  });
                },
                padding: EdgeInsets.symmetric(horizontal: 30),
                color: Colors.green,
                textColor: Colors.white,
                child: Text("Add To List"),
                elevation: 5.0,
              ),
              RaisedButton(
                onPressed: (){
                  if(_lists.length<=1) return;
                  listKey.currentState.removeItem(0,(_,animation)=>_listItem(context, 0, animation),duration:Duration(milliseconds: 400));
                  setState(() {
                    _lists.removeAt(0);
                  });
                },
                color: Colors.red,
                textColor: Colors.white,
                child: Text("Remove To List"),
                elevation: 5.0,
              ),
            ],
          )
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
