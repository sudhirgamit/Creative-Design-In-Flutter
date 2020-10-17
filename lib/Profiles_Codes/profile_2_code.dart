import 'package:creativedesign/Pages/creative_design.dart';
import 'package:flutter/material.dart';
import 'package:widget_with_codeview/syntax_highlighter.dart';

class Profile_2_Code extends StatelessWidget {
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
        title: Text("Profile 2",style: TextStyle(color: Colors.black),),
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
import 'package:creativedesign/Layouts/rows.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Profile_2 extends StatefulWidget {
  @override
  _Profile_2State createState() => _Profile_2State();
}
class _Profile_2State extends State<Profile_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Container(
          color: Colors.teal,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Flexible(
                flex: 1,fit: FlexFit.tight,
                child: Container(
                  color: Colors.black12,
                  padding: EdgeInsets.only(left: 20,right: 20,top: 10),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Profile",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.w700,fontFamily: "Aharoni"),),
                          Icon(Icons.filter_list,color: Colors.white,size: 25,)
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage: NetworkImage("https://images.unsplash.com/photo-1542103749-8ef59b94f47e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80"),
                            maxRadius: 35,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Dan Gamit",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white,fontSize: 20),),
                              Text("App UI Developer",style: TextStyle(fontWeight: FontWeight.w300,color: Colors.white70,fontSize: 16))
                            ],
                          ),
                          Icon(Icons.more_horiz,color: Colors.white,size: 25,)
                        ],
                      ),
                      SizedBox(height: 30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text("190",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white,fontSize: 20),),
                              Text("Followers",style: TextStyle(fontWeight: FontWeight.w300,color: Colors.white70,fontSize: 16))
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text("1032",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white,fontSize: 20),),
                              Text("Followings",style: TextStyle(fontWeight: FontWeight.w300,color: Colors.white70,fontSize: 16))
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text("121",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white,fontSize: 20),),
                              Text("Posts",style: TextStyle(fontWeight: FontWeight.w300,color: Colors.white70,fontSize: 16))
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Flexible(
                flex: 2,fit: FlexFit.tight,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Flexible(
                      fit: FlexFit.tight,flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white12)
                        ),
                        padding: EdgeInsets.only(left: 10,right: 20,top: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            RotatedBox(quarterTurns: 3,child: Text("Today",style: TextStyle(fontWeight: FontWeight.w300,color: Colors.white70,fontSize: 16))),
                            RotatedBox(quarterTurns: 3,child: Text("Yesterday",style: TextStyle(fontWeight: FontWeight.w300,color: Colors.white70,fontSize: 16))),
                            RotatedBox(quarterTurns: 3,child: Text("Most Popular",style: TextStyle(fontWeight: FontWeight.w300,color: Colors.white70,fontSize: 16))),
                            RotatedBox(quarterTurns: 3,child: Text("Most Liked",style: TextStyle(fontWeight: FontWeight.w300,color: Colors.white70,fontSize: 16))),
                            Icon(Icons.more_vert,color: Colors.white70,size: 25,)
                          ],
                        ),
                      ),
                    ),
                    Flexible(
                      fit: FlexFit.tight,flex: 3,
                      child: SingleChildScrollView(
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white12)
                          ),
                          padding: EdgeInsets.only(left: 20,right: 20,top: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Full HD Photography",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white,fontSize: 20),),
                              SizedBox(height: 10,),
                              Text("Choose from hundred of hd photography background and download of beautiful wallpapers.",textAlign: TextAlign.justify,style: TextStyle(fontWeight: FontWeight.w300,color: Colors.white70,fontSize: 16,letterSpacing: 0,wordSpacing: 0)),
                              SizedBox(height: 10,),
                              Row(
                                children: <Widget>[
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      height: 250,
                                      decoration: BoxDecoration(
                                        color: Colors.black12,
                                        image: DecorationImage(
                                          image: NetworkImage("https://images.unsplash.com/photo-1527610276295-f4c1b38decc5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
                                          fit: BoxFit.cover
                                        ),
                                        border: Border.all(width: 2.5,color: Colors.white24)
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Expanded(
                                    flex: 1,
                                    child: Column(
                                      children: <Widget>[
                                        Container(
                                          height: 122.5,
                                          decoration: BoxDecoration(
                                              color: Colors.black12,
                                              image: DecorationImage(
                                                  image: NetworkImage("https://images.unsplash.com/photo-1523906834658-6e24ef2386f9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
                                                  fit: BoxFit.cover
                                              ),
                                              border: Border.all(width: 2.5,color: Colors.white24)
                                          ),
                                        ),
                                        SizedBox(height: 5,),
                                        Container(
                                          height: 122.5,
                                          decoration: BoxDecoration(
                                              color: Colors.black12,
                                              image: DecorationImage(
                                                  image: NetworkImage("https://images.unsplash.com/photo-1520483601560-389dff434fdf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
                                                  fit: BoxFit.cover
                                              ),
                                              border: Border.all(width: 2.5,color: Colors.white24)
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 5,),
                              Row(
                                children: <Widget>[
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      height: 250,
                                      decoration: BoxDecoration(
                                          color: Colors.black12,
                                          image: DecorationImage(
                                              image: NetworkImage("https://images.unsplash.com/photo-1495344517868-8ebaf0a2044a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
                                              fit: BoxFit.cover
                                          ),
                                          border: Border.all(width: 2.5,color: Colors.white24)
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Expanded(
                                    flex: 1,
                                    child: Column(
                                      children: <Widget>[
                                        Container(
                                          height: 122.5,
                                          decoration: BoxDecoration(
                                              color: Colors.black12,
                                              image: DecorationImage(
                                                  image: NetworkImage("https://images.unsplash.com/photo-1495896138760-293144e6b1d9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
                                                  fit: BoxFit.cover
                                              ),
                                              border: Border.all(width: 2.5,color: Colors.white24)
                                          ),
                                        ),
                                        SizedBox(height: 5,),
                                        Container(
                                          height: 122.5,
                                          decoration: BoxDecoration(
                                              color: Colors.black12,
                                              image: DecorationImage(
                                                  image: NetworkImage("https://images.unsplash.com/photo-1465070845512-2b2dbdc6df66?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
                                                  fit: BoxFit.cover
                                              ),
                                              border: Border.all(width: 2.5,color: Colors.white24)
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
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
