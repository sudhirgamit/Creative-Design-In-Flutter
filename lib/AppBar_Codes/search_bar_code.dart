import 'package:creativedesign/AppBar/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:widget_with_codeview/syntax_highlighter.dart';

class Search_Bar_Code extends StatelessWidget {
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
        title: Text("Search Bar",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Search_Bar()));
          },
          icon: Icon(Icons.arrow_back_ios,size: 20,color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){
              launch("https://github.com/sudhirgamit/Creative-Design-In-Flutter/blob/master/lib/AppBar/search_bar.dart");
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
import 'package:creativedesign/AppBar_Codes/search_bar_code.dart';
import 'package:creativedesign/Pages/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Search_Bar extends StatefulWidget {
  @override
  _Search_BarState createState() => _Search_BarState();
}
class _Search_BarState extends State<Search_Bar> {
  final _scaffoldkey = new GlobalKey<ScaffoldState>();
  final List<String> district_names = ["Surat","Ahmedabad","Vadodara","Rajkot","Bhavnagar","Jamnagar","Mehsana","Bharuch","Kutch","Dahod","Patan","Navsari","Anand","Tapi","Amreli"];
  String query = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      key: _scaffoldkey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Search Bar",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
          },
          icon: Icon(Icons.arrow_back_ios,size: 20,color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () async {
              final String Selected = await showSearch(
                  context: context,
                  delegate: _MySearchDelegate(district_names)
              );
              if(Selected != null && Selected != query){
                setState(() {
                  query = Selected;
                });
              }
            },
            icon: Icon(Icons.search,size: 25,color: Colors.black),
          ),
          IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Search_Bar_Code()));
            },
            icon: Icon(Icons.transfer_within_a_station,size: 25,color: Colors.black),
          )
        ],
      ),
      body: _buildList(context),
    );
  }
  Widget _buildList(_searchText){
    final searchItems = query.isEmpty ?
        district_names :
        district_names.where((name)=>name.toLowerCase().contains(query.toLowerCase())).toList();
    return ListView.builder(
        itemCount: searchItems.length,
        itemBuilder: (context,index){
          return Card(
            elevation: 5.0,
            child: ListTile(
              title: Text(searchItems[index],style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,color: Colors.black),),
              leading: Icon(CupertinoIcons.home),
              trailing: Icon(CupertinoIcons.delete),
            ),
          );
        }
    );
  }
}
class _MySearchDelegate extends SearchDelegate<String>{
  final List<String> district_names;
  _MySearchDelegate(this.district_names);
  final List<String> history_names = ["Panchmahal","Rajkot","Morbi","Bhavnagar","Jamnagar","Narmada","Surat","Gandhinager","Junagadh","Ahmedabad","Vadodara","Mehsana","Bharuch","Kutch","Dahod","Patan","Navsari","Dang","Anand","Tapi","Amreli","Aravalli"];
  @override
  List<Widget> buildActions(BuildContext context) {
    return <Widget>[
      IconButton(
        onPressed: (){
          query = "";
          showSuggestions(context);
        },
        icon: Icon(CupertinoIcons.clear_thick),
        tooltip: "Clear",
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      onPressed: (){
        close(context, null);
      },
      icon: Icon(CupertinoIcons.back),
      tooltip: "Back",
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Data not found..!",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 5,),
            Text(
                query,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),
            ),
          ],
        )
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestion = query.isEmpty ?
        history_names :
        district_names.where((name)=>name.toLowerCase().contains(query)).toList();
    return ListView.builder(
        itemCount: suggestion.length,
        itemBuilder: (context,index){
          return Card(
            elevation: 5.0,
            child: ListTile(
              leading: Icon(Icons.bubble_chart),
              trailing: Icon(Icons.arrow_forward_ios),
              title: Text(suggestion[index]),
              onTap: (){
                print(suggestion[index]);
                close(context, suggestion[index]);
              },
            ),
          );
        }
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
