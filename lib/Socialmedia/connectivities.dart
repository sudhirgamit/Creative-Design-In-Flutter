import 'package:creativedesign/Pages/advance.dart';
import 'package:creativedesign/Socialmedia_Codes/connectivities_code.dart';
import 'package:flutter/material.dart';
import 'package:connectivity/connectivity.dart';

class Connectivities extends StatefulWidget {
  @override
  _ConnectivitiesState createState() => _ConnectivitiesState();
}
class _ConnectivitiesState extends State<Connectivities> {
  _checkConnection() async{
    var result = await (Connectivity().checkConnectivity());
    if(result == ConnectivityResult.none){
      showDialog(
        context: context,
        builder: (context){
          return AlertDialog(
            elevation: 5.0,
            title: Text("No Data Network",style: TextStyle(color: Colors.white),),
            content: Text("Require to any network connection..!",style: TextStyle(color: Colors.white),),
            backgroundColor: Colors.red,
          );
        }
      );
    }else if(result == ConnectivityResult.wifi){
      showDialog(
          context: context,
          builder: (context){
            return AlertDialog(
              elevation: 5.0,
              title: Text("Wi-Fi Data Network",style: TextStyle(color: Colors.white),),
              content: Text("Access wi-fi data network connection",style: TextStyle(color: Colors.white),),
              backgroundColor: Colors.green,
            );
          }
      );
    }else if(result == ConnectivityResult.mobile){
      showDialog(
          context: context,
          builder: (context){
            return AlertDialog(
              elevation: 5.0,
              title: Text("Mobile Data Network",style: TextStyle(color: Colors.white),),
              content: Text("Access mobile data network connection",style: TextStyle(color: Colors.white),),
              backgroundColor: Colors.green,
            );
          }
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Connectivity",style: TextStyle(color: Colors.black),),
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Connectivities_Code()));
            },
            icon: Icon(Icons.transfer_within_a_station,size: 25,color: Colors.black,),
          )
        ],
      ),
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: _checkConnection,
        child: Icon(Icons.network_check),
        elevation: 5.0,
        tooltip: "Check Network",
        backgroundColor: Colors.red,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
