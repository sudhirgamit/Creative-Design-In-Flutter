import 'package:creativedesign/Layouts/rows.dart';
import 'package:flutter/material.dart';

class Profile_2 extends StatefulWidget {
  @override
  _Profile_2State createState() => _Profile_2State();
}
class _Profile_2State extends State<Profile_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Container(
          color: Colors.teal,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Flexible(
                flex: 1,fit: FlexFit.tight,
                child: Container(
                  color: Colors.black12,
                  padding: EdgeInsets.only(left: 20,right: 20,top: 10),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Profile",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.w700,fontFamily: "Aharoni"),),
                          Icon(Icons.filter_list,color: Colors.white,size: 25,)
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage: NetworkImage("https://images.unsplash.com/photo-1542103749-8ef59b94f47e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80"),
                            maxRadius: 35,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Dan Gamit",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white,fontSize: 20),),
                              Text("App UI Developer",style: TextStyle(fontWeight: FontWeight.w300,color: Colors.white70,fontSize: 16))
                            ],
                          ),
                          Icon(Icons.more_horiz,color: Colors.white,size: 25,)
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text("190",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white,fontSize: 20),),
                              Text("Followers",style: TextStyle(fontWeight: FontWeight.w300,color: Colors.white70,fontSize: 16))
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text("1032",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white,fontSize: 20),),
                              Text("Followings",style: TextStyle(fontWeight: FontWeight.w300,color: Colors.white70,fontSize: 16))
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text("121",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white,fontSize: 20),),
                              Text("Posts",style: TextStyle(fontWeight: FontWeight.w300,color: Colors.white70,fontSize: 16))
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Flexible(
                flex: 2,fit: FlexFit.tight,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Flexible(
                      fit: FlexFit.tight,flex: 1,
                      child: Container(
                        color: Colors.blue,
                        padding: EdgeInsets.only(left: 20,right: 20,top: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            RotatedBox(quarterTurns: 3,child: Text("Today",style: TextStyle(fontWeight: FontWeight.w300,color: Colors.white70,fontSize: 16))),
                            RotatedBox(quarterTurns: 3,child: Text("Yesterday",style: TextStyle(fontWeight: FontWeight.w300,color: Colors.white70,fontSize: 16))),
                            RotatedBox(quarterTurns: 3,child: Text("Most Popular",style: TextStyle(fontWeight: FontWeight.w300,color: Colors.white70,fontSize: 16))),
                            RotatedBox(quarterTurns: 3,child: Text("Most Liked",style: TextStyle(fontWeight: FontWeight.w300,color: Colors.white70,fontSize: 16))),
                            Icon(Icons.more_vert,color: Colors.white70,size: 25,)
                          ],
                        ),
                      ),
                    ),
                    Flexible(
                      fit: FlexFit.tight,flex: 2,
                      child: Text("Hii"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
