import 'package:flutter/material.dart';

class Details_4 extends StatefulWidget {
  String photo; String name; String price;
  Details_4(String pic, String s, String t){
    photo = pic;
    name = s;
    price = t;
  }
  @override
  _Details_4State createState() => _Details_4State();
}
class _Details_4State extends State<Details_4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                alignment: AlignmentDirectional.topStart,
                height: MediaQuery.of(context).size.height-150,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(widget.photo),
                        fit: BoxFit.fill
                    )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      onPressed: (){
                        setState(() {
                          Navigator.pop(context);
                        });
                      },
                      icon: Icon(Icons.arrow_back_ios,size: 22,color: Colors.black,),
                    ),
                    IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.favorite_border,size: 22,color: Colors.black,),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        height: 130,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.blueAccent,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
            boxShadow: [BoxShadow(
                blurRadius: 13,spreadRadius: 1.5,color: Colors.grey
            )]
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SizedBox(height: 15,),
            Text(widget.name,style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700,color: Colors.white),),
            SizedBox(height: 8,),
            Text("Rs.${widget.price}/-",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,color: Colors.white),),
            SizedBox(height: 10,),
            RaisedButton(
              padding: EdgeInsets.symmetric(vertical: 15,horizontal: 110),
              onPressed: (){},
              child: Text("ADD TO CART",style: TextStyle(color: Colors.white,fontSize: 16),),
              elevation: 5.0,
              color: Colors.teal,
            )
          ],
        ),
      ),
    );
  }
}
