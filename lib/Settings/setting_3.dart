import 'package:creativedesign/Pages/creative_design.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Setting_3 extends StatefulWidget {
  @override
  _Setting_3State createState() => _Setting_3State();
}
class _Setting_3State extends State<Setting_3> {
  final _bottomItem  = <BottomNavigationBarItem>[
    BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.white,),title: Text("Home",style: TextStyle(color: Colors.black),)),
    BottomNavigationBarItem(icon: Icon(Icons.security,color: Colors.white),title: Text("Setting",style: TextStyle(color: Colors.black),)),
    BottomNavigationBarItem(icon: Icon(Icons.store,color: Colors.white),title: Text("Product",style: TextStyle(color: Colors.black),)),
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        mini: true,
        elevation: 5.0,
        tooltip: "Logout",
        child: Icon(Icons.settings_power),
      ),
      body: SafeArea(
        child: Stack(
            alignment: AlignmentDirectional.topStart,
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: Colors.black12,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(right: 15),
                      child: IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.restaurant_menu,size: 22,),
                        tooltip: "Menu",
                      ),
                    ),
                    SizedBox(height: 65,),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height-340,
                      //color: Colors.blue,
                      child: OverflowBox(
                        alignment: Alignment(5.0,1.0),
                        maxHeight: 300,maxWidth: MediaQuery.of(context).size.width-110,
                        minHeight: 0,minWidth: 0,
                        child: Card(
                            color: Colors.white,elevation: 5.0,
                            child: Column(
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    IconButton(
                                      icon: Icon(Icons.whatshot,color: Colors.black,),
                                      onPressed: (){},
                                    ),
                                    IconButton(
                                      icon: Icon(Icons.restaurant,color: Colors.black,),
                                      onPressed: (){},
                                    )
                                  ],
                                ),
                                Container(
                                  height: 200,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      image: DecorationImage(
                                        image: NetworkImage("https://images.unsplash.com/photo-1476224203421-9ac39bcb3327?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80"),
                                        fit: BoxFit.cover,
                                      )
                                  ),
                                ),
                                SizedBox(height: 8,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    SizedBox(width: 10,),
                                    Icon(Icons.favorite_border),
                                    SizedBox(width: 10,),
                                    Icon(FontAwesomeIcons.facebook),
                                    SizedBox(width: 20,),
                                    Icon(FontAwesomeIcons.twitter),
                                  ],
                                ),
                              ],
                            )
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width-80,
                height: MediaQuery.of(context).size.height,
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        IconButton(
                          onPressed: (){
                            setState(() {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Creative_Design()));
                            });
                          },
                          icon: Icon(Icons.arrow_back_ios,size: 22,),
                          tooltip: "Back",
                        ),
                        Text("Settings",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),)
                      ],
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20,top: 10),
                      child: Text("Rohan Gamit",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20,top: 3),
                      child: Text("+91 8970738937",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w300),),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 300,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage("https://images.unsplash.com/photo-1504674900247-0877df9cc836?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80"),
                          fit: BoxFit.cover
                        )
                      ),
                      child: OverflowBox(
                        alignment: Alignment(4.0,1.0),
                        maxHeight: 300,maxWidth: MediaQuery.of(context).size.width-110,
                        minHeight: 0,minWidth: 0,
                        child: Card(
                          color: Colors.white,elevation: 5.0,
                          child: Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  IconButton(
                                    icon: Icon(Icons.whatshot,color: Colors.black,),
                                    onPressed: (){},
                                  ),
                                  IconButton(
                                    icon: Icon(Icons.restaurant,color: Colors.black,),
                                    onPressed: (){},
                                  )
                                ],
                              ),
                              Container(
                                height: 200,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  image: DecorationImage(
                                    image: NetworkImage("https://images.unsplash.com/photo-1556910103-1c02745aae4d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(height: 8,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  SizedBox(width: 10,),
                                  Icon(Icons.favorite_border),
                                  SizedBox(width: 15,),
                                  Icon(FontAwesomeIcons.facebook),
                                  SizedBox(width: 20,),
                                  Icon(FontAwesomeIcons.twitter),
                                ],
                              ),
                            ],
                          )
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      child: Container(
                        padding: EdgeInsets.only(left: 3),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Card(
                              elevation: 5,
                              child: ListTile(
                                leading: Icon(Icons.person_outline),
                                title: Text("Account",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                                trailing: Icon(Icons.arrow_forward_ios,size: 20,),
                              ),
                            ),
                            Card(
                              elevation: 5,
                              child: ListTile(
                                leading: Icon(Icons.info_outline),
                                title: Text("System Info",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                                trailing: Icon(Icons.arrow_forward_ios,size: 20,),
                              ),
                            ),
                          ],
                        )
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: _bottomItem,
        backgroundColor: Colors.cyan,
        currentIndex: 1,
        elevation: 5.0,fixedColor: Colors.black,showSelectedLabels: true,
      ),
    );
  }
}
