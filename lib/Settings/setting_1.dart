import 'package:creativedesign/Pages/creative_design.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Setting_1 extends StatefulWidget {
  @override
  _Setting_1State createState() => _Setting_1State();
}
class _Setting_1State extends State<Setting_1> {
  bool _switch = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    onPressed: (){
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Creative_Design()));
                      });
                    },
                    icon: Icon(Icons.arrow_back_ios,size: 20,color: Colors.black,),
                    tooltip: "Back",
                  ),
                  Container(padding: EdgeInsets.only(top: 12),child: Text("Settings",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 25,color: Colors.black),)),
                  IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.power_settings_new,color: Colors.red,size: 23,),
                    tooltip: "Logout",
                  ),
                ],
              ),
              Card(
                elevation: 5.0,color: Colors.green,margin: EdgeInsets.all(20),
                child: ListTile(
                  contentPadding: EdgeInsets.only(left: 10,top: 5,right: 5,bottom: 5),
                  leading: Container(
                    height: 100,width: 55,
                    decoration: BoxDecoration(
                        color: Colors.white,border: Border.all(color: Colors.white,width: 1.5),
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage("https://images.unsplash.com/photo-1597954211063-daaa715c72cf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80"),
                            fit: BoxFit.cover
                        )
                    ),
                  ),
                  title: Text("Rudra Devalkal",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w400),),
                  trailing: IconButton(
                    onPressed: (){},
                    icon: Icon(CupertinoIcons.create,color: Colors.white,),
                  ),
                ),
              ),
              Card(
                elevation: 5.0,margin: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: <Widget>[
                    ListTile(
                      contentPadding: EdgeInsets.only(left: 10,top: 5,right: 5,bottom: 5),
                      leading: Icon(Icons.phonelink_lock,color: Colors.green,),
                      title: Text("Change Password",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w400),),
                      trailing: IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.arrow_forward_ios,size: 20,color: Colors.black12,),
                      ),
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.only(left: 10,top: 5,right: 5,bottom: 5),
                      leading: Icon(Icons.language,color: Colors.green,),
                      title: Text("Change Language",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w400),),
                      trailing: IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.arrow_forward_ios,size: 20,color: Colors.black12,),
                      ),
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.only(left: 10,top: 5,right: 5,bottom: 5),
                      leading: Icon(Icons.location_on,color: Colors.green,),
                      title: Text("Change Location",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w400),),
                      trailing: IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.arrow_forward_ios,size: 20,color: Colors.black12,),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 20,left: 20,top: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Notification Settings",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green,fontSize: 22),),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(padding: EdgeInsets.only(top: 8),child: Text("Received Notification",style: TextStyle(fontWeight: FontWeight.w400,color: Colors.black,fontSize: 20))),
                        Switch(
                            value: _switch,materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            activeColor: Colors.green,
                            onChanged: (bool val){}
                        ),
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(padding: EdgeInsets.only(top: 8),child: Text("Received Newsletter",style: TextStyle(fontWeight: FontWeight.w400,color: Colors.grey,fontSize: 20))),
                        Switch(
                          value: _switch,materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          activeColor: Colors.green,
                        ),
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(padding: EdgeInsets.only(top: 8),child: Text("Received Offer Notification",style: TextStyle(fontWeight: FontWeight.w400,color: Colors.black,fontSize: 20))),
                        Switch(
                            value: _switch,materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            activeColor: Colors.green,
                            onChanged: (bool val){}
                        ),
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(padding: EdgeInsets.only(top: 8),child: Text("Received App Updated",style: TextStyle(fontWeight: FontWeight.w400,color: Colors.grey,fontSize: 20))),
                        Switch(
                          value: _switch,materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          activeColor: Colors.green,
                        ),
                      ],
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
