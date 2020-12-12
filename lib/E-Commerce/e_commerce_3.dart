import 'package:carousel_slider/carousel_slider.dart';
import 'package:creativedesign/E-Commerce/details_3.dart';
import 'package:flutter/material.dart';

class E_Commerce_3 extends StatefulWidget {
  @override
  _E_Commerce_3State createState() => _E_Commerce_3State();
}
class _E_Commerce_3State extends State<E_Commerce_3> {
  String checkname="";
  TextEditingController _name = new TextEditingController();
  bool _namevalid = true;
  _namevalidation(String val){
    _namevalid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9]+").hasMatch(val);
    //print(_namevalid);
  }
  final List<String> _images = <String> [
    "https://images.unsplash.com/photo-1512790182412-b19e6d62bc39?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1189&q=80",
    "https://images.unsplash.com/photo-1488684430052-f2d92fb178c2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1052&q=80",
    "https://images.unsplash.com/photo-1519638831568-d9897f54ed69?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
    "https://images.unsplash.com/flagged/photo-1550255120-9b2a9de58dfd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1051&q=80",
    "https://images.unsplash.com/photo-1519183071298-a2962feb14f4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
    "https://images.unsplash.com/photo-1566338185621-4fa7376c7483?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.bubble_chart),
        ),
        title: Text("Camera",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600),),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.notifications_active),
          ),
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.local_grocery_store),
          )
        ],
      ),
      body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: <Widget>[
                TextField(
                  onChanged: (String value){
                    setState(() {
                      _namevalidation(value);
                      checkname=value;
                    });
                  },
                  controller: _name,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      hintText: "Search",
                      hintStyle: TextStyle(color: Colors.grey,fontSize: 18),
                      prefixIcon: Icon(Icons.search,color: Colors.grey,),
                      //errorText: _namevalid!=true ? "Try To Search" : "",
                      border: OutlineInputBorder(),
                      errorBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey,width: 1.5,style: BorderStyle.solid)
                      ),
                      focusedErrorBorder: _namevalid!=true ?
                      UnderlineInputBorder(borderSide: BorderSide(color: Colors.red,width: 1.5,style: BorderStyle.solid)):
                      UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey,width: 1.5,style: BorderStyle.solid))
                  ),
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,fontWeight: FontWeight.w700,height: 1
                  ),
                ),
                SizedBox(height: 10,),
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
                      margin: EdgeInsets.all(10),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.lightGreen,
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
                      alignment: AlignmentDirectional.centerEnd,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text("New Collection",
                            style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20,color: Colors.white),
                          ),
                          RaisedButton(
                            onPressed: (){},
                            child: Text("Shop Now",style: TextStyle(fontSize: 16),),
                          )
                        ],
                      ),
                    );
                  },
                ),
                SizedBox(height: 10,),
                Card(
                  elevation: 5,
                  child: Container(
                    height: 50,padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("New Collection",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                        Text("All List",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: Colors.lightGreen),)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Details_3("https://images.unsplash.com/photo-1491796014055-e6835cdcd4c6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=712&q=80")));
                          });
                        },
                        child: Container(
                          height: 250,
                          decoration: BoxDecoration(
                              color: Colors.black12,
                              image: DecorationImage(
                                  image: NetworkImage("https://images.unsplash.com/photo-1491796014055-e6835cdcd4c6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=712&q=80"),
                                  fit: BoxFit.cover
                              ),
                              border: Border.all(width: 2.5,color: Colors.white24)
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 5,),
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: <Widget>[
                          InkWell(
                            onTap: (){
                              setState(() {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Details_3("https://images.unsplash.com/photo-1494168684379-764b46e4be02?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1029&q=80")));
                              });
                            },
                            child: Container(
                              height: 122.5,
                              decoration: BoxDecoration(
                                  color: Colors.black12,
                                  image: DecorationImage(
                                      image: NetworkImage("https://images.unsplash.com/photo-1494168684379-764b46e4be02?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1029&q=80"),
                                      fit: BoxFit.cover
                                  ),
                                  border: Border.all(width: 2.5,color: Colors.white24)
                              ),
                            ),
                          ),
                          SizedBox(height: 5,),
                          InkWell(
                            onTap: (){
                              setState(() {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Details_3("https://images.unsplash.com/photo-1508061562735-7b4dabf32202?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1189&q=80")));
                              });
                            },
                            child: Container(
                              height: 122.5,
                              decoration: BoxDecoration(
                                  color: Colors.black12,
                                  image: DecorationImage(
                                      image: NetworkImage("https://images.unsplash.com/photo-1508061562735-7b4dabf32202?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1189&q=80"),
                                      fit: BoxFit.cover
                                  ),
                                  border: Border.all(width: 2.5,color: Colors.white24)
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Card(
                  elevation: 5,
                  child: Container(
                    height: 50,padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Best Collection",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                        Text("All List",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: Colors.lightGreen),)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: <Widget>[
                          InkWell(
                            onTap: (){
                              setState(() {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Details_3("https://images.unsplash.com/photo-1508164788848-a291ec57303f?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=967&q=80")));
                              });
                            },
                            child: Container(
                              height: 122.5,
                              decoration: BoxDecoration(
                                  color: Colors.black12,
                                  image: DecorationImage(
                                      image: NetworkImage("https://images.unsplash.com/photo-1508164788848-a291ec57303f?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=967&q=80"),
                                      fit: BoxFit.cover
                                  ),
                                  border: Border.all(width: 2.5,color: Colors.white24)
                              ),
                            ),
                          ),
                          SizedBox(height: 5,),
                          InkWell(
                            onTap: (){
                              setState(() {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Details_3("https://images.unsplash.com/photo-1516867416262-186ad1339387?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80")));
                              });
                            },
                            child: Container(
                              height: 122.5,
                              decoration: BoxDecoration(
                                  color: Colors.black12,
                                  image: DecorationImage(
                                      image: NetworkImage("https://images.unsplash.com/photo-1516867416262-186ad1339387?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80"),
                                      fit: BoxFit.cover
                                  ),
                                  border: Border.all(width: 2.5,color: Colors.white24)
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 5,),
                    Expanded(
                      flex: 1,
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Details_3("https://images.unsplash.com/photo-1507805356501-c34e93a5fd52?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80")));
                          });
                        },
                        child: Container(
                          height: 250,
                          decoration: BoxDecoration(
                              color: Colors.black12,
                              image: DecorationImage(
                                  image: NetworkImage("https://images.unsplash.com/photo-1507805356501-c34e93a5fd52?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80"),
                                  fit: BoxFit.cover
                              ),
                              border: Border.all(width: 2.5,color: Colors.white24)
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
      ),

    );
  }
}
