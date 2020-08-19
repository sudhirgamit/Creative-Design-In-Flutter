import 'package:creativedesign/Lists_Codes/pageviews_code.dart';
import 'package:creativedesign/Pages/homepage.dart';
import 'package:flutter/material.dart';

class PageViews extends StatefulWidget {
  @override
  _PageViewsState createState() => _PageViewsState();
}

class _PageViewsState extends State<PageViews> {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final pageViews = <Widget>[
      Scaffold(
        //backgroundColor: Colors.white70,
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage("https://images.unsplash.com/photo-1596461128215-d0b37aea5124?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80"),fit: BoxFit.cover
              )
          ),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.white38,
            child: Center(child: Text("Creative Design",style: TextStyle(fontSize: 50,fontWeight: FontWeight.w600,color: Colors.white,letterSpacing: 2),),),
          ),
        ),
      ),
      Scaffold(
        //backgroundColor: Colors.orange,
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage("https://images.unsplash.com/photo-1596358711484-0b2b0f2344ac?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1534&q=80"),fit: BoxFit.cover
              )
          ),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.white38,
            child: Center(child: Text("Creative Design",style: TextStyle(fontSize: 50,fontWeight: FontWeight.w600,color: Colors.white,letterSpacing: 2),),),
          ),
        ),
      ),
      Scaffold(
        //backgroundColor: Colors.orange,
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage("https://images.unsplash.com/photo-1596480823752-39aba7588158?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80"),fit: BoxFit.cover
              )
          ),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.white38,
            child: Center(child: Text("Creative Design",style: TextStyle(fontSize: 50,fontWeight: FontWeight.w600,color: Colors.white,letterSpacing: 2),),),
          ),
        ),
      ),
      Scaffold(
        //backgroundColor: Colors.orange,
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage("https://images.unsplash.com/photo-1596470517077-1574bd91c663?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80"),fit: BoxFit.cover
              )
          ),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.white38,
            child: Center(child: Text("Creative Design",style: TextStyle(fontSize: 50,fontWeight: FontWeight.w600,color: Colors.white,letterSpacing: 2),),),
          ),
        ),
      ),
    ];
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("PageView",style: TextStyle(color: Colors.black),),
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>PageViews_Code()));
            },
            icon: Icon(Icons.transfer_within_a_station,size: 25,color: Colors.black),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: PageView(
        children: pageViews,
      ),
    );
  }
}
