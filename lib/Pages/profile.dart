import 'package:creativedesign/Pages/dashboard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}
class _ProfileState extends State<Profile> {
  bool editname = false; bool editemail = false; bool editmobile = false;
  String name="Sudhir Gamit"; String email="sudhirgamitbca15@gmail.com"; String mobile="+91 8238895676";
  TextEditingController _name = new TextEditingController();
  TextEditingController _email = new TextEditingController();
  TextEditingController _mobile = new TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _name.text = name;
    _email.text = email;
    _mobile.text = mobile;
  }
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints view) {
          return SafeArea( top: false,
            child: Scaffold(
              backgroundColor: Colors.white,
              floatingActionButton: FloatingActionButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Dashboard()));
                },
                elevation: 5.0,backgroundColor: Colors.orange,
                child: Text("Back"),
                tooltip: "Back",mini: true,
              ),
              floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
              body: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                          height: view.minHeight/2.8,width: view.minWidth,
                        ),
                        Container(
                          height: 220,width: view.minWidth,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(180),bottomRight: Radius.circular(180))
                          ),
                        ),
                        Container(
                          height: 210,width: view.minWidth,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(180),bottomRight: Radius.circular(180))
                          ),
                        ),
                        Container(
                          height: 200,width: view.minWidth,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(180),bottomRight: Radius.circular(180)),
                            boxShadow: [BoxShadow(
                              color: Colors.white38,
                              blurRadius: 13,
                              spreadRadius: 1.5
                            )]
                          ),
                        ),
                        Container(
                          height: 190,width: view.minWidth,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(180),bottomRight: Radius.circular(180)),
                              boxShadow: [BoxShadow(
                                  color: Colors.white38,
                                  blurRadius: 13,
                                  spreadRadius: 1.5
                              )]
                          ),
                        ),
                        SafeArea(
                          child: Container(
                            alignment: AlignmentDirectional.center,
                            decoration: BoxDecoration(
                                color: Colors.white70,
                                shape: BoxShape.circle,
                                border: Border.all(width: 8,color: Colors.black54)
                            ),
                            child: Stack(
                              alignment: AlignmentDirectional.bottomEnd,
                              children: <Widget>[
                                CircleAvatar(
                                  maxRadius: 60,
                                  backgroundImage: NetworkImage("https://images.unsplash.com/photo-1503249023995-51b0f3778ccf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
                                ),
                                Container(
                                  child: Icon(
                                    Icons.add_a_photo,
                                    size: 30,color: Colors.black87,
                                  )
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Card(
                        elevation: 5.0,
                        margin: EdgeInsets.all(15),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(top: 20,bottom: 5),
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Center(child: Text("Tutorials",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16),)),
                                  ),
                                  Expanded(
                                    child: Center(child: Text("Basics",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16),)),
                                  ),
                                  Expanded(
                                    child: Center(child: Text("Advances",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16),)),
                                  ),
                                  Expanded(
                                    child: Center(child: Text("Designs",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16),)),
                                  ),
                                ],
                              ),
                            ),
                            Divider(color: Colors.grey,),
                            Container(
                              padding: EdgeInsets.only(bottom: 15),
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Center(child: Text("42")),
                                  ),
                                  Expanded(
                                    child: Center(child: Text("9")),
                                  ),
                                  Expanded(
                                    child: Center(child: Text("6")),
                                  ),
                                  Expanded(
                                    child: Center(child: Text("10")),
                                  ),
                                ],
                              ),
                            )
                          ],
                        )
                    ),
                    Card(
                      elevation: 5.0,
                      margin: EdgeInsets.all(15),
                      child: ListTile(
                          contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                          onTap: (){},
                          leading: Icon(CupertinoIcons.person),
                          title: editname ?
                          TextField(
                            controller: _name,
                            decoration: InputDecoration(
                                labelText: "Name"
                            ),
                          ): Text(name,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                          trailing: editname ?
                          IconButton(
                            onPressed: (){
                              setState(() {
                                _name.text.isEmpty ? name = _name.text : name = _name.text;
                                editname = false;
                              });
                            },
                            icon: Icon(CupertinoIcons.check_mark_circled),
                          ):
                          IconButton(
                            onPressed: (){
                              setState(() {
                                editname = true;
                              });
                            },
                            icon: Icon(CupertinoIcons.create),
                          )
                      ),
                    ),
                    Card(
                      elevation: 5.0,
                      margin: EdgeInsets.all(15),
                      child: ListTile(
                          contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                          leading: Icon(CupertinoIcons.mail),
                          title: editemail ?
                          TextField(
                            controller: _email,
                            decoration: InputDecoration(
                                labelText: "Email"
                            ),
                          ) : Text(email,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                          trailing: editemail ?
                          IconButton(
                            onPressed: (){
                              setState(() {
                                _email.text.isEmpty ? email = _email.text : email = _email.text;
                                editemail = false;
                              });
                            },
                            icon: Icon(CupertinoIcons.check_mark_circled),
                          ):
                          IconButton(
                            onPressed: (){
                              setState(() {
                                editemail = true;
                              });
                            },
                            icon: Icon(CupertinoIcons.create),
                          )
                      ),
                    ),
                    Card(
                      elevation: 5.0,
                      margin: EdgeInsets.all(15),
                      child: ListTile(
                          contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                          leading: Icon(CupertinoIcons.phone),
                          title: editmobile ?
                          TextField(
                            controller: _mobile,
                            decoration: InputDecoration(
                                labelText: "Mobile"
                            ),
                          ) : Text(mobile,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                          trailing: editmobile ?
                          IconButton(
                            onPressed: (){
                              setState(() {
                                _mobile.text.isEmpty ? mobile = _mobile.text : mobile = _mobile.text;
                                editmobile = false;
                              });
                            },
                            icon: Icon(CupertinoIcons.check_mark_circled),
                          ):
                          IconButton(
                            onPressed: (){
                              setState(() {
                                editmobile = true;
                              });
                            },
                            icon: Icon(CupertinoIcons.create),
                          )
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        }
    );
  }
}
