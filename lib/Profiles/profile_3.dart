import 'package:creativedesign/Pages/creative_design.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile_3 extends StatefulWidget {
  @override
  _Profile_3State createState() => _Profile_3State();
}
class _Profile_3State extends State<Profile_3> {
  final List<String> _photos = <String> [
    "https://images.unsplash.com/photo-1600103698130-f70ace056ac2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=891&q=80",
    "https://images.unsplash.com/1/irish-hands.jpg?ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80",
    "https://images.unsplash.com/photo-1497171156029-51dfc973e5f9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
    "https://images.unsplash.com/photo-1550778323-71868c7dea39?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
    "https://images.unsplash.com/photo-1599953454277-fd24c266b04a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=837&q=80",
    "https://images.unsplash.com/photo-1597954211063-daaa715c72cf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80"
  ];
  final List<Map> _images = [
    {
      "image" : "https://images.unsplash.com/photo-1601671886937-dba1ebb55ab2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
      "name" : "Gaser De",
    },
    {
      "image" : "https://images.unsplash.com/photo-1600711725627-c5796c68a4aa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
      "name" : "Kevin Fit",
    },
    {
      "image" : "https://images.unsplash.com/photo-1601614514155-0fa833ae6682?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
      "name" : "Yogedra",
    },
    {
      "image" : "https://images.unsplash.com/photo-1597806672097-ab1a656ec9ea?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
      "name" : "Vince Flem",
    },
    {
      "image" : "https://images.unsplash.com/photo-1601568544619-b03062ca528a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
      "name" : "Gustavo",
    },
    {
      "image" : "https://images.unsplash.com/photo-1597649130021-31d362aa34c3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
      "name" : "Maxim Shkly",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      onPressed: (){
                        setState(() {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Creative_Design()));
                        });
                      },
                      icon: Icon(Icons.arrow_back_ios,size: 20,),
                      tooltip: "Back",
                    ),
                    Text("Profile",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400),),
                    IconButton(
                    onPressed: (){},
                    icon: Icon(CupertinoIcons.create,size: 28,),
                    tooltip: "Edit",
                    ),
                  ],
                ),
                SizedBox(height: 25,),
                Row(
                  children: <Widget>[
                    Stack(
                      alignment: AlignmentDirectional.centerEnd,
                      children: <Widget>[
                        Container(
                          height: 100,width: MediaQuery.of(context).size.width/2.5,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.only(topRight: Radius.circular(50),bottomRight: Radius.circular(50)),
                          ),
                        ),
                        Positioned(
                          right: 10,
                          child: Container(
                            width: 80,height: 80,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white
                            ),
                          )
                        ),
                        Positioned(
                          right: 12,
                          child: CircleAvatar(
                            maxRadius: 38,
                            minRadius: 30,backgroundColor: Colors.white,
                            backgroundImage: NetworkImage("https://images.unsplash.com/photo-1601403622108-bea7307d424b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 20,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Sunny Jorden",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black,fontSize: 20),),
                        Text("Location Place",style: TextStyle(fontWeight: FontWeight.w300,color: Colors.black87,fontSize: 16))
                      ],
                    )
                  ],
                ),
                Divider(height: 40,thickness: 10,color: Colors.black12,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text("200",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.green,fontSize: 20),),
                        SizedBox(height: 5,),
                        Text("Followings",style: TextStyle(fontWeight: FontWeight.w300,color: Colors.lightGreen,fontSize: 16))
                      ],
                    ),
                    Container(color: Colors.black12,height: 35,width: 2,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text("1.5 K",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.green,fontSize: 20),),
                        SizedBox(height: 5,),
                        Text("Followers",style: TextStyle(fontWeight: FontWeight.w300,color: Colors.lightGreen,fontSize: 16)),
                      ],
                    ),
                    Container(color: Colors.black12,height: 35,width: 2,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text("5.1 M",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.green,fontSize: 20),),
                        SizedBox(height: 5,),
                        Text("Likes",style: TextStyle(fontWeight: FontWeight.w300,color: Colors.lightGreen,fontSize: 16))
                      ],
                    ),
                  ],
                ),
                Divider(height: 40,thickness: 10,color: Colors.black12,),
                Padding(
                  padding: const EdgeInsets.only(left: 25,top: 10,right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Follower",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black,fontSize: 20),),
                      Text("See All",style: TextStyle(fontWeight: FontWeight.w300,color: Colors.green,fontSize: 18))
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,height: 110,
                  alignment: AlignmentDirectional.center,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: List.generate(_images.length, (i)=>Column(
                      children: <Widget>[
                        Container(
                          height: 70,width: 70,margin: EdgeInsets.only(left: 10,top: 10),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: NetworkImage(_images[i]["image"]),
                              fit: BoxFit.cover
                            ),
                            border: Border.all(color:Colors.green,width: 0.5)
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10,top: 10),
                          child: Text(_images[i]["name"]),
                        )
                      ],
                    )
                    ).toList(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25,top: 15),
                  child: Text("Photos",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black,fontSize: 20),)
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 20,top: 10,right: 10),
                    child: Wrap(
                      spacing: 8,runSpacing: 5,
                      children: List.generate(_photos.length, (i)=>Container(
                        width: MediaQuery.of(context).size.width/3.5,
                        child: Card(
                          elevation: 5.0,
                          child: Container(
                            height: 150,width: 150,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(_photos[i]),
                                    fit: BoxFit.cover
                                ),
                              border: Border.all(color: Colors.lightGreen,width: 0.5)
                            ),
                          ),
                        )
                      )
                      ).toList()
                    )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
