import 'package:creativedesign/Pages/creative_design.dart';
import 'package:flutter/material.dart';
import 'package:widget_with_codeview/syntax_highlighter.dart';

class E_Commerce_4_Code extends StatelessWidget {
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
        title: Text("E-Commerce 4",style: TextStyle(color: Colors.black),),
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
import 'package:creativedesign/E-Commerce/details_4.dart';
import 'package:creativedesign/Layouts/columns.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class E_Commerce_4 extends StatefulWidget {
  @override
  _E_Commerce_4State createState() => _E_Commerce_4State();
}
class _E_Commerce_4State extends State<E_Commerce_4> {
  final List<String> _images = <String> [
    "https://images.unsplash.com/photo-1556607173-eca49c3c4f47?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1052&q=80",
    "https://images.unsplash.com/photo-1511367667796-a88d106800b0?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=931&q=80",
    "https://images.unsplash.com/photo-1570185014104-901f21c07621?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80",
    "https://images.unsplash.com/photo-1536650731127-3b9ce7c98007?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1191&q=80",
    "https://images.unsplash.com/photo-1495305379050-64540d6ee95d?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80",
    "https://images.unsplash.com/photo-1588940086836-36c7d89611a0?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80"
  ];
  final List<String> _mobile = <String> [
    "https://5.imimg.com/data5/FK/HU/MY-44140202/apple-iphone-earphone-500x500.jpg",
    "https://5.imimg.com/data5/KY/HV/MY-25249323/micromax-earphone-500x500.jpg",
    "https://s1.poorvikamobile.com/image/data/AAA%20Acc/Acc%20marshall/Marshall%20Mode%20Earphone%20-%20Black/marshall-mode-earphone-black-a171118_ios.jpeg",
    "https://eu.jbl.com/dw/image/v2/AAUJ_PRD/on/demandware.static/-/Sites-masterCatalog_Harman/default/dw3b439bfd/JBL_AwareC_frontBack_Blue_keyfeature.jpg?sw=626&sh=626&sm=fit&sfrm=png",
    "https://cdn.shopify.com/s/files/1/0057/8938/4802/products/Red_e8841f0d-0b05-4d95-8896-533c226a14cd.jpg?v=1599547073",
    "https://brain-images-ssl.cdn.dixons.com/7/7/10193377/u_10193377.jpg"
  ];
  final List<String> _laptop = <String> [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTrdZGoRMlKr2FI8ogqiViMmxN332FtCrhiw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfKU4-1O3TggDfZQKVHcQqkcJYNuJf1hXNNQ&usqp=CAU",
    "https://gloimg.gbtcdn.com/storage/store/6613734868041670656/15896/7470bf1107e3.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRW8kTjMgRXkOGQSXdeF7CciK-VjBzP-2hvwA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOlj7-Ww8Y96D0DiZClphEt8UOxTyMvy5Swg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcBeiQOED-0qVmXcdEdD7QTBJPE7fepVFczg&usqp=CAU"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.arrow_back_ios,color: Colors.white,size: 22,),
                    ),
                    Text("Earphone",style: TextStyle(fontSize: 22,color: Colors.white),),
                    IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.add_shopping_cart,color: Colors.white,size: 22,),
                    ),
                  ],
                ),
                SizedBox(height:10),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
                  ),
                  width: MediaQuery.of(context).size.width,//height: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 15,vertical: 20),
                        child: CarouselSlider.builder(
                          options: CarouselOptions(
                            autoPlay: true,
                            height: 200,
                            autoPlayAnimationDuration: Duration(seconds: 3),
                            pauseAutoPlayOnTouch: true,
                            initialPage: 3,
                            pauseAutoPlayOnManualNavigate: true,
                            autoPlayCurve: Curves.slowMiddle,
                            scrollDirection: Axis.horizontal,
                          ),
                          itemCount: _images.length,
                          itemBuilder: (context, index){
                            return Container(
                              height: 200,
                              margin: EdgeInsets.all(10),
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.grey),
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
                              alignment: AlignmentDirectional.bottomCenter,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text("New Collection",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.black),),
                                  RaisedButton(
                                    onPressed: (){},
                                    child: Text("Book Now"),
                                  )
                                ],
                              )
                            );
                          },
                        ),
                      ),
                      Divider(thickness: 1.5,color: Colors.grey,indent: 15,endIndent: 15,),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("New Product"),
                            Text("See All"),
                          ],
                        ),
                      ),
                      Divider(thickness: 1.5,color: Colors.grey,indent: 15,endIndent: 15,),
                      Container(
                        width: MediaQuery.of(context).size.width,height: 200,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            padding: EdgeInsets.symmetric(horizontal: 8,vertical: 10),
                            itemCount: _mobile.length,
                            itemBuilder: (context, index){
                              return InkWell(
                                onTap: (){
                                  setState(() {
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Details_4(_mobile[index],"Mobile Earphone","450")));
                                  });
                                },
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      height: 135,width:150,
                                      margin: EdgeInsets.only(left: 10),
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(_mobile[index]),
                                              fit: BoxFit.fill
                                          ),
                                          borderRadius: BorderRadius.all(Radius.circular(10))
                                      ),
                                    ),
                                    SizedBox(height: 5,),
                                    Text("Mobile Earphone",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18,color: Colors.indigo),),
                                    SizedBox(height: 2,),
                                    Text("Rs.450/-",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15,color: Colors.black),),
                                  ],
                                ),
                              );
                            }
                        ),
                      ),

                      Divider(thickness: 1.5,color: Colors.grey,indent: 15,endIndent: 15,),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("Best Product"),
                            Text("See All"),
                          ],
                        ),
                      ),
                      Divider(thickness: 1.5,color: Colors.grey,indent: 15,endIndent: 15,),
                      Container(
                        width: MediaQuery.of(context).size.width,height: 200,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            padding: EdgeInsets.symmetric(horizontal: 8,vertical: 10),
                            itemCount: _laptop.length,
                            itemBuilder: (context, index){
                              return InkWell(
                                onTap: (){
                                  setState(() {
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Details_4(_laptop[index],"Laptop Earphone","1225")));
                                  });
                                },
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      height: 135,width:150,
                                      margin: EdgeInsets.only(left: 10),
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(_laptop[index]),
                                              fit: BoxFit.fill
                                          ),
                                          borderRadius: BorderRadius.all(Radius.circular(10))
                                      ),
                                    ),
                                    SizedBox(height: 5,),
                                    Text("Laptop Earphone",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18,color: Colors.indigo),),
                                    SizedBox(height: 2,),
                                    Text("Rs.1225/-",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15,color: Colors.black),),
                                  ],
                                ),
                              );
                            }
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}



// Details_4.dart
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
            Text("Rs.widget.price/-",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,color: Colors.white),),
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
