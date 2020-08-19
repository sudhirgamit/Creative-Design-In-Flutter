import 'package:creativedesign/Animation_Codes/animated_icon_code.dart';
import 'package:creativedesign/Pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Animated_Icon extends StatefulWidget {
  @override
  _Animated_IconState createState() => _Animated_IconState();
}
class _Animated_IconState extends State<Animated_Icon> with SingleTickerProviderStateMixin {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  AnimationController _animationController;
  bool isplay = false;
  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(vsync: this, duration: Duration(milliseconds: 300));
  }
  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }
  void _OnPressed() {
    setState(() {
      isplay = !isplay;
      isplay ? _animationController.forward() : _animationController.reverse();
    });
  }
  Widget CardIcon(String num,AnimatedIconData icons){
    return Card(
      elevation: 5.0,
      child: IconButton(
        icon: AnimatedIcon(icon: icons,
          progress: _animationController,
        ),
        iconSize: 50,
        onPressed: _OnPressed,
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Animated Icon",style: TextStyle(color: Colors.black),),
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Animated_Icon_Code()));
            },
            icon: Icon(Icons.transfer_within_a_station,size: 25,color: Colors.black),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Wrap(
              alignment: WrapAlignment.spaceEvenly,
              runSpacing: 100,
              spacing: 15,
              children: <Widget>[
                CardIcon("1",AnimatedIcons.close_menu),
                CardIcon("2",AnimatedIcons.add_event),
                CardIcon("3",AnimatedIcons.arrow_menu),
                CardIcon("4",AnimatedIcons.ellipsis_search),
                CardIcon("5",AnimatedIcons.event_add),
                CardIcon("6",AnimatedIcons.home_menu),
                CardIcon("7",AnimatedIcons.list_view),
                CardIcon("8",AnimatedIcons.arrow_menu),
                CardIcon("9",AnimatedIcons.menu_home),
                CardIcon("10",AnimatedIcons.play_pause),
                CardIcon("11",AnimatedIcons.search_ellipsis),
                CardIcon("12",AnimatedIcons.view_list),
              ],
            ),
          ],
        )
      ),
    );
  }
}

