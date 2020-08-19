import 'package:creativedesign/Layouts_Codes/columns_code.dart';
import 'package:creativedesign/Pages/homepage.dart';
import 'package:flutter/material.dart';

class Columns extends StatefulWidget {
  @override
  _ColumnsState createState() => _ColumnsState();
}

class _ColumnsState extends State<Columns> {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  MainAxisSize _mainAxisSize = MainAxisSize.max;
  MainAxisAlignment _mainAxisAlignment = MainAxisAlignment.start;
  CrossAxisAlignment _crossAxisAlignment = CrossAxisAlignment.start;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Column Layouts",style: TextStyle(color: Colors.black),),
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Columns_Code()));
            },
            icon: Icon(Icons.transfer_within_a_station,size: 25,color: Colors.black),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          color: Colors.orange,
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisSize: _mainAxisSize,
            mainAxisAlignment: _mainAxisAlignment,
            crossAxisAlignment: _crossAxisAlignment,
            textBaseline: TextBaseline.alphabetic,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle
                ),
                child: Text("Column",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.white),),
              ),
              Container(
                padding: EdgeInsets.all(25),
                decoration: BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle
                ),
                child: Text("Column",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.white),),
              ),
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle
                ),
                child: Text("Column",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.white),),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: ButtonBar(
        buttonAlignedDropdown: true,
        alignment: MainAxisAlignment.center,
        buttonPadding: EdgeInsets.all(10),
        layoutBehavior: ButtonBarLayoutBehavior.padded,
        children: <Widget>[
          Text("MainAxisAlignment",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.blueGrey,fontSize: 18),),
          DropdownButton<MainAxisAlignment>(
            value: _mainAxisAlignment,
            onChanged: (MainAxisAlignment aligns){
              setState(() {
                if(aligns!=null){
                  _mainAxisAlignment = aligns;
                  print(_mainAxisAlignment);
                }
              });
            },
            items: MainAxisAlignment.values.map((MainAxisAlignment align)=>DropdownMenuItem(
              value: align,
              child: Text(align.toString().substring('MainAxisAlignment.'.length)),
            )).toList(),
          ),
          Text("CrossAxisAlignment",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.blueGrey,fontSize: 18),),
          DropdownButton<CrossAxisAlignment>(
            value: _crossAxisAlignment,
            onChanged: (CrossAxisAlignment crosses){
              setState(() {
                if(crosses!=null){
                  _crossAxisAlignment = crosses;
                  print(_crossAxisAlignment);
                }
              });
            },
            items: CrossAxisAlignment.values.map((CrossAxisAlignment cross)=>DropdownMenuItem(
              value: cross,
              child: Text(cross.toString().substring('CrossAxisAlignment.'.length)),
            )).toList(),
          ),
          Text("MainAxisSize",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.blueGrey,fontSize: 18),),
          DropdownButton<MainAxisSize>(
            value: _mainAxisSize,
            onChanged: (MainAxisSize sized){
              setState(() {
                if(sized!=null){
                  _mainAxisSize = sized;
                  print(_mainAxisSize);
                }
              });
            },
            items: MainAxisSize.values.map((MainAxisSize size)=>DropdownMenuItem(
              value: size,
              child: Text(size.toString().substring('MainAxisSize.'.length)),
            )).toList(),
          )
        ],
      ),
    );
  }
}
