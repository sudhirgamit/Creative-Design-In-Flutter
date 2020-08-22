import 'package:creativedesign/Pages/dashboard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Advance extends StatefulWidget {
  @override
  _AdvanceState createState() => _AdvanceState();
}
class _AdvanceState extends State<Advance> {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  // All The Advance Widget And Layouts In Flutter
  Widget Cardlist_Head(String title,IconData icon){
    return Card(
      elevation: 5.0,
      child: ListTile(
        contentPadding: EdgeInsets.all(22),
        onTap: (){
          if(title=="Plugins"){
            _showModelButtomSheet_Widgets(context);
          }else if(title=="Multimedia"){
            print("Multimedia");
            //_showModelButtomSheet_AppBar(context);
          }else if(title=="Socialmedia"){
            print("Socialmedia");
            //_showModelButtomSheet_AppBar(context);
          } else if(title=="Database"){
            print("Database");
            //_showModelButtomSheet_AppBar(context);
          }else if(title=="Other Widgets"){
            print("Other Widgets");
            //_showModelButtomSheet_AppBar(context);
          }
        },
        title: Text(title,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,letterSpacing: 2,color: Colors.black),),
        leading: Icon(icon,color: Colors.black,),
        trailing: Icon(Icons.view_list,color: Colors.black),
      ),
    );
  }

  // Buttom Sheet Widgets
  Widget _showModelButtomSheet_Widgets(context){
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (BuildContext context)=>Card(
          color: Colors.white70.withOpacity(0.7),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: <Widget>[
                Cardlist_Plugins_Dialog("Animations","Center, Row, Icon",Icons.style),
              ],
            ),
          ),
        )
    );
  }

  // Plugins
  Widget Cardlist_Plugins_Dialog(String title,String subtitle,IconData icon){
    return Card(
      child: ListTile(
        leading: Icon(icon,color: Colors.black),
        title: Text(title,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18,color: Colors.black),),
        subtitle: Text(subtitle),
        trailing: Icon(Icons.slideshow,color: Colors.black),
        //dense: true,
        onTap: (){
          if(title=="Animations"){
            Navigator.pushReplacementNamed(context, "/animations");
          }
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Advance Flutter",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Dashboard()));
          },
          icon: Icon(Icons.arrow_back_ios,size: 20,color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){
              launch("https://flutter.dev/docs/development/ui/advanced");
            },
            icon: Icon(Icons.info_outline,size: 25,color: Colors.black,),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              Cardlist_Head("Plugins",Icons.pin_drop),
              Cardlist_Head("Multimedia",Icons.personal_video),
              Cardlist_Head("Socialmedia",Icons.network_wifi),
              Cardlist_Head("Database",Icons.bubble_chart),
              Cardlist_Head("Other Widgets",Icons.devices_other),
            ],
          ),
        ),
      ),
    );
  }
}
