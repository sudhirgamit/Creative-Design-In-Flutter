import 'dart:io';
import 'package:creativedesign/Multimedia_Codes/camera_code.dart';
import 'package:creativedesign/Pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Camera extends StatefulWidget {
  @override
  _CameraState createState() => _CameraState();
}
class _CameraState extends State<Camera> {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  File _imagefile;
  final _imagepicker = ImagePicker();
  Future<Null> _cameraclick() async {
    try{
      final PickedFile pickedFile = await _imagepicker.getImage(source: ImageSource.camera);
      setState(() {
        _imagefile = File(pickedFile.path);
      });
    }catch(e){
      print("Image are not click");
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Camera",style: TextStyle(color: Colors.black),),
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Camera_Code()));
            },
            icon: Icon(Icons.transfer_within_a_station,size: 25,color: Colors.black),
          )
        ],
      ),
      backgroundColor: Colors.white,
      floatingActionButton: IconButton(
        onPressed: _cameraclick,
        icon: Icon(Icons.photo_camera,size: 35),
        tooltip: "Click Gallary",splashColor: Colors.teal,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            _imagefile==null ? Placeholder() : Image.file(_imagefile),
          ],
        ),
      ),
    );
  }
}
