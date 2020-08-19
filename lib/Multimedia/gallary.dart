import 'dart:io';

import 'package:creativedesign/Multimedia_Codes/gallary_code.dart';
import 'package:creativedesign/Pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Gallary extends StatefulWidget {
  @override
  _GallaryState createState() => _GallaryState();
}

class _GallaryState extends State<Gallary> {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  File _imagefile;
  final _imagepicker = ImagePicker();
  Future<Null> _gallaryselect() async {
    try{
      final PickedFile pickedFile = await _imagepicker.getImage(source: ImageSource.gallery);
      setState(() {
        _imagefile = File(pickedFile.path);
      });
    }catch(e){
      print("Image are not selected");
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Gallary",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
          },
          icon: Icon(Icons.arrow_back_ios,size: 20,color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Gallary_Code()));
            },
            icon: Icon(Icons.transfer_within_a_station,size: 25,color: Colors.black),
          )
        ],
      ),
      backgroundColor: Colors.white,
      floatingActionButton: IconButton(
        onPressed: _gallaryselect,
        icon: Icon(Icons.photo,size: 35),
        tooltip: "Click Gallary",splashColor: Colors.teal,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _imagefile==null ? Placeholder() : Image.file(_imagefile),
            ],
          ),
        ),
      ),
    );
  }
}
