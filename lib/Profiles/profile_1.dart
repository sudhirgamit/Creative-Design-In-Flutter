import 'package:creativedesign/Pages/creative_design.dart';
import 'package:flutter/material.dart';
import 'package:masonry_grid/masonry_grid.dart';

class Profile_1 extends StatefulWidget {
  @override
  _Profile_1State createState() => _Profile_1State();
}
class _Profile_1State extends State<Profile_1> {
  final List<String> _images = <String> [
    "https://images.unsplash.com/photo-1600103698130-f70ace056ac2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=891&q=80",
    "https://images.unsplash.com/1/irish-hands.jpg?ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80",
    "https://images.unsplash.com/photo-1497171156029-51dfc973e5f9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
    "https://images.unsplash.com/photo-1550778323-71868c7dea39?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
    "https://images.unsplash.com/photo-1599953454277-fd24c266b04a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=837&q=80",
    "https://images.unsplash.com/photo-1597954211063-daaa715c72cf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      onPressed: (){
                        setState(() {
                          Navigator.push(context,MaterialPageRoute(builder: (context)=>Creative_Design()));
                        });
                      },
                      icon: Icon(Icons.arrow_back_ios,color: Colors.black,size: 20,),
                    ),
                    IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.search,color: Colors.black,),
                      tooltip: "Search",
                    )
                  ],
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: EdgeInsets.only(left: 30,right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        width: 150,height: 150,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                            border: Border.all(color: Colors.black26,width: 2.5),
                            borderRadius: BorderRadius.all(Radius.circular(2)),
                            image: DecorationImage(
                                image: NetworkImage("https://images.unsplash.com/photo-1593642634443-44adaa06623a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=625&q=80"),
                                fit: BoxFit.cover
                            )
                        ),
                      ),
                      Container(
                        height: 150,width: 130,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Icon(Icons.people),
                                SizedBox(width: 10,),
                                Text("120 Follows"),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Icon(Icons.person_add),
                                SizedBox(width: 10,),
                                Text("471 Followings"),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Icon(Icons.textsms),
                                SizedBox(width: 10,),
                                Text("6 Photos"),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: EdgeInsets.only(left: 30,right: 30),
                  child: Container(
                    alignment: AlignmentDirectional.topStart,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Brothen Bravo",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
                            Text("brothenbravo@gmail.com",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400)),
                          ],
                        ),
                        Container(
                          width: 30,height: 30,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.blue)
                          ),
                          child: IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.add,size: 12,color: Colors.blue,),
                            tooltip: "Add & Update",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30,right: 30,top: 20),
                  child: MasonryGrid(
                      column: 3,staggered: true,crossAxisSpacing: 3,mainAxisSpacing: 8,crossAxisAlignment: CrossAxisAlignment.center,
                      children: List.generate(_images.length, (i)=> Card(
                        elevation: 5.0,
                        child: Container(
                          height: 145,
                          decoration: BoxDecoration(
                              color: Colors.black12,
                              image: DecorationImage(
                                  image: NetworkImage(_images[i]),
                                  fit: BoxFit.cover
                              ),
                              border: Border.all(width: 2.5,color: Colors.white12)
                          ),
                        ),
                      )
                      ).toList()
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
