import 'package:flutter/material.dart';

class Details_3 extends StatefulWidget {
  String photo;
  Details_3(String s){
    photo = s;
  }
  @override
  _Details_3State createState() => _Details_3State();
}
class _Details_3State extends State<Details_3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        alignment: AlignmentDirectional.bottomCenter,padding: EdgeInsets.only(top: 50),
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
            //alignment: AlignmentDirectional.topCenter,
            width: MediaQuery.of(context).size.width-50,height: 100,
            decoration: BoxDecoration(
                color: Colors.white38,
                borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.arrow_back_ios,color: Colors.black ,),
                      onPressed: (){
                        setState(() {
                          Navigator.pop(context);
                        });
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.favorite_border,color: Colors.black ,),
                      onPressed: (){},
                    ),
                    IconButton(
                      icon: Icon(Icons.share,color: Colors.black ,),
                      onPressed: (){},
                    ),
                    IconButton(
                      icon: Icon(Icons.comment,color: Colors.black ,),
                      onPressed: (){},
                    ),
                  ],
                ),
                RaisedButton(
                  onPressed: (){},
                  child: Text("ADD TO CART"),
                  elevation: 5.0,
                  color: Colors.teal,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
