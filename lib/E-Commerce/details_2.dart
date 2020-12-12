import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

class Details_2 extends StatefulWidget {
  String name1; int amount; String photo;
  Details_2(String name, int price, String image){
    name1 = name; amount = price; photo = image;
  }
  @override
  _Details_2State createState() => _Details_2State();
}
class _Details_2State extends State<Details_2> {
  int count = 1;
  bool like = false;
  @override
  Widget build(BuildContext context) {
    int total = widget.amount;
    int price = widget.amount;
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      body: Container(
        alignment: AlignmentDirectional.centerEnd,padding: EdgeInsets.only(top: 50),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(widget.photo),
              fit: BoxFit.cover
          )
        ),
        child: SafeArea(
          child: Container(
            alignment: AlignmentDirectional.topCenter,
            width: 150,height: 220,
            decoration: BoxDecoration(
              color: Colors.white38,
              borderRadius: BorderRadius.all(Radius.circular(20))
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(widget.name1,style: TextStyle(fontSize: 20,color: widget.name1=="Black Dress M1"? Colors.white: Colors.black,fontWeight: FontWeight.w700),),
                SizedBox(height: 5,),
                Text("Price : Rs.${total}/-",style: TextStyle(fontSize: 16,color: widget.name1=="Black Dress M1"? Colors.white: Colors.black,fontWeight: FontWeight.w700),),
                SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.green,
                      child: IconButton(
                        onPressed: (){
                          setState(() {
                            count +=1;
                            total = price * count;
                          });
                        },
                        icon: Icon(Icons.add),
                      ),
                    ),
                    Text(count.toString(),style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color:  widget.name1=="Black Dress M1"? Colors.white : Colors.black),),
                    CircleAvatar(
                      backgroundColor: Colors.red,
                      child: IconButton(
                        onPressed: (){
                          setState(() {
                            if(count<=1){
                              return;
                            }else{
                              count -=1;
                              total = price * count;
                            }
                          });
                        },
                        icon: Icon(Icons.remove),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5,),
                RaisedButton(
                  onPressed: (){},
                  elevation: 5.0,
                  child: Text("Add To Card",style: TextStyle(color: widget.name1=="Black Dress M1"? Colors.white: Colors.black,fontWeight: FontWeight.w700)),
                  color: Colors.lightGreen,
                ),
                Divider(color: Colors.black,thickness: 1.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.favorite_border,color: widget.name1=="Black Dress M1"? Colors.white : Colors.black ,),
                      onPressed: (){},
                    ),
                    IconButton(
                      icon: Icon(Icons.share,color: widget.name1=="Black Dress M1"? Colors.white : Colors.black ,),
                      onPressed: (){},
                    ),
                    IconButton(
                      icon: Icon(Icons.comment,color: widget.name1=="Black Dress M1"? Colors.white : Colors.black ,),
                      onPressed: (){},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
