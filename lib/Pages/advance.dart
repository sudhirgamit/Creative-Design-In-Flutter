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
        contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        onTap: (){
          if(title=="Plugins"){
            _showModelButtomSheet_Plugins(context);
          }else if(title=="Animations"){
            _showModelButtomSheet_Animations(context);
          }else if(title=="Multimedia"){
            _showModelButtomSheet_Multimedia(context);
          }else if(title=="Socialmedia"){
            _showModelButtomSheet_Socialmedia(context);
          } else if(title=="Database"){
            _showModelButtomSheet_Database(context);
          }else if(title=="Other Widgets"){
            _showModelButtomSheet_Other_Widgets(context);
          }
        },
        title: Text(title,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,letterSpacing: 2,color: Colors.black),),
        leading: Icon(icon,color: Colors.black,),
        trailing: Icon(Icons.view_list,color: Colors.black),
      ),
    );
  }

  // Buttom Sheet Widgets
  Widget _showModelButtomSheet_Plugins(context){
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (BuildContext context)=>Card(
          color: Colors.white70.withOpacity(0.7),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: <Widget>[
                Cardlist_Plugins_Dialog("SharedPreferences","Center, Form, Column, Form, TextFormField, SharedPreferences",Icons.store),
                Cardlist_Plugins_Dialog("URL Launcher","Center, Column, Text, CupertinoButton, Launch",CupertinoIcons.share_up),
                Cardlist_Plugins_Dialog("Flutter Slidable","ListView Builder, Dismissible, Container, Row, Icon",Icons.slow_motion_video),
                Cardlist_Plugins_Dialog("Carousel_Slider","CarouselSilder Builder, CarouselSilder, Column, Container",Icons.compare_arrows),
              ],
            ),
          ),
        )
    );
  }

  // Buttom Sheet Animations
  Widget _showModelButtomSheet_Animations(context){
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (BuildContext context)=>Card(
          color: Colors.white70.withOpacity(0.7),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: <Widget>[
                Cardlist_Animations_Dialog("Animated Text Kit","Colorize, Fade, Typer, Typewriter, Scale, AnimatedTextKit",Icons.kitchen),
                Cardlist_Animations_Dialog("Loading Animation","ListView, Flapping, Bouncing Grid, Fading Line, Bumping Line, Bouncing Line, Double Flipping, Jumping Line, Rotating",Icons.hourglass_empty),
              ],
            ),
          ),
        )
    );
  }

  // Buttom Sheet Multimedia
  Widget _showModelButtomSheet_Multimedia(context){
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (BuildContext context)=>Card(
          color: Colors.white70.withOpacity(0.7),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: <Widget>[
                Cardlist_Multimedia_Dialog("PhotoFilters","FloatingActionButton, Form, Column, Form, TextFormField, SharedPreferences",CupertinoIcons.photo_camera),
                Cardlist_Multimedia_Dialog("Wallpaper","FloatingActionButton, Form, Column, Form, TextFormField, SharedPreferences",CupertinoIcons.photo_camera_solid),
              ],
            ),
          ),
        )
    );
  }

  // Buttom Sheet Socialmedia
  Widget _showModelButtomSheet_Socialmedia(context){
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (BuildContext context)=>Card(
          color: Colors.white70.withOpacity(0.7),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: <Widget>[
                Cardlist_Socialmedia_Dialog("Connectivity","FloatingActionButton, showDialog, AlertDialog",Icons.signal_cellular_connected_no_internet_4_bar),
                Cardlist_Socialmedia_Dialog("Google SignIn","Center, CupertinoButton, Container, Text",Icons.assignment_turned_in),
                Cardlist_Socialmedia_Dialog("Facebook SignIn","Center, CupertinoButton, Container, Text",Icons.tag_faces),
              ],
            ),
          ),
        )
    );
  }

  // Buttom Sheet Database
  Widget _showModelButtomSheet_Database(context){
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (BuildContext context)=>Card(
          color: Colors.white70.withOpacity(0.7),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: <Widget>[
                Cardlist_Database_Dialog("MySQL Database","Future Builder, TableData, DataColumn, DataRow, DataCell",Icons.rss_feed),
                Cardlist_Database_Dialog("SQLite Database","Future Builder, TableData, DataColumn, DataRow, DataCell",Icons.crop_square),
              ],
            ),
          ),
        )
    );
  }

  // Buttom Sheet Other Widgets
  Widget _showModelButtomSheet_Other_Widgets(context){
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (BuildContext context)=>Card(
          color: Colors.white70.withOpacity(0.7),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: <Widget>[
                Cardlist_Other_Widgets_Dialog("Dismissible","ListView Builder, Dismissible, Container, Row, Icon",Icons.remove_from_queue),
                Cardlist_Other_Widgets_Dialog("RefreshIndicator","ListView Builder, ListTile, Icon",Icons.refresh),
                Cardlist_Other_Widgets_Dialog("Steper","Steper, Steps, Container, Button, Image Network",Icons.short_text),
                Cardlist_Other_Widgets_Dialog("DataTable","DataTable, DataColumn, DataRow, DataCell",Icons.data_usage),
                Cardlist_Other_Widgets_Dialog("Categories","SingleChildScrollView, ListView Builder, Container, Divider, NetworkImage",Icons.category),
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
        subtitle: Text(subtitle,maxLines: 2,overflow: TextOverflow.ellipsis,),
        trailing: Icon(Icons.slideshow,color: Colors.black),
        contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
        onTap: (){
          if(title=="SharedPreferences"){
            Navigator.pushReplacementNamed(context, "/shared_pref");
          }else if(title=="URL Launcher"){
            Navigator.pushReplacementNamed(context, "/url_launch");
          }else if(title=="Flutter Slidable"){
            Navigator.pushReplacementNamed(context, "/flut_slidable");
          }else if(title=="Carousel_Slider"){
            Navigator.pushReplacementNamed(context, "/carousel_slider");
          }
        },
      ),
    );
  }

  // Animations
  Widget Cardlist_Animations_Dialog(String title,String subtitle,IconData icon){
    return Card(
      child: ListTile(
        leading: Icon(icon,color: Colors.black),
        title: Text(title,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18,color: Colors.black),),
        subtitle: Text(subtitle,maxLines: 2,overflow: TextOverflow.ellipsis,),
        trailing: Icon(Icons.slideshow,color: Colors.black),
        contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
        onTap: (){
          if(title=="Animated Text Kit"){
            Navigator.pushReplacementNamed(context, "/anim_text_kit");
          }else if(title=="Loading Animation"){
            Navigator.pushReplacementNamed(context, "/loading_anim");
          }
        },
      ),
    );
  }

  // Multimedia
  Widget Cardlist_Multimedia_Dialog(String title,String subtitle,IconData icon){
    return Card(
      child: ListTile(
        leading: Icon(icon,color: Colors.black),
        title: Text(title,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18,color: Colors.black),),
        subtitle: Text(subtitle,maxLines: 2,overflow: TextOverflow.ellipsis,),
        trailing: Icon(Icons.slideshow,color: Colors.black),
        contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
        onTap: (){
          if(title=="PhotoFilters"){
            Navigator.pushReplacementNamed(context, "/photofilter");
          }else if(title=="Wallpaper"){
            Navigator.pushReplacementNamed(context, "/wallpaper");
          }
        },
      ),
    );
  }

  // Socialmedia
  Widget Cardlist_Socialmedia_Dialog(String title,String subtitle,IconData icon){
    return Card(
      child: ListTile(
        leading: Icon(icon,color: Colors.black),
        title: Text(title,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18,color: Colors.black),),
        subtitle: Text(subtitle,maxLines: 2,overflow: TextOverflow.ellipsis,),
        trailing: Icon(Icons.slideshow,color: Colors.black),
        contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
        onTap: (){
          if(title=="Connectivity"){
            Navigator.pushReplacementNamed(context, "/connectivity");
          }else if(title=="Google SignIn"){
            Navigator.pushReplacementNamed(context, "/google_signin");
          }else if(title=="Facebook SignIn"){
            Navigator.pushReplacementNamed(context, "/facebook_signin");
          }
        },
      ),
    );
  }

  // Database
  Widget Cardlist_Database_Dialog(String title,String subtitle,IconData icon){
    return Card(
      child: ListTile(
        leading: Icon(icon,color: Colors.black),
        title: Text(title,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18,color: Colors.black),),
        subtitle: Text(subtitle,maxLines: 2,overflow: TextOverflow.ellipsis,),
        trailing: Icon(Icons.slideshow,color: Colors.black),
        contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
        onTap: (){
          if(title=="MySQL Database"){
            Navigator.pushReplacementNamed(context, "/mysql_db");
          }else if(title=="SQLite Database"){
            Navigator.pushReplacementNamed(context, "/sqlite_db");
          }
        },
      ),
    );
  }

  // Other Widgets
  Widget Cardlist_Other_Widgets_Dialog(String title,String subtitle,IconData icon){
    return Card(
      child: ListTile(
        leading: Icon(icon,color: Colors.black),
        title: Text(title,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18,color: Colors.black),),
        subtitle: Text(subtitle,maxLines: 2,overflow: TextOverflow.ellipsis,),
        trailing: Icon(Icons.slideshow,color: Colors.black),
        contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
        onTap: (){
          if(title=="Dismissible"){
            Navigator.pushReplacementNamed(context, "/dismissible");
          }else if(title=="RefreshIndicator"){
            Navigator.pushReplacementNamed(context, "/refresh");
          }else if(title=="Steper"){
            Navigator.pushReplacementNamed(context, "/steper");
          }else if(title=="DataTable"){
            Navigator.pushReplacementNamed(context, "/datatable");
          }else if(title=="Categories"){
            Navigator.pushReplacementNamed(context, "/categories");
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
              Cardlist_Head("Animations",CupertinoIcons.loop_thick),
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
