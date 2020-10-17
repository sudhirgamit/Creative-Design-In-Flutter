import 'package:creativedesign/Pages/creative_design.dart';
import 'package:flutter/material.dart';

class Setting_4 extends StatefulWidget {
  @override
  _Setting_4State createState() => _Setting_4State();
}
class _Setting_4State extends State<Setting_4> {
  bool _switch = true; bool _switch1 = false;
  final _bottomItem  = <BottomNavigationBarItem>[
    BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black,),title: Text("Home",style: TextStyle(color: Colors.black),)),
    BottomNavigationBarItem(icon: Icon(Icons.store,color: Colors.black),title: Text("Product",style: TextStyle(color: Colors.black),)),
    BottomNavigationBarItem(icon: Icon(Icons.phone,color: Colors.black),title: Text("Phone",style: TextStyle(color: Colors.black),)),
    BottomNavigationBarItem(icon: Icon(Icons.shopping_cart,color: Colors.black),title: Text("Booking",style: TextStyle(color: Colors.black),)),
    BottomNavigationBarItem(icon: Icon(Icons.settings,color: Colors.black),title: Text("Setting",style: TextStyle(color: Colors.black),)),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        elevation: 0.0,
        leading: IconButton(
          onPressed: (){
            setState(() {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Creative_Design()));
            });
          },
          icon: Icon(Icons.arrow_back_ios,size: 20,color: Colors.black,),
        ),
        title: Text("Settings",style: TextStyle(fontSize: 22,color: Colors.black,fontWeight: FontWeight.w400),),
        actions: <Widget>[
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.filter_list,color: Colors.black,),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(Icons.person_outline,color: Colors.black,),
                  SizedBox(width: 15,),
                  Text("Account",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w600),),
                ],
              ),
              SizedBox(height: 10,),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(5))
                ),
                child: Column(
                  children: <Widget>[
                    ListTile(
                      leading: Text("Edit Profile",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                      trailing: Icon(Icons.arrow_forward_ios,size: 20,),
                    ),
                    ListTile(
                      leading: Text("Change Password",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                      trailing: Icon(Icons.arrow_forward_ios,size: 20,),
                    ),
                    ListTile(
                      leading: Text("Facebook",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                      trailing: Icon(Icons.arrow_forward_ios,size: 20,),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Row(
                children: <Widget>[
                  Icon(Icons.notifications_none,color: Colors.black,),
                  SizedBox(width: 15,),
                  Text("Notification",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w600),),
                ],
              ),
              SizedBox(height: 10,),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(5))
                ),
                child: Column(
                  children: <Widget>[
                    ListTile(
                      leading: Text("Notification",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                      trailing: Switch(
                          value: _switch,materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          activeColor: Colors.green,
                          onChanged: (bool val){}
                      ),
                    ),
                    ListTile(
                      leading: Text("App Notification",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                      trailing: Switch(
                          value: _switch1,materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          activeColor: Colors.green,
                          onChanged: (bool val){}
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Row(
                children: <Widget>[
                  Icon(Icons.expand_more,color: Colors.black,),
                  SizedBox(width: 15,),
                  Text("More",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w600),),
                ],
              ),
              SizedBox(height: 10,),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(5))
                ),
                child: Column(
                  children: <Widget>[
                    ListTile(
                      leading: Text("Language",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                      trailing: Icon(Icons.arrow_forward_ios,size: 20,),
                    ),
                    ListTile(
                      leading: Text("Country",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                      trailing: Icon(Icons.arrow_forward_ios,size: 20,),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              MaterialButton(
                onPressed: (){},
                color: Colors.white,
                elevation: 5.0,padding: EdgeInsets.symmetric(horizontal: 50,vertical: 15),
                child: Text("Sign Out",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: _bottomItem,
          backgroundColor: Colors.blue,
          currentIndex: 4,
          elevation: 5.0,fixedColor: Colors.black,showSelectedLabels: true,
      ),
    );
  }
}
