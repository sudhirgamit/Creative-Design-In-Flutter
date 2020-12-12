import 'package:carousel_slider/carousel_slider.dart';
import 'package:creativedesign/E-Commerce/details_1.dart';
import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

class E_Commerce_1 extends StatefulWidget {
  @override
  _E_Commerce_1State createState() => _E_Commerce_1State();
}
class _E_Commerce_1State extends State<E_Commerce_1> {
  final List<String> _images = <String> [
    "https://images.unsplash.com/photo-1587304189289-8701c98d53bc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=967&q=80",
    "https://images.unsplash.com/photo-1591348278900-019a8a2a8b1d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1189&q=80",
    "https://images.unsplash.com/photo-1591375275624-c2f9fdcc1dc2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=967&q=80",
    "https://images.unsplash.com/photo-1591375462104-a0cd5291ab14?ixlib=rb-1.2.1&auto=format&fit=crop&w=967&q=80",
    "https://images.unsplash.com/photo-1587304655887-26ae59180a79?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=967&q=80",
    "https://images.unsplash.com/photo-1587466280419-78d7adc6d4a8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=967&q=80"
  ];
  bool like = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        //backgroundColor: Colors.white70,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.sort,color: Colors.black,),
          onPressed: (){},
        ),
        title: Text("Shopping",style: TextStyle(fontSize: 22,color: Colors.black,fontWeight: FontWeight.w600),),
        actions: <Widget>[
          Stack(
            alignment: AlignmentDirectional.center,
            children: <Widget>[
              Container(
                //color: Colors.red,
                height: 50,width: 50,
              ),
              IconButton(
                icon: Icon(Icons.notifications,color: Colors.black,),
                onPressed: (){},
              ),
              Positioned(
                  top: 15,left: 25,
                  child: Container(
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle
                    ),
                    child: Text("5",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w600),),
                  )
              ),
            ],
          ),
          Stack(
            alignment: AlignmentDirectional.center,
            children: <Widget>[
              Container(
                //color: Colors.red,
                height: 50,width: 50,
              ),
              IconButton(
                icon: Icon(Icons.shopping_cart,color: Colors.black,),
                onPressed: (){},
              ),
              Positioned(
                  top: 15,left: 25,
                  child: Container(
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle
                    ),
                    child: Text("9",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w600),),
                  )
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              CarouselSlider.builder(
                options: CarouselOptions(
                    autoPlay: true,
                    height: 200,
                    autoPlayAnimationDuration: Duration(seconds: 3),
                    pauseAutoPlayOnTouch: true,
                    initialPage: 0,
                    pauseAutoPlayOnManualNavigate: true,
                    autoPlayCurve: Curves.easeInOutSine,
                    enlargeCenterPage: true,
                    scrollDirection: Axis.horizontal
                ),
                itemCount: _images.length,
                itemBuilder: (context, index){
                  return Container(
                    height: 200,
                    margin: EdgeInsets.all(2),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        image: DecorationImage(
                            image: NetworkImage(_images[index]),
                            fit: BoxFit.cover
                        ),
                        boxShadow: [BoxShadow(
                            color: Colors.grey,
                            blurRadius: 7,spreadRadius: 1.5
                        )]
                    ),
                  );
                },
              ),
              SizedBox(height: 15,),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text("List Of Product",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black),)
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: <Widget>[
                    ProductCard("p1"),
                    ProductCard("p2"),
                    ProductCard("p3"),
                    ProductCard("p4"),
                    ProductCard("p5"),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  Widget ProductCard(name){
    return Card(
      elevation:5.0,color: Colors.white70,
      child: InkWell(
        onTap: (){
          setState(() {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Details_1()));
          });
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: 100,width: MediaQuery.of(context).size.width-250,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage("https://images.unsplash.com/photo-1587304189289-8701c98d53bc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=967&q=80"),
                      fit: BoxFit.cover
                  ),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(5),bottomLeft: Radius.circular(5)),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Ladies Watch",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.black),),
                SizedBox(height: 10,),
                Text("Offer 10% discount",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.red),),
                SizedBox(height: 10,),
                Text("Rs.450/-",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.black),),
              ],
            ),
            SizedBox(width: 30,),
            IconButton(
              onPressed: (){
                setState(() {
                  if(name == "p1"){
                    like = !like;
                    print("p1");
                  }else if(name == "p2"){
                    like = !like;
                    print("p2");
                  }else if(name == "p3"){
                    like = !like;
                    print("p3");
                  }else if(name == "p4"){
                    like = !like;
                    print("p4");
                  }else if(name == "p5"){
                    like = !like;
                    print("p5");
                  }
                });
              },
              icon: like? Icon(Icons.favorite,color: Colors.red,) : Icon(Icons.favorite_border,color: Colors.black,),
            ),
            SizedBox(width: 10,),
          ],
        ),
      ),
    );
  }
}
