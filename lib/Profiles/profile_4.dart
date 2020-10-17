import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Profile_4 extends StatefulWidget {
  @override
  _Profile_4State createState() => _Profile_4State();
}
class _Profile_4State extends State<Profile_4> {
  final List<String> _photos = <String> [
    "https://images.unsplash.com/photo-1600103698130-f70ace056ac2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=891&q=80",
    "https://images.unsplash.com/1/irish-hands.jpg?ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80",
    "https://images.unsplash.com/photo-1497171156029-51dfc973e5f9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
    "https://images.unsplash.com/photo-1550778323-71868c7dea39?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
    "https://images.unsplash.com/photo-1599953454277-fd24c266b04a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=837&q=80",
    "https://images.unsplash.com/photo-1597954211063-daaa715c72cf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80"
  ];
  bool editname = false; bool editemail = false; bool editmobile = false; bool editcity = false;
  String name="Jonny Devalkal"; String email="jonnydev@gmail.com"; String mobile="+91 8937602172"; String city="Surat";
  TextEditingController _name = new TextEditingController();
  TextEditingController _email = new TextEditingController();
  TextEditingController _mobile = new TextEditingController();
  TextEditingController _city = new TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _name.text = name;
    _email.text = email;
    _mobile.text = mobile;
    _city.text = city;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 200,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(width: 5,color: Colors.black12),
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            image: DecorationImage(
                                image: NetworkImage("https://images.unsplash.com/photo-1601568544619-b03062ca528a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
                                fit: BoxFit.cover
                            )
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Expanded(
                      flex: 2,
                      child: Container(
                        alignment: AlignmentDirectional.centerEnd,height: 200,
                        //color: Colors.teal,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text("Profile",style: TextStyle(fontWeight: FontWeight.w700,color: Colors.black,fontSize: 30),),
                            Divider(thickness: 1.5,indent: 50,endIndent: 50,),
                            Text("Jonny Devalkal",style: TextStyle(fontWeight: FontWeight.w400,color: Colors.black,fontSize: 20),),
                            RaisedButton(
                              onPressed: (){},elevation: 5.0,padding: EdgeInsets.symmetric(horizontal: 40),
                              color: Colors.green,
                              splashColor: Colors.lightBlue,
                              child: Text("+ Follow",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w400),),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Text("20",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black,fontSize: 20),),
                                    SizedBox(height: 5,),
                                    Text("Order",style: TextStyle(fontWeight: FontWeight.w300,color: Colors.black87,fontSize: 16)),
                                    SizedBox(height: 10,),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Text("50",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black,fontSize: 20),),
                                    SizedBox(height: 5,),
                                    Text("Completed",style: TextStyle(fontWeight: FontWeight.w300,color: Colors.black87,fontSize: 16)),
                                    SizedBox(height: 10,),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Text("Order By",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w600),),
                SizedBox(height: 2,),
                Text("Customer Photo",style: TextStyle(fontWeight: FontWeight.w300,color: Colors.black87,fontSize: 16)),
                Container(
                  width: MediaQuery.of(context).size.width,height: 110,
                  alignment: AlignmentDirectional.center,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: List.generate(_photos.length, (i)=>Column(
                      children: <Widget>[
                        Container(
                          height: 100,width: 150,margin: EdgeInsets.only(left: 5,top: 10),
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              image: DecorationImage(
                                  image: NetworkImage(_photos[i]),
                                  fit: BoxFit.cover
                              ),
                              border: Border.all(color:Colors.black12,width: 0.5),
                              borderRadius: BorderRadius.all(Radius.circular(20))
                          ),
                        ),
                      ],
                    )
                    ).toList(),
                  ),
                ),
                Divider(color: Colors.black12,thickness: 5,height: 30,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Update Profile",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w600),),
                    Text("Swipe",style: TextStyle(fontWeight: FontWeight.w300,color: Colors.red,fontSize: 16)),
                  ],
                ),
                Divider(color: Colors.black12,thickness: 5,height: 30,),
                Slidable(
                  actionPane: SlidableScrollActionPane(),
                  actionExtentRatio: 0.25,
                  child: Card(
                    elevation: 5.0,
                    child: Container(
                      color: Colors.white,
                      padding: EdgeInsets.all(5),
                      child: ListTile(
                        leading: Icon(Icons.person,color: Colors.black,),
                        title: editname ?
                        TextField(
                          controller: _name,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              labelText: "Name"
                          ),
                        ): Text(name,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18),),
                        contentPadding: EdgeInsets.all(10),
                        trailing: editname ? IconButton(
                          onPressed: (){
                            setState(() {
                              _name.text.isEmpty ? name = _name.text : name = _name.text;
                              editname = false;
                            });
                          },
                          icon: Icon(CupertinoIcons.check_mark_circled),
                        ):
                        IconButton(
                          onPressed: (){},
                          icon: Icon(CupertinoIcons.check_mark_circled,color: Colors.white,),
                        ),
                      ),
                    ),
                  ),
                  actions: <Widget>[
                    Card(
                      elevation: 5.0,
                      child: IconSlideAction(
                        icon: CupertinoIcons.home,
                        color: Colors.white,
                        onTap: (){},
                        caption: "Home",
                      ),
                    ),
                    Card(
                      elevation: 5.0,
                      child: IconSlideAction(
                        icon: CupertinoIcons.share_up,
                        color: Colors.cyan,
                        onTap: (){},
                        caption: "Share",
                      ),
                    )
                  ],
                  secondaryActions: <Widget>[
                    Card(
                      elevation: 5.0,
                      child: IconSlideAction(
                        icon: CupertinoIcons.create,
                        color: Colors.white,
                        onTap: (){
                          setState(() {
                            editname = true;
                          });
                        },
                        caption: "Edit",
                      ),
                    ),
                    Card(
                      elevation: 5.0,
                      child: IconSlideAction(
                        icon: CupertinoIcons.delete_simple,
                        color: Colors.red,
                        onTap: (){},
                        caption: "Delete",
                      ),
                    )
                  ],
                  direction: Axis.horizontal,
                  movementDuration: Duration(seconds: 1),
                ),
                Slidable(
                  actionPane: SlidableScrollActionPane(),
                  actionExtentRatio: 0.25,
                  child: Card(
                    elevation: 5.0,
                    child: Container(
                      color: Colors.white,
                      padding: EdgeInsets.all(5),
                      child: ListTile(
                        leading: Icon(Icons.email,color: Colors.black,),
                        title: editemail ?
                        TextField(
                          controller: _email,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              labelText: "Email"
                          ),
                        ) : Text(email,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18),),
                        contentPadding: EdgeInsets.all(10),
                        trailing: editemail ? IconButton(
                          onPressed: (){
                            setState(() {
                              _email.text.isEmpty ? email = _email.text : email = _email.text;
                              editemail = false;
                            });
                          },
                          icon: Icon(CupertinoIcons.check_mark_circled),
                        ):
                        IconButton(
                          onPressed: (){},
                          icon: Icon(CupertinoIcons.check_mark_circled,color: Colors.white,),
                        ),
                      ),
                    ),
                  ),
                  actions: <Widget>[
                    Card(
                      elevation: 5.0,
                      child: IconSlideAction(
                        icon: CupertinoIcons.home,
                        color: Colors.white,
                        onTap: (){},
                        caption: "Home",
                      ),
                    ),
                    Card(
                      elevation: 5.0,
                      child: IconSlideAction(
                        icon: CupertinoIcons.share_up,
                        color: Colors.cyan,
                        onTap: (){},
                        caption: "Share",
                      ),
                    )
                  ],
                  secondaryActions: <Widget>[
                    Card(
                      elevation: 5.0,
                      child: IconSlideAction(
                        icon: CupertinoIcons.create,
                        color: Colors.white,
                        onTap: (){
                          setState(() {
                            editemail = true;
                          });
                        },
                        caption: "Edit",
                      ),
                    ),
                    Card(
                      elevation: 5.0,
                      child: IconSlideAction(
                        icon: CupertinoIcons.delete_simple,
                        color: Colors.red,
                        onTap: (){},
                        caption: "Delete",
                      ),
                    )
                  ],
                  direction: Axis.horizontal,
                  movementDuration: Duration(seconds: 1),
                ),
                Slidable(
                  actionPane: SlidableScrollActionPane(),
                  actionExtentRatio: 0.25,
                  child: Card(
                    elevation: 5.0,
                    child: Container(
                      color: Colors.white,
                      padding: EdgeInsets.all(5),
                      child: ListTile(
                        leading: Icon(Icons.phone,color: Colors.black,),
                        title: editmobile ?
                        TextField(
                          controller: _mobile,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                              labelText: "Mobile"
                          ),
                        ) : Text(mobile,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18),),
                        contentPadding: EdgeInsets.all(10),
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
                          },
                          icon: Icon(CupertinoIcons.check_mark_circled,color: Colors.white,),
                        ),
                      ),
                    ),
                  ),
                  actions: <Widget>[
                    Card(
                      elevation: 5.0,
                      child: IconSlideAction(
                        icon: CupertinoIcons.home,
                        color: Colors.white,
                        onTap: (){},
                        caption: "Home",
                      ),
                    ),
                    Card(
                      elevation: 5.0,
                      child: IconSlideAction(
                        icon: CupertinoIcons.share_up,
                        color: Colors.cyan,
                        onTap: (){},
                        caption: "Share",
                      ),
                    )
                  ],
                  secondaryActions: <Widget>[
                    Card(
                      elevation: 5.0,
                      child: IconSlideAction(
                        icon: CupertinoIcons.create,
                        color: Colors.white,
                        onTap: (){
                          setState(() {
                            editmobile = true;
                          });
                        },
                        caption: "Edit",
                      ),
                    ),
                    Card(
                      elevation: 5.0,
                      child: IconSlideAction(
                        icon: CupertinoIcons.delete_simple,
                        color: Colors.red,
                        onTap: (){},
                        caption: "Delete",
                      ),
                    )
                  ],
                  direction: Axis.horizontal,
                  movementDuration: Duration(seconds: 1),
                ),
                Slidable(
                  actionPane: SlidableScrollActionPane(),
                  actionExtentRatio: 0.25,
                  child: Card(
                    elevation: 5.0,
                    child: Container(
                      color: Colors.white,
                      padding: EdgeInsets.all(5),
                      child: ListTile(
                        leading: Icon(Icons.location_city,color: Colors.black,),
                        title: editcity ?
                        TextField(
                          controller: _city,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              labelText: "City"
                          ),
                        ): Text(city,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18),),
                        contentPadding: EdgeInsets.all(10),
                        trailing: editcity ? IconButton(
                          onPressed: (){
                            setState(() {
                              _city.text.isEmpty ? city = _city.text : city = _city.text;
                              editcity = false;
                            });
                          },
                          icon: Icon(CupertinoIcons.check_mark_circled),
                        ):
                        IconButton(
                          onPressed: (){},
                          icon: Icon(CupertinoIcons.check_mark_circled,color: Colors.white,),
                        ),
                      ),
                    ),
                  ),
                  actions: <Widget>[
                    Card(
                      elevation: 5.0,
                      child: IconSlideAction(
                        icon: CupertinoIcons.home,
                        color: Colors.white,
                        onTap: (){},
                        caption: "Home",
                      ),
                    ),
                    Card(
                      elevation: 5.0,
                      child: IconSlideAction(
                        icon: CupertinoIcons.share_up,
                        color: Colors.cyan,
                        onTap: (){},
                        caption: "Share",
                      ),
                    )
                  ],
                  secondaryActions: <Widget>[
                    Card(
                      elevation: 5.0,
                      child: IconSlideAction(
                        icon: CupertinoIcons.create,
                        color: Colors.white,
                        onTap: (){
                          setState(() {
                            editcity = true;
                          });
                        },
                        caption: "Edit",
                      ),
                    ),
                    Card(
                      elevation: 5.0,
                      child: IconSlideAction(
                        icon: CupertinoIcons.delete_simple,
                        color: Colors.red,
                        onTap: (){},
                        caption: "Delete",
                      ),
                    )
                  ],
                  direction: Axis.horizontal,
                  movementDuration: Duration(seconds: 1),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
