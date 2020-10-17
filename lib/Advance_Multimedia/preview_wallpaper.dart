import 'package:flutter/material.dart';

class Preview_Wallpaper extends StatefulWidget {
  String i;
  Preview_Wallpaper(String data){
    this.i = data;
  }
  @override
  _Preview_WallpaperState createState() => _Preview_WallpaperState();
}
class _Preview_WallpaperState extends State<Preview_Wallpaper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        //alignment: AlignmentDirectional.bottomCenter,
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.network(widget.i,fit: BoxFit.cover,),
          ),
          Container(
            color: Colors.white12,
            alignment: AlignmentDirectional.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.cloud_download,color: Colors.white,),
                ),
                IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.share,color: Colors.white,),
                ),
                IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.wallpaper,color: Colors.white,),
                )
              ],
            ),
          )
        ],
      )
    );
  }
}
