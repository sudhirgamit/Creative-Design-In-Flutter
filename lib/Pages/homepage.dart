import 'dart:convert';
import 'dart:io';
import 'package:creativedesign/Pages/dashboard.dart';
import 'package:creativedesign/Pages/future_builder_data.dart';
import 'package:creativedesign/Utils/constants.dart';
import 'package:creativedesign/drawer.dart';
import 'package:creativedesign/fetch_gridview.dart';
import 'package:creativedesign/fetch_listview.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:creativedesign/card.dart';
import 'package:creativedesign/container.dart';
import 'package:creativedesign/drawer.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // BackPress Button
  Future<bool> onBackPress() {
    return showDialog<bool>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Exit App?'),
          content: Container(
            height: 30,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: Text(
                    'Do you want to exit an app?',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w300
                    ),
                  ),
                ),

              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('CANCEL'),
              onPressed: () {
                setState(() {
                  Navigator.pop(context);
                });
              },
            ),
            FlatButton(
              child: Text('OK',style: TextStyle(color:Colors.red,fontSize: 15),),
              onPressed: () {
                exit(0);
              },
            ),
          ],
        );
      },
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
                Cardlist_Dialog("Icon","Center, Row, Icon",Icons.style),
                Cardlist_Dialog("Text","Center, Column, Text, Divider",Icons.textsms),
                Cardlist_Dialog("Image","SingleChildScrollView, Padding, Column, Image, SizedBox, Card",Icons.picture_in_picture),
                Cardlist_Dialog("Button","RaiseButton, FlatButton, MaterialButton, IconButton, FloatingActionButton",Icons.tab),
                Cardlist_Dialog("Progress","Column, Row, Divider, CircularProgressIndicator, LinearProgressIndicator",Icons.sync),
                Cardlist_Dialog("Card","Center, Column, Card, Inkwell",Icons.credit_card),
                Cardlist_Dialog("TextField","SingleChildScrollView, Column, TextFiled",Icons.edit),
                Cardlist_Dialog("Dropdown","DropDownMenuItem, PopupMenuUtem",Icons.arrow_drop_down_circle),
                Cardlist_Dialog("CheckButton","Radio Button, Check Button, Switch Button",Icons.edit_attributes),
                Cardlist_Dialog("Align","Padding, Align, Container",Icons.format_align_center),
                Cardlist_Dialog("TextFormField","Center, Form, Column, TextFormField",Icons.format_color_fill),
                Cardlist_Dialog("RichText","Center, Column, RichText, TextSpan",Icons.text_format),
              ],
            ),
          ),
        )
    );
  }

  // Buttom Sheet AppBar
  Widget _showModelButtomSheet_AppBar(context){
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (BuildContext context)=>Card(
          color: Colors.grey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: <Widget>[
                Cardlist_AppBar_Dialog("Simple AppBar","Center, Column, IconButton, Simple AppBar",Icons.apps),
                Cardlist_AppBar_Dialog("Sliver AppBar","Center, Column, IconButton, Sliver AppBar",Icons.view_headline),
                Cardlist_AppBar_Dialog("Custom AppBar","Center, Column, IconButton, Custom AppBar",Icons.crop_5_4),
                Cardlist_AppBar_Dialog("Bottom AppBar","SafeArea, Center, Column, Banner, ButtonBar, Baseline, ClipOval, ClipRect, ClipRRect, ClipPath, Bottom AppBar",Icons.keyboard_capslock),
                Cardlist_AppBar_Dialog("Search Bar","ListView Builder, ListTile, IconButton, Search Bar",Icons.search),
              ],
            ),
          ),
        )
    );
  }

  // Buttom Sheet Navigation
  Widget _showModelButtomSheet_Navigation(context){
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (BuildContext context)=>Card(
          color: Colors.grey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: <Widget>[
                Cardlist_Navigation_Dialog("Dialog","Alert Dialog, Simple Dialog, Date Picker, Time Picker, Bottom Dialog",Icons.dialpad),
                Cardlist_Navigation_Dialog("Tabbar","DefaultTabController, TabBarView, TabBar",Icons.tab_unselected),
                Cardlist_Navigation_Dialog("Bottom Tabbar","List Widgets, TabBarView, TabBar, Material",Icons.border_bottom),
                Cardlist_Navigation_Dialog("Drawer Navigation","Drawer, ListView, UserAccountsDrawerHeader, CircleAvatar, Card, ListTile",Icons.drafts),
                Cardlist_Navigation_Dialog("Bottom Navigation","BottomNavigationBar, List Widget, Center, Text",Icons.vertical_align_bottom),
                Cardlist_Navigation_Dialog("Page Selecter","DefaultTabController, TabBarView, Expanded, Card",Icons.pages),
              ],
            ),
          ),
        )
    );
  }

  // Buttom Sheet Layouts
  Widget _showModelButtomSheet_Layouts(context){
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (BuildContext context)=>Card(
          color: Colors.grey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: <Widget>[
                Cardlist_Layouts_Dialog("Container","SingleChildScrollView, Padding, Column, Container",Icons.desktop_windows),
                Cardlist_Layouts_Dialog("Row","Padding, Row, Container, Radio Button",Icons.rowing),
                Cardlist_Layouts_Dialog("Column","Padding, Row, Container, Radio Button",Icons.view_column),
                Cardlist_Layouts_Dialog("Wrap","Center, Wrap, Chip, CircleAvatar",Icons.wrap_text),
                Cardlist_Layouts_Dialog("Expanded","SingleChildScrollView, Padding, Column, Row, Expanded",Icons.expand_less),
                Cardlist_Layouts_Dialog("Stack","SingleChildScrollView, Padding, Column, Stack",Icons.settings_input_composite),
                Cardlist_Layouts_Dialog("Flexible","Padding, Column, Flexible, Container",Icons.flare),
              ],
            ),
          ),
        )
    );
  }

  // Buttom Sheet Lists
  Widget _showModelButtomSheet_Lists(context){
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (BuildContext context)=>Card(
          color: Colors.grey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: <Widget>[
                Cardlist_Lists_Dialog("ListView & ListTile","Padding, ListView, Card, ListTile",Icons.line_style),
                Cardlist_Lists_Dialog("GridView & GridTile","Padding, GridView, Card, GridTile",Icons.grid_on),
                Cardlist_Lists_Dialog("PageView","Container, PageView",Icons.pageview),
                Cardlist_Lists_Dialog("ExpansionTile","Padding, ListView, Card, ExpansionTile",Icons.expand_more),
              ],
            ),
          ),
        )
    );
  }

  // Buttom Sheet Async
  Widget _showModelButtomSheet_Async(context){
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (BuildContext context)=>Card(
          color: Colors.grey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: <Widget>[
                Cardlist_Async_Dialog("ListView Builder","Padding, ListViewBuilder, Card, ListTile",Icons.line_style),
                Cardlist_Async_Dialog("Future Builder","Padding, FutureBuilder, GridView, GridTile",Icons.cloud_download),
                Cardlist_Async_Dialog("Stream Builder","Padding, StreamBuilder, Card, ListTile",Icons.streetview),
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
          color: Colors.grey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: <Widget>[
                Cardlist_Multimedia_Dialog("Camera","Center, Column, IconButton, Placeholder",Icons.camera_enhance),
                Cardlist_Multimedia_Dialog("Gallary","SingleChildScrollView, Center, Column, IconButton, Placeholder",Icons.photo_library),
                Cardlist_Multimedia_Dialog("Video Player","Center, AspectRatio, FloatingActionButton",Icons.ondemand_video),
              ],
            ),
          ),
        )
    );
  }

  // Buttom Sheet Animation
  Widget _showModelButtomSheet_Animation(context){
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (BuildContext context)=>Card(
          color: Colors.grey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: <Widget>[
                Cardlist_Animation_Dialog("Animated Container","Column, AnimatedContainer",Icons.ac_unit),
                Cardlist_Animation_Dialog("Animated Icon","Center, Column, Wrap, Card, AnimatedIcon",Icons.insert_emoticon),
                Cardlist_Animation_Dialog("Animated Size","Center, Column, AnimatedSize, RaiseButton",Icons.photo_size_select_small),
                Cardlist_Animation_Dialog("Animated Padding","Center, Container, InkWell, AnimatedPadding",Icons.view_agenda),
                Cardlist_Animation_Dialog("Animated CrossFade","Center, InkWell, AnimatedCrossFade",Icons.crop_din),
                Cardlist_Animation_Dialog("Animated Builder","Center, Column, AnimatedBuilder, Container, Transform",Icons.bubble_chart),
                Cardlist_Animation_Dialog("Animated Align","Center, Column, AnimatedAlign, Container, RaisedButton",Icons.format_align_right),
                Cardlist_Animation_Dialog("Animated DefaultTextStyle","Center, Column, Animated DefaultTextStyle, RaisedButton",Icons.text_format),
                Cardlist_Animation_Dialog("Animated Opacity","Center, Column, Animated Opacity",Icons.opacity),
                Cardlist_Animation_Dialog("Animated PhysicalModel","Center, Column, Animated PhysicalModel",Icons.chrome_reader_mode),
                Cardlist_Animation_Dialog("Animated Positioned","Center, Column, Animated Positioned, RaisedButton",Icons.settings_input_composite),
                Cardlist_Animation_Dialog("Animated Switcher","Center, Column, Animated Switcher, RaisedButton",Icons.edit_attributes),
                Cardlist_Animation_Dialog("Animated List","Center, Column, Animated List, RaisedButton",Icons.view_list),
              ],
            ),
          ),
        )
    );
  }

  // Buttom Sheet Cupertino
  Widget _showModelButtomSheet_Cupertino(context){
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (BuildContext context)=>Card(
          color: Colors.grey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: <Widget>[
                Cardlist_Cupertino_Dialog("CupertinoActionSheet","Center, CupertinoButton, CupertinoActionSheet, CupertinoActionSheetAction",CupertinoIcons.collections),
                Cardlist_Cupertino_Dialog("CupertinoActivityIndicator","Center, Column, Container, CupertinoActivityIndicator",CupertinoIcons.loop),
                Cardlist_Cupertino_Dialog("CupertinoAlertDialog","Center, CupertinoButton, CupertinoAlertDialog,",CupertinoIcons.collections_solid),
                Cardlist_Cupertino_Dialog("CupertinoButton","Center, Column, CupertinoButton,",CupertinoIcons.tags),
                Cardlist_Cupertino_Dialog("CupertinoContextMenu","Center, Column, CupertinoContextMenu, CupertinoContextMenuAction,",Icons.menu),
                Cardlist_Cupertino_Dialog("CupertinoDatePicker","Padding, Column, Container, CupertinoDatePicker",Icons.date_range),
                Cardlist_Cupertino_Dialog("CupertinoTimePicker","Padding, Column, Container, CupertinoTimePicker",CupertinoIcons.time),
                Cardlist_Cupertino_Dialog("CupertinoSliverNavBar","CupertinoSliverNavBar",Icons.slideshow),
                Cardlist_Cupertino_Dialog("CupertinoOthers","Padding, Column, Cupertino NavigationBar, Switch, Slider",CupertinoIcons.flag),
              ],
            ),
          ),
        )
    );
  }

  // All The Widget And Layouts In Flutter
  Widget Cardlist_Head(String title,IconData icon){
    return Card(
      elevation: 5.0,
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        onTap: (){
          if(title=="Widgets"){
            _showModelButtomSheet_Widgets(context);
          }else if(title=="AppBar"){
            _showModelButtomSheet_AppBar(context);
          }else if(title=="Navigation"){
            _showModelButtomSheet_Navigation(context);
          }else if(title=="Layouts"){
            _showModelButtomSheet_Layouts(context);
          }else if(title=="Lists"){
            _showModelButtomSheet_Lists(context);
          }else if(title=="Async"){
            _showModelButtomSheet_Async(context);
          }else if(title=="Multimedia"){
            _showModelButtomSheet_Multimedia(context);
          }else if(title=="Animation"){
            _showModelButtomSheet_Animation(context);
          }else if(title=="Cupertino"){
            _showModelButtomSheet_Cupertino(context);
          }
        },
        title: Text(title,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,letterSpacing: 2,color: Colors.black),),
        leading: Icon(icon,color: Colors.black,),
        trailing: Icon(Icons.view_list,color: Colors.black),
      ),
    );
  }
  // Widgets
  Widget Cardlist_Dialog(String title,String subtitle,IconData icon){
    return Card(
      child: ListTile(
        leading: Icon(icon,color: Colors.black),
        title: Text(title,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18,color: Colors.black),),
        subtitle: Text(subtitle),
        trailing: Icon(Icons.slideshow,color: Colors.black),
        //dense: true,
        onTap: (){
          if(title=="Icon"){
            Navigator.pushReplacementNamed(context, "/icon");
          }else if(title=="Text"){
            Navigator.pushReplacementNamed(context, "/text");
          }else if(title=="Image"){
            Navigator.pushReplacementNamed(context, "/image");
          }else if(title=="Button"){
            Navigator.pushReplacementNamed(context, "/button");
          }else if(title=="Progress"){
            Navigator.pushReplacementNamed(context, "/progress");
          }else if(title=="Card"){
            Navigator.pushReplacementNamed(context, "/card");
          }else if(title=="TextField"){
            Navigator.pushReplacementNamed(context, "/textfield");
          }else if(title=="Dropdown"){
            Navigator.pushReplacementNamed(context, "/dropdown");
          }else if(title=="CheckButton"){
            Navigator.pushReplacementNamed(context, "/check");
          }else if(title=="Align"){
            Navigator.pushReplacementNamed(context, "/aligns");
          }else if(title=="TextFormField"){
            Navigator.pushReplacementNamed(context, "/textformfields");
          }else if(title=="RichText"){
            Navigator.pushReplacementNamed(context, "/textrich");
          }
        },
      ),
    );
  }

  // Appbar
  Widget Cardlist_AppBar_Dialog(String title,String subtitle,IconData icon){
    return Card(
      child: ListTile(
        leading: Icon(icon,color: Colors.black),
        title: Text(title,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18,color: Colors.black),),
        subtitle: Text(subtitle),
        trailing: Icon(Icons.slideshow,color: Colors.black),
        //dense: true,
        onTap: (){
          if(title=="Simple AppBar"){
            Navigator.pushReplacementNamed(context, "/simpleAB");
          }else if(title=="Sliver AppBar"){
            Navigator.pushReplacementNamed(context, "/sliverAB");
          }else if(title=="Custom AppBar"){
            Navigator.pushReplacementNamed(context, "/customAB");
          }else if(title=="Bottom AppBar"){
            Navigator.pushReplacementNamed(context, "/bottomAB");
          }else if(title=="Search Bar"){
            Navigator.pushReplacementNamed(context, "/searchBar");
          }
        },
      ),
    );
  }

  // Navigation
  Widget Cardlist_Navigation_Dialog(String title,String subtitle,IconData icon){
    return Card(
      child: ListTile(
        leading: Icon(icon,color: Colors.black),
        title: Text(title,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18,color: Colors.black),),
        subtitle: Text(subtitle),
        trailing: Icon(Icons.slideshow,color: Colors.black),
        //dense: true,
        onTap: (){
          if(title=="Dialog"){
            Navigator.pushReplacementNamed(context, "/dialog");
          }else if(title=="Tabbar"){
            Navigator.pushReplacementNamed(context, "/tabs");
          }else if(title=="Bottom Tabbar"){
            Navigator.pushReplacementNamed(context, "/bottomtabs");
          }else if(title=="Drawer Navigation"){
            Navigator.pushReplacementNamed(context, "/nvDrawer");
          }else if(title=="Bottom Navigation"){
            Navigator.pushReplacementNamed(context, "/bottomNav");
          }else if(title=="Page Selecter"){
            Navigator.pushReplacementNamed(context, "/pageSelecter");
          }
        },
      ),
    );
  }

  // Layouts
  Widget Cardlist_Layouts_Dialog(String title,String subtitle,IconData icon){
    return Card(
      child: ListTile(
        leading: Icon(icon,color: Colors.black),
        title: Text(title,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18,color: Colors.black),),
        subtitle: Text(subtitle),
        trailing: Icon(Icons.slideshow,color: Colors.black),
        //dense: true,
        onTap: (){
          if(title=="Container"){
            Navigator.pushReplacementNamed(context, "/containers");
          }else if(title=="Row"){
            Navigator.pushReplacementNamed(context, "/rows");
          }else if(title=="Column"){
            Navigator.pushReplacementNamed(context, "/columns");
          }else if(title=="Wrap"){
            Navigator.pushReplacementNamed(context, "/wraps");
          }else if(title=="Expanded"){
            Navigator.pushReplacementNamed(context, "/expandeds");
          }else if(title=="Stack"){
            Navigator.pushReplacementNamed(context, "/stacks");
          }else if(title=="Flexible"){
            Navigator.pushReplacementNamed(context, "/flexible");
          }
        },
      ),
    );
  }

  // Lists
  Widget Cardlist_Lists_Dialog(String title,String subtitle,IconData icon){
    return Card(
      child: ListTile(
        leading: Icon(icon,color: Colors.black),
        title: Text(title,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18,color: Colors.black),),
        subtitle: Text(subtitle),
        trailing: Icon(Icons.slideshow,color: Colors.black),
        //dense: true,
        onTap: (){
          if(title=="ListView & ListTile"){
            Navigator.pushReplacementNamed(context, "/listviews");
          }else if(title=="GridView & GridTile"){
            Navigator.pushReplacementNamed(context, "/gridviews");
          }else if(title=="PageView"){
            Navigator.pushReplacementNamed(context, "/pageviews");
          }else if(title=="ExpansionTile"){
            Navigator.pushReplacementNamed(context, "/expansiontile");
          }
        },
      ),
    );
  }

  // Async
  Widget Cardlist_Async_Dialog(String title,String subtitle,IconData icon){
    return Card(
      child: ListTile(
        leading: Icon(icon,color: Colors.black),
        title: Text(title,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18,color: Colors.black),),
        subtitle: Text(subtitle),
        trailing: Icon(Icons.slideshow,color: Colors.black),
        //dense: true,
        onTap: (){
          if(title=="ListView Builder"){
            Navigator.pushReplacementNamed(context, "/listviewB");
          }else if(title=="Future Builder"){
            Navigator.pushReplacementNamed(context, "/futureB");
          }else if(title=="Stream Builder"){
            Navigator.pushReplacementNamed(context, "/streamB");
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
        subtitle: Text(subtitle),
        trailing: Icon(Icons.slideshow,color: Colors.black),
        //dense: true,
        onTap: (){
          if(title=="Camera"){
            Navigator.pushReplacementNamed(context, "/camera");
          }else if(title=="Gallary"){
            Navigator.pushReplacementNamed(context, "/gallary");
          }else if(title=="Video Player"){
            Navigator.pushReplacementNamed(context, "/videoplay");
          }
        },
      ),
    );
  }

  // Animation
  Widget Cardlist_Animation_Dialog(String title,String subtitle,IconData icon){
    return Card(
      child: ListTile(
        leading: Icon(icon,color: Colors.black),
        title: Text(title,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18,color: Colors.black),),
        subtitle: Text(subtitle),
        trailing: Icon(Icons.slideshow,color: Colors.black),
        //dense: true,
        onTap: (){
          if(title=="Animated Container"){
            Navigator.pushReplacementNamed(context, "/anim_container");
          }else if(title=="Animated Icon"){
            Navigator.pushReplacementNamed(context, "/anim_icon");
          }else if(title=="Animated Size"){
            Navigator.pushReplacementNamed(context, "/anim_size");
          }else if(title=="Animated Padding"){
            Navigator.pushReplacementNamed(context, "/anim_padding");
          }else if(title=="Animated CrossFade"){
            Navigator.pushReplacementNamed(context, "/anim_crossfade");
          }else if(title=="Animated Builder"){
            Navigator.pushReplacementNamed(context, "/anim_builder");
          }else if(title=="Animated Align"){
            Navigator.pushReplacementNamed(context, "/anim_align");
          }else if(title=="Animated DefaultTextStyle"){
            Navigator.pushReplacementNamed(context, "/anim_textstyle");
          }else if(title=="Animated Opacity"){
            Navigator.pushReplacementNamed(context, "/anim_opacity");
          }else if(title=="Animated PhysicalModel"){
            Navigator.pushReplacementNamed(context, "/anim_model");
          }else if(title=="Animated Positioned"){
            Navigator.pushReplacementNamed(context, "/anim_positioned");
          }else if(title=="Animated Switcher"){
            Navigator.pushReplacementNamed(context, "/anim_switcher");
          }else if(title=="Animated List"){
            Navigator.pushReplacementNamed(context, "/anim_list");
          }
        },
      ),
    );
  }

  // Cupertino
  Widget Cardlist_Cupertino_Dialog(String title,String subtitle,IconData icon){
    return Card(
      child: ListTile(
        leading: Icon(icon,color: Colors.black),
        title: Text(title,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18,color: Colors.black),),
        subtitle: Text(subtitle),
        trailing: Icon(Icons.slideshow,color: Colors.black),
        //dense: true,
        onTap: (){
          if(title=="CupertinoActionSheet"){
            Navigator.pushReplacementNamed(context, "/cup_actionsheet");
          }else if(title=="CupertinoActivityIndicator"){
            Navigator.pushReplacementNamed(context, "/cup_indicator");
          }else if(title=="CupertinoAlertDialog"){
            Navigator.pushReplacementNamed(context, "/cup_alertdialog");
          }else if(title=="CupertinoButton"){
            Navigator.pushReplacementNamed(context, "/cup_button");
          }else if(title=="CupertinoContextMenu"){
            Navigator.pushReplacementNamed(context, "/cup_menu");
          }else if(title=="CupertinoDatePicker"){
            Navigator.pushReplacementNamed(context, "/cup_datepicker");
          }else if(title=="CupertinoTimePicker"){
            Navigator.pushReplacementNamed(context, "/cup_timepicker");
          }else if(title=="CupertinoSliverNavBar"){
            Navigator.pushReplacementNamed(context, "/cup_sliver");
          }else if(title=="CupertinoOthers"){
            Navigator.pushReplacementNamed(context, "/cup_others");
          }
        },
      ),
    );
  }

  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Basic Flutter",style: TextStyle(color: Colors.black),),
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
              launch("https://flutter.dev/docs/development/ui/widgets-intro");
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
              Cardlist_Head("Widgets",Icons.widgets),
              Cardlist_Head("AppBar",Icons.touch_app),
              Cardlist_Head("Navigation",Icons.navigation),
              Cardlist_Head("Layouts",Icons.layers),
              Cardlist_Head("Lists",Icons.list),
              Cardlist_Head("Async",Icons.sync),
              Cardlist_Head("Multimedia",Icons.perm_media),
              Cardlist_Head("Animation",Icons.show_chart),
              Cardlist_Head("Cupertino",CupertinoIcons.tags_solid),
            ],
          ),
        ),
      ),
    );
  }
}