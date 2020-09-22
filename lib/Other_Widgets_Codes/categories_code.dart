import 'package:creativedesign/Other_Widgets/categories.dart';
import 'package:flutter/material.dart';
import 'package:widget_with_codeview/syntax_highlighter.dart';

class Categories_Code extends StatelessWidget {
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
        title: Text("Categories",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Categories()));
          },
          icon: Icon(Icons.arrow_back_ios,size: 20,color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){
              //launch("https://github.com/sudhirgamit/Creative-Design-In-Flutter/blob/master/lib/Navigation/bottom_navigation.dart");
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
import 'package:creativedesign/Other_Widgets_Codes/categories_code.dart';
import 'package:creativedesign/Pages/advance.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}
class _CategoriesState extends State<Categories> {
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
        title: Text("Categories",style: TextStyle(color: Colors.black),),
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Categories_Code()));
            },
            icon: Icon(Icons.transfer_within_a_station,size: 25,color: Colors.black),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,height: 90,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(top: 10,bottom: 10),
                  itemCount: _images.length,
                  itemBuilder: (context, index){
                    return Container(
                      height: 100,width:70,
                      margin: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(_images[index]),
                          fit: BoxFit.cover
                        ),
                        shape: BoxShape.circle
                      ),
                    );
                  }
              ),
            ),
            Divider(color: Colors.lightBlueAccent,thickness: 1.5,),
            Container(
              width: MediaQuery.of(context).size.width,height: 90,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(top: 10,bottom: 10),
                  itemCount: _images.length,
                  itemBuilder: (context, index){
                    return Container(
                      height: 100,width:70,
                      margin: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(_images[index]),
                              fit: BoxFit.cover
                          ),
                          shape: BoxShape.circle
                      ),
                      alignment: AlignmentDirectional.bottomCenter,
                      child: Text("Circle",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15,color: Colors.white),),
                    );
                  }
              ),
            ),
            Divider(color: Colors.lightGreen,thickness: 1.5,),
            Container(
              width: MediaQuery.of(context).size.width,height: 120,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(top: 10,bottom: 10),
                  itemCount: _images.length,
                  itemBuilder: (context, index){
                    return Column(
                      children: <Widget>[
                        Container(
                          height: 70,width:70,
                          margin: EdgeInsets.only(left: 10),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(_images[index]),
                                  fit: BoxFit.cover
                              ),
                              shape: BoxShape.circle
                          ),
                         ),
                        SizedBox(height: 5,),
                        Text("Circle",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15,color: Colors.indigo),),
                      ],
                    );
                  }
              ),
            ),
            Divider(color: Colors.orange,thickness: 1.5,),
            Container(
              width: MediaQuery.of(context).size.width,height: 90,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(top: 10,bottom: 10),
                  itemCount: _images.length,
                  itemBuilder: (context, index){
                    return Container(
                      height: 100,width:70,
                      margin: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(_images[index]),
                              fit: BoxFit.cover
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                    );
                  }
              ),
            ),
            Divider(color: Colors.lightBlueAccent,thickness: 1.5,),
            Container(
              width: MediaQuery.of(context).size.width,height: 90,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(top: 10,bottom: 10),
                  itemCount: _images.length,
                  itemBuilder: (context, index){
                    return Container(
                      height: 100,width:70,
                      margin: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(_images[index]),
                              fit: BoxFit.cover
                          ),
                        borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      alignment: AlignmentDirectional.bottomCenter,
                      child: Text("Rectangle",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15,color: Colors.white),),
                    );
                  }
              ),
            ),
            Divider(color: Colors.green,thickness: 1.5,),
            Container(
              width: MediaQuery.of(context).size.width,height: 120,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(top: 10,bottom: 10),
                  itemCount: _images.length,
                  itemBuilder: (context, index){
                    return Column(
                      children: <Widget>[
                        Container(
                          height: 70,width:70,
                          margin: EdgeInsets.only(left: 10),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(_images[index]),
                                  fit: BoxFit.cover
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text("Rectangle",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15,color: Colors.indigo),),
                      ],
                    );
                  }
              ),
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
