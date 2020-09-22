import 'package:creativedesign/Plugins/carousel_sliders.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:widget_with_codeview/syntax_highlighter.dart';

class Carousel_Sliders_Code extends StatelessWidget {
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
        title: Text("Carousel Slider",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Carousel_Sliders()));
          },
          icon: Icon(Icons.arrow_back_ios,size: 20,color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){
              launch("https://github.com/sudhirgamit/Creative-Design-In-Flutter/blob/master/lib/Plugins/carousel_sliders.dart");
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
              style: TextStyle(fontFamily: 'monospace', fontSize: 12.0,decoration: TextDecoration.none,fontWeight: FontWeight.w500)
                  .apply(fontSizeFactor: 1.1),
              children: <TextSpan>[
                DartSyntaxHighlighter(style).format("""
import 'package:carousel_slider/carousel_slider.dart';
import 'package:creativedesign/Pages/advance.dart';
import 'package:creativedesign/Plugins_Codes/carousel_sliders_code.dart';
import 'package:flutter/material.dart';

class Carousel_Sliders extends StatefulWidget {
  @override
  _Carousel_SlidersState createState() => _Carousel_SlidersState();
}
class _Carousel_SlidersState extends State<Carousel_Sliders> {
  final List<String> _images = <String> [
    "https://images.unsplash.com/photo-1600103698130-f70ace056ac2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=891&q=80",
    "https://images.unsplash.com/1/irish-hands.jpg?ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80",
    "https://images.unsplash.com/photo-1497171156029-51dfc973e5f9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
    "https://images.unsplash.com/photo-1550778323-71868c7dea39?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
    "https://images.unsplash.com/photo-1599953454277-fd24c266b04a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=837&q=80",
    "https://images.unsplash.com/photo-1597954211063-daaa715c72cf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Carousel Slider",style: TextStyle(color: Colors.black),),
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Carousel_Sliders_Code()));
            },
            icon: Icon(Icons.transfer_within_a_station,size: 25,color: Colors.black,),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            CarouselSlider(
              options: CarouselOptions(
                  autoPlay: true,
                  height: 200,
                  autoPlayAnimationDuration: Duration(seconds: 3),
                  pauseAutoPlayOnTouch: true,
                  initialPage: 4,
                  pauseAutoPlayOnManualNavigate: true,
                  autoPlayCurve: Curves.linear,
                  scrollDirection: Axis.horizontal
              ),
              items: _images.map((i){
                return Builder(
                  builder: (BuildContext context){
                    return Container(
                      height: 200,
                      margin: EdgeInsets.all(10),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.lightGreen,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          image: DecorationImage(
                              image: NetworkImage(i),
                              fit: BoxFit.cover
                          ),
                          boxShadow: [BoxShadow(
                              color: Colors.grey,
                              blurRadius: 7,spreadRadius: 1.5
                          )]
                      ),
                      alignment: AlignmentDirectional.bottomCenter,
                      child: Container(
                          height: 20,width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Colors.white38,
                            borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10)),
                          ),
                          alignment: AlignmentDirectional.center,
                          child: Text(
                            "Some Images", style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w700),
                          )
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            Divider(thickness: 1.5,indent: 10,endIndent: 10,color: Colors.teal,),
            CarouselSlider.builder(
              options: CarouselOptions(
                autoPlay: true,
                height: 200,
                autoPlayAnimationDuration: Duration(seconds: 3),
                pauseAutoPlayOnTouch: true,
                initialPage: 3,
                pauseAutoPlayOnManualNavigate: true,
                autoPlayCurve: Curves.bounceInOut,
                scrollDirection: Axis.horizontal,
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
                );
              },
            ),
            Divider(thickness: 1.5,indent: 10,endIndent: 10,color: Colors.teal,),
            CarouselSlider.builder(
              options: CarouselOptions(
                  autoPlay: true,
                  height: 200,
                  autoPlayAnimationDuration: Duration(seconds: 3),
                  pauseAutoPlayOnTouch: true,
                  initialPage: 0,
                  pauseAutoPlayOnManualNavigate: true,
                  autoPlayCurve: Curves.easeInBack,
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
                  alignment: AlignmentDirectional.bottomCenter,
                  child: Container(
                      height: 20,width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.lightGreen,
                          borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10)),
                      ),
                      alignment: AlignmentDirectional.center,
                      child: Text(
                        "No. Image", style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w700), // Index number to used
                      )
                  ),
                );
              },
            ),
            Divider(thickness: 1.5,indent: 10,endIndent: 10,color: Colors.teal,),
            CarouselSlider(
              options: CarouselOptions(
                  autoPlay: true,
                  height: 200,
                  autoPlayAnimationDuration: Duration(seconds: 3),
                  pauseAutoPlayOnTouch: true,
                  initialPage: 4,
                  pauseAutoPlayOnManualNavigate: true,
                  autoPlayCurve: Curves.linear,
                  scrollDirection: Axis.vertical
              ),
              items: _images.map((i){
                return Builder(
                  builder: (BuildContext context){
                    return Container(
                      height: 200,
                      margin: EdgeInsets.all(10),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.lightGreen,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          image: DecorationImage(
                              image: NetworkImage(i),
                              fit: BoxFit.cover
                          ),
                          boxShadow: [BoxShadow(
                              color: Colors.grey,
                              blurRadius: 7,spreadRadius: 1.5
                          )]
                      ),
                      alignment: AlignmentDirectional.center,
                      child: Container(
                          height: 200,width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Colors.white38,
                            borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10)),
                          ),
                          alignment: AlignmentDirectional.center,
                          child: Container(
                              height: 200,width: MediaQuery.of(context).size.width-100,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(i),
                                    fit: BoxFit.cover
                                ),
                              ),
                          ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            Divider(thickness: 1.5,indent: 10,endIndent: 10,color: Colors.teal,),
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
                );
              },
            ),
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
