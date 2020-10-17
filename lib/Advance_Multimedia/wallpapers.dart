import 'dart:convert';
import 'package:creativedesign/Advance_Multimedia/preview_wallpaper.dart';
import 'package:creativedesign/Advance_Multimedia_Codes/wallpapers_code.dart';
import 'package:creativedesign/Pages/advance.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:loading_animations/loading_animations.dart';
import 'package:masonry_grid/masonry_grid.dart';

class Wallpapers extends StatefulWidget {
  @override
  _WallpapersState createState() => _WallpapersState();
}
class _WallpapersState extends State<Wallpapers> {
  // 6fGZNsTIB4n_QfAtlGPstx4X2rEB0NrPt8hxGjiBT08
  List data;
  @override
  void initState(){
    super.initState();
    getData();
  }
  Future<String> getData() async{
    var url = await http.get("https://api.unsplash.com/search/photos?per_page=100&client_id=6fGZNsTIB4n_QfAtlGPstx4X2rEB0NrPt8hxGjiBT08&query=nature");
    var json_data = json.decode(url.body);
    setState(() {
      data = json_data["results"];
      //print(data);
    });
    return "Success";
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Wallpapers",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Advance()));
          },
          icon: Icon(Icons.arrow_back_ios,size: 20,color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Wallpapers_Code()));
            },
            icon: Icon(Icons.transfer_within_a_station,size: 25,color: Colors.black,),
          )
        ],
      ),
      body: data!=null ?
      SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 20,right: 20,top: 20),
          child: MasonryGrid(
              column: 3,staggered: true,crossAxisSpacing: 3,mainAxisSpacing: 8,crossAxisAlignment: CrossAxisAlignment.center,
              children: List.generate(data.length, (i)=> Card(
                elevation: 5.0,
                child: InkWell(
                  onTap: (){
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context)=>Preview_Wallpaper(data[i]["urls"]["full"])
                      ));
                    });
                  },
                  child: Container(
                    height: 145,
                    decoration: BoxDecoration(
                        color: Colors.black12,
                        image: DecorationImage(
                            image: NetworkImage(data[i]["urls"]["small"]),
                            fit: BoxFit.cover
                        ),
                        border: Border.all(width: 2.5,color: Colors.white12)
                    ),
                  ),
                ),
              )
              ).toList()
          ),
        ),
      )
          :
      Center(child: LoadingBouncingLine.circle(size: 50,borderSize: 2.5,borderColor: Colors.blue,backgroundColor: Colors.blue,duration: Duration(seconds: 5))),
    );
  }
}
