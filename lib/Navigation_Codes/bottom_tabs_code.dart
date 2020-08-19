import 'package:creativedesign/Navigation/bottom_tabs.dart';
import 'package:flutter/material.dart';
import 'package:widget_with_codeview/syntax_highlighter.dart';

class Bottom_Tabs_Code extends StatelessWidget {
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
        title: Text("Bottom Tabbar",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Bottom_Tabs()));
          },
          icon: Icon(Icons.arrow_back_ios,size: 20,color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){
              //Navigator.push(context, MaterialPageRoute(builder: (context)=>Dialog_Box()));
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
import 'package:creativedesign/Navigation_Codes/bottom_tabs_code.dart';
import 'package:creativedesign/Pages/homepage.dart';
import 'package:flutter/material.dart';

class Bottom_Tabs extends StatefulWidget {
  @override
  _Bottom_TabsState createState() => _Bottom_TabsState();
}
class _Bottom_TabsState extends State<Bottom_Tabs> with SingleTickerProviderStateMixin {
  TabController _tabController;
  static const _tabview = <Widget>[
    Center(child: Icon(Icons.home,size: 100,color: Colors.blueGrey,),),
    Center(child: Icon(Icons.person,size: 100,color: Colors.green,),),
    Center(child: Icon(Icons.location_city,size: 100,color: Colors.blue,),),
    Center(child: Icon(Icons.email,size: 100,color: Colors.red,),),
    Center(child: Icon(Icons.phone,size: 100,color: Colors.teal,),),
  ];
  static const _tabbar = <Tab>[
    Tab(icon: Icon(Icons.home),text: "Home",),
    Tab(icon: Icon(Icons.person),text: "Person",),
    Tab(icon: Icon(Icons.location_city),text: "City",),
    Tab(icon: Icon(Icons.email),text: "Email",),
    Tab(icon: Icon(Icons.phone),text: "Phone",),
  ];
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(
        length: _tabview.length,
        vsync: this,
    );
  }
  @override
  void dispose(){
    _tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Bottom Tabbar",style: TextStyle(color: Colors.black),),
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Bottom_Tabs_Code()));
            },
            icon: Icon(Icons.transfer_within_a_station,size: 25,color: Colors.black,),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: TabBarView(
        children: _tabview,
        controller: _tabController,
      ),
     bottomNavigationBar: Material(
       color: Colors.blueGrey,
       child: TabBar(
         labelColor: Colors.white,
         unselectedLabelColor: Colors.grey,
         tabs: _tabbar,
         controller: _tabController,
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
