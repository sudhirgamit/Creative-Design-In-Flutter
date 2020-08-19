import 'package:creativedesign/Animation_Codes/animated_crossfade_code.dart';
import 'package:creativedesign/Pages/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Animated_CrossFade extends StatefulWidget {
  @override
  _Animated_CrossFadeState createState() => _Animated_CrossFadeState();
}
class _Animated_CrossFadeState extends State<Animated_CrossFade> {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  bool _first = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Animated CrossFade",style: TextStyle(color: Colors.black),),
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Animated_CrossFade_Code()));
            },
            icon: Icon(Icons.transfer_within_a_station,size: 25,color: Colors.black),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Center(

        child: InkWell(
          onTap: (){
            setState(() {
              _first = !_first;
            });
          },
        child: Stack(
          children: <Widget>[
            AnimatedCrossFade(
                  firstChild: Image.network("https://images.unsplash.com/photo-1597074181580-fcf452dc5773?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80",height: MediaQuery.of(context).size.height, width: MediaQuery.of(context).size.width,),
                  secondChild: Image.network("https://images.unsplash.com/photo-1597074181609-1225e438ed69?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80",height: MediaQuery.of(context).size.height, width: MediaQuery.of(context).size.width,),
                  crossFadeState: _first ? CrossFadeState.showFirst : CrossFadeState.showSecond,
                  duration: Duration(seconds: 2),
                  firstCurve: Curves.easeInQuart,
                  secondCurve: Curves.linearToEaseOut,
            ),
            Center(child: Text("Touch Me!",style: TextStyle(fontSize: 25,letterSpacing: 1,color: Colors.white,fontWeight: FontWeight.w600),))
          ],
        ),
        ),
      ),
    );
  }
}
