import 'package:creativedesign/Async/listview_builders.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:widget_with_codeview/syntax_highlighter.dart';

class ListView_Builders_Code extends StatelessWidget {
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
        title: Text("ListView Builder",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>ListView_Builders()));
          },
          icon: Icon(Icons.arrow_back_ios,size: 20,color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){
              launch("https://github.com/sudhirgamit/Creative-Design-In-Flutter/blob/master/lib/Async/listview_builders.dart");
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
import 'dart:convert';
import 'package:creativedesign/Async_Codes/listview_builders_code.dart';
import 'package:creativedesign/Pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ListView_Builders extends StatefulWidget {
  @override
  _ListView_BuildersState createState() => _ListView_BuildersState();
}
class _ListView_BuildersState extends State<ListView_Builders> {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  var url = "https://jsonplaceholder.typicode.com/photos";
  var data;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }
  Future getData() async {
    var res = await http.get(url);
    data = jsonDecode(res.body);
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text("ListView Builder"),
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ListView_Builders_Code()));
            },
            icon: Icon(Icons.transfer_within_a_station,size: 25),
          )
        ],
      ),
      backgroundColor: Colors.grey,
      body: data!=null ? Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index){
                  return Card(
                    child: ListTile(
                      leading: Image.network(data[index]["url"]),
                      title: Text(data[index]["title"],style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18)),
                      subtitle: Text(data[index]["id"].toString()),
                      trailing: Icon(Icons.edit),
                    ),
                  );
                },
            ),
      )
          : Center(
          child: CircularProgressIndicator(
            backgroundColor: Colors.white,
            strokeWidth: 2.5,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.grey),
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
    );
  }
}
