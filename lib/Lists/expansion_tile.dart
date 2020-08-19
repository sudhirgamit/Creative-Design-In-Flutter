import 'package:creativedesign/Lists_Codes/expansion_tile_code.dart';
import 'package:creativedesign/Pages/homepage.dart';
import 'package:flutter/material.dart';

class Expansion_Tile extends StatelessWidget {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("ExpansionTile",style: TextStyle(color: Colors.black),),
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Expansion_Tile_Code()));
            },
            icon: Icon(Icons.transfer_within_a_station,size: 25,color: Colors.black),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.all(10),
        children: <Widget>[
          Card(
            elevation: 5.0,
            child: ExpansionTile(
              leading: CircleAvatar(
                child: Chip(
                  label: Text("A"),
                ),
              ),
              title: Text("Names",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w700,letterSpacing: 2),),
              children: <Widget>[
                CircleAvatar(child: Chip(label: Text("A"),),),Divider(color: Colors.blueGrey,thickness: 0.0,endIndent: 120,indent: 120,),
                CircleAvatar(child: Chip(label: Text("N"),),),Divider(color: Colors.blueGrey,thickness: 0.0,endIndent: 120,indent: 120,),
                CircleAvatar(child: Chip(label: Text("S"),),),Divider(color: Colors.blueGrey,thickness: 0.0,endIndent: 120,indent: 120,),
                CircleAvatar(child: Chip(label: Text("H"),),),Divider(color: Colors.blueGrey,thickness: 0.0,endIndent: 120,indent: 120,),
                CircleAvatar(child: Chip(label: Text("U"),),),Divider(color: Colors.white,thickness: 0.0,endIndent: 120,indent: 120,),
              ],
            ),
          ),
          Card(
            elevation: 5.0,
            child: ExpansionTile(
              leading: CircleAvatar(
                child: Chip(
                  label: Text("B"),
                ),
              ),
              title: Text("Names",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w700,letterSpacing: 2),),
              children: <Widget>[
                CircleAvatar(child: Chip(label: Text("B"),),),Divider(color: Colors.blueGrey,thickness: 0.0,endIndent: 120,indent: 120,),
                CircleAvatar(child: Chip(label: Text("H"),),),Divider(color: Colors.blueGrey,thickness: 0.0,endIndent: 120,indent: 120,),
                CircleAvatar(child: Chip(label: Text("A"),),),Divider(color: Colors.blueGrey,thickness: 0.0,endIndent: 120,indent: 120,),
                CircleAvatar(child: Chip(label: Text("V"),),),Divider(color: Colors.blueGrey,thickness: 0.0,endIndent: 120,indent: 120,),
                CircleAvatar(child: Chip(label: Text("U"),),),Divider(color: Colors.white,thickness: 0.0,endIndent: 120,indent: 120,),
              ],
            ),
          ),
          Card(
            elevation: 5.0,
            child: ExpansionTile(
              leading: CircleAvatar(
                child: Chip(
                  label: Text("C"),
                ),
              ),
              title: Text("Names",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w700,letterSpacing: 2),),
              children: <Widget>[
                CircleAvatar(child: Chip(label: Text("C"),),),Divider(color: Colors.blueGrey,thickness: 0.0,endIndent: 120,indent: 120,),
                CircleAvatar(child: Chip(label: Text("H"),),),Divider(color: Colors.blueGrey,thickness: 0.0,endIndent: 120,indent: 120,),
                CircleAvatar(child: Chip(label: Text("A"),),),Divider(color: Colors.blueGrey,thickness: 0.0,endIndent: 120,indent: 120,),
                CircleAvatar(child: Chip(label: Text("K"),),),Divider(color: Colors.blueGrey,thickness: 0.0,endIndent: 120,indent: 120,),
                CircleAvatar(child: Chip(label: Text("U"),),),Divider(color: Colors.white,thickness: 0.0,endIndent: 120,indent: 120,),
              ],
            ),
          ),
          Card(
            elevation: 5.0,
            child: ExpansionTile(
              leading: CircleAvatar(
                child: Chip(
                  label: Text("D"),
                ),
              ),
              title: Text("Names",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w700,letterSpacing: 2),),
              children: <Widget>[
                CircleAvatar(child: Chip(label: Text("D"),),),Divider(color: Colors.blueGrey,thickness: 0.0,endIndent: 120,indent: 120,),
                CircleAvatar(child: Chip(label: Text("H"),),),Divider(color: Colors.blueGrey,thickness: 0.0,endIndent: 120,indent: 120,),
                CircleAvatar(child: Chip(label: Text("A"),),),Divider(color: Colors.blueGrey,thickness: 0.0,endIndent: 120,indent: 120,),
                CircleAvatar(child: Chip(label: Text("R"),),),Divider(color: Colors.blueGrey,thickness: 0.0,endIndent: 120,indent: 120,),
                CircleAvatar(child: Chip(label: Text("A"),),),Divider(color: Colors.white,thickness: 0.0,endIndent: 120,indent: 120,),
              ],
            ),
          ),
          Card(
            elevation: 5.0,
            child: ExpansionTile(
              leading: CircleAvatar(
                child: Chip(
                  label: Text("E"),
                ),
              ),
              title: Text("Names",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w700,letterSpacing: 2),),
              children: <Widget>[
                CircleAvatar(child: Chip(label: Text("E"),),),Divider(color: Colors.blueGrey,thickness: 0.0,endIndent: 120,indent: 120,),
                CircleAvatar(child: Chip(label: Text("Y"),),),Divider(color: Colors.blueGrey,thickness: 0.0,endIndent: 120,indent: 120,),
                CircleAvatar(child: Chip(label: Text("U"),),),Divider(color: Colors.blueGrey,thickness: 0.0,endIndent: 120,indent: 120,),
                CircleAvatar(child: Chip(label: Text("B"),),),Divider(color: Colors.blueGrey,thickness: 0.0,endIndent: 120,indent: 120,),
                CircleAvatar(child: Chip(label: Text("H"),),),Divider(color: Colors.white,thickness: 0.0,endIndent: 120,indent: 120,),
              ],
            ),
          ),

          Card(
            elevation: 5.0,
            child: ExpansionTile(
              leading: CircleAvatar(
                child: Chip(
                  label: Text("F"),
                ),
              ),
              title: Text("Names",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w700,letterSpacing: 2),),
              children: <Widget>[
                CircleAvatar(child: Chip(label: Text("F"),),),Divider(color: Colors.blueGrey,thickness: 0.0,endIndent: 120,indent: 120,),
                CircleAvatar(child: Chip(label: Text("E"),),),Divider(color: Colors.blueGrey,thickness: 0.0,endIndent: 120,indent: 120,),
                CircleAvatar(child: Chip(label: Text("Y"),),),Divider(color: Colors.blueGrey,thickness: 0.0,endIndent: 120,indent: 120,),
                CircleAvatar(child: Chip(label: Text("A"),),),Divider(color: Colors.blueGrey,thickness: 0.0,endIndent: 120,indent: 120,),
                CircleAvatar(child: Chip(label: Text("N"),),),Divider(color: Colors.white,thickness: 0.0,endIndent: 120,indent: 120,),
              ],
            ),
          ),
          Card(
            elevation: 5.0,
            child: ExpansionTile(
              leading: CircleAvatar(
                child: Chip(
                  label: Text("G"),
                ),
              ),
              title: Text("Names",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w700,letterSpacing: 2),),
              children: <Widget>[
                CircleAvatar(child: Chip(label: Text("G"),),),Divider(color: Colors.blueGrey,thickness: 0.0,endIndent: 120,indent: 120,),
                CircleAvatar(child: Chip(label: Text("O"),),),Divider(color: Colors.blueGrey,thickness: 0.0,endIndent: 120,indent: 120,),
                CircleAvatar(child: Chip(label: Text("O"),),),Divider(color: Colors.blueGrey,thickness: 0.0,endIndent: 120,indent: 120,),
                CircleAvatar(child: Chip(label: Text("G"),),),Divider(color: Colors.blueGrey,thickness: 0.0,endIndent: 120,indent: 120,),
                CircleAvatar(child: Chip(label: Text("B"),),),Divider(color: Colors.blueGrey,thickness: 0.0,endIndent: 120,indent: 120,),
                CircleAvatar(child: Chip(label: Text("Y"),),),Divider(color: Colors.white,thickness: 0.0,endIndent: 120,indent: 120,),
              ],
            ),
          ),
          Card(
            elevation: 5.0,
            child: ExpansionTile(
              leading: CircleAvatar(
                child: Chip(
                  label: Text("H"),
                ),
              ),
              title: Text("Names",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w700,letterSpacing: 2),),
              children: <Widget>[
                CircleAvatar(child: Chip(label: Text("H"),),),Divider(color: Colors.blueGrey,thickness: 0.0,endIndent: 120,indent: 120,),
                CircleAvatar(child: Chip(label: Text("E"),),),Divider(color: Colors.blueGrey,thickness: 0.0,endIndent: 120,indent: 120,),
                CircleAvatar(child: Chip(label: Text("R"),),),Divider(color: Colors.blueGrey,thickness: 0.0,endIndent: 120,indent: 120,),
                CircleAvatar(child: Chip(label: Text("R"),),),Divider(color: Colors.blueGrey,thickness: 0.0,endIndent: 120,indent: 120,),
                CircleAvatar(child: Chip(label: Text("Y"),),),Divider(color: Colors.white,thickness: 0.0,endIndent: 120,indent: 120,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
