import 'package:creativedesign/Pages/creative_design.dart';
import 'package:flutter/material.dart';
import 'package:widget_with_codeview/syntax_highlighter.dart';

class E_Commerce_1_Code extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final SyntaxHighlighterStyle style =
    Theme.of(context).brightness == Brightness.dark
        ? SyntaxHighlighterStyle.darkThemeStyle()
        : SyntaxHighlighterStyle.lightThemeStyle();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("E-Commerce 1",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Creative_Design()));
          },
          icon: Icon(Icons.arrow_back_ios,size: 20,color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){
              //launch("https://github.com/sudhirgamit/Creative-Design-In-Flutter/blob/master/lib/Async/future_builders.dart");
            },
            icon: Icon(Icons.share,size: 20,color: Colors.black),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: SelectableText.rich(
            TextSpan(
              style: TextStyle(fontFamily: 'monospace', fontSize: 12.0,decoration: TextDecoration.none,fontWeight: FontWeight.w500,)
                  .apply(fontSizeFactor: 1.1),
              children: <TextSpan>[
                DartSyntaxHighlighter(style).format("""
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


// Details_1.dart
import 'package:creativedesign/Pages/creative_design.dart';
import 'package:flutter/material.dart';

class Details_1 extends StatefulWidget {
  @override
  _Details_1State createState() => _Details_1State();
}
class _Details_1State extends State<Details_1> {
  int count = 1; int price = 450;
  int total = 450; bool like = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: <Widget>[
            Flexible(
              flex: 2,
              fit: FlexFit.tight,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  color: Colors.green,boxShadow: [BoxShadow(
                    color: Colors.black,
                    blurRadius: 5
                )],
                  image: DecorationImage(
                      image: NetworkImage("https://images.unsplash.com/photo-1587304189289-8701c98d53bc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=967&q=80"),
                      fit: BoxFit.cover
                  ),
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10)),
                ),
                child: SafeArea(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.arrow_back_ios,size: 22,),
                          onPressed: (){
                            Navigator.pop(context);
                          },
                          tooltip: "Back",
                        ),
                        IconButton(
                          icon: like ? Icon(Icons.favorite,color: Colors.red,) : Icon(Icons.favorite_border,),
                          onPressed: (){
                            setState(() {
                              like = !like;
                            });
                          },
                          tooltip: "Like",
                        ),
                      ],
                    )
                ),
              ),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Ladies Watch",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),)
                        ),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Text("Rs.total/-",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),)
                        )
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Row(
                            children: <Widget>[
                              Text("Offer 10% discount",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                            ],
                          ),
                        ),
                        Text("Quatity : count",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),)
                      ],
                    ),
                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                        Text(count.toString(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
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
                    SizedBox(height: 10,),
                    Text("Description : ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                    SizedBox(height: 10,),
                    Text("A description of the product to high price in the system. beacuse a fast delievery product in anywhare, any types of the product to current time deliever.", textAlign: TextAlign.justify ,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w300),),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

                """),
              ],
            ),
            style: DefaultTextStyle.of(context)
                .style
                .apply(fontSizeFactor: 1.0),
          ),
        ),
      ),
    );
  }
}
