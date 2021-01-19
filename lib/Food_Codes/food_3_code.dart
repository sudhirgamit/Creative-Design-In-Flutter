import 'package:creativedesign/Pages/creative_design.dart';
import 'package:flutter/material.dart';
import 'package:widget_with_codeview/syntax_highlighter.dart';

class Food_3_Code extends StatelessWidget {
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
        title: Text("Food 3",style: TextStyle(color: Colors.black),),
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
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:masonry_grid/masonry_grid.dart';

class Food_3 extends StatefulWidget {
  @override
  _Food_3State createState() => _Food_3State();
}
class _Food_3State extends State<Food_3> {
  final List<String> _images1 = <String> [
    "https://images.unsplash.com/photo-1478144592103-25e218a04891?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=968&q=80",
    "https://images.unsplash.com/photo-1491435154725-690cead8920e?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1006&q=80",
    "https://images.unsplash.com/photo-1578743806657-72e7994c18da?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80",
    "https://images.unsplash.com/photo-1459789034005-ba29c5783491?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=850&q=80",
    "https://images.unsplash.com/photo-1525351326368-efbb5cb6814d?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=800&q=80",
    "https://images.unsplash.com/photo-1524182576066-1bb979e25342?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1050&q=80",
    "https://images.unsplash.com/photo-1527515862127-a4fc05baf7a5?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80",
    "https://images.unsplash.com/photo-1438401817917-ee9dc33fe6af?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=969&q=80",
  ];
  int count=1; int total;int price;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SingleChildScrollView(
        child: SafeArea(
          top: false,
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(top: 20),
                      child: IconButton(
                        onPressed: (){
                          setState(() {
                            Navigator.pop(context);
                          });
                        },
                        icon: Icon(Icons.arrow_back_ios,color: Colors.white,size: 22,),
                      ),
                    ),
                    Container(
                      width: 250,height: 220,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(100),bottomLeft: Radius.circular(100),bottomRight: Radius.circular(100)),
                        //shape: BoxShape.circle,
                        image: DecorationImage(
                          image: NetworkImage("https://images.unsplash.com/photo-1478144592103-25e218a04891?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=968&q=80"),
                          fit: BoxFit.cover
                        )
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(left: 20,top: 15),
                      alignment: AlignmentDirectional.topStart,
                      child: Text("Breakfast Food",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 22),),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 20,top: 15),
                      alignment: AlignmentDirectional.topStart,
                      child: RichText(
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(text: "Rs.430/-",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 15,decoration: TextDecoration.lineThrough),),
                              TextSpan(text: "   Rs.230/-",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 15),)
                            ]
                          ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(padding: EdgeInsets.only(left: 20,top: 15),child: Icon(Icons.star,color: Colors.white,size: 20,)),
                    Container(
                      padding: EdgeInsets.only(left: 8,top: 15),
                      alignment: AlignmentDirectional.topStart,
                      child: Text("4.3",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 20),),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(left: 20,top: 15),
                  alignment: AlignmentDirectional.topStart,
                  child: Text("Description",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 22),),
                ),
                Container(
                  padding: EdgeInsets.only(left: 20,top: 8,right: 20),
                  alignment: AlignmentDirectional.topStart,
                  child: Text("Having breakfast in the morning is the best for your health in so many ways. Morning breakfast gives you an extra boost of energy and saves you from being a lazy slave. Breakfast is not only energy supplier but also have many health benefits. Following breakfast routine for a longer time can help you in weight loss and save from diseases like diabetes and high blood pressure. Have you heard the well-known phrase",textAlign: TextAlign.justify,overflow: TextOverflow.ellipsis,maxLines: 5,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300,fontSize: 18,fontStyle: FontStyle.italic),),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(left: 15,right: 15,top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          CircleAvatar(
                            backgroundColor: Colors.green,
                            child: IconButton(
                              onPressed: (){
                                setState(() {
                                  count +=1;
                                  //total = price * count;
                                });
                              },
                              icon: Icon(Icons.add),
                            ),
                          ),
                          SizedBox(width: 20,),
                          Text(count.toString(),style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color:   Colors.white ),),
                          SizedBox(width: 20,),
                          CircleAvatar(
                            backgroundColor: Colors.red,
                            child: IconButton(
                              onPressed: (){
                                setState(() {
                                  if(count<=1){
                                    return;
                                  }else{
                                    count -=1;
                                    //total = price * count;
                                  }
                                });
                              },
                              icon: Icon(Icons.remove),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 15,right: 15,top: 10),
                      child: RaisedButton(
                        onPressed: (){},
                        child: Text("ADD TO CARD"),
                        elevation: 5,
                        padding: EdgeInsets.symmetric(horizontal: 35),
                        color: Colors.yellowAccent,
                      ),
                    ),
                  ],
                ),

                Container(
                  padding: EdgeInsets.only(left: 15,right: 15,top: 10),
                  width: MediaQuery.of(context).size.width,
                  child: MasonryGrid(
                      column: 2,staggered: true,crossAxisSpacing: 3,mainAxisSpacing: 8,crossAxisAlignment: CrossAxisAlignment.center,
                      children: List.generate(_images1.length, (i)=> Card(
                        elevation: 5.0,color: Colors.white12,
                        child: Container(
                          height: 200,width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.only(top: 15),
                          decoration: BoxDecoration(
                              color: Colors.black12,
                              border: Border.all(width: 2.5,color: Colors.white12)
                          ),
                          child: Column(
                            children: <Widget>[
                              CircleAvatar(
                                backgroundImage: NetworkImage(_images1[i]),
                                maxRadius: 50,
                              ),
                              SizedBox(height: 20,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Text("Dawat Rise",style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w500),),
                                  Text("Rs.450/-",style: TextStyle(fontSize: 14,color: Colors.white,fontWeight: FontWeight.w300)),
                                ],
                              ),
                              SizedBox(height: 10,),
                              Container(
                                  alignment: AlignmentDirectional.topStart,
                                  padding: EdgeInsets.only(left: 9),
                                  child: Text("12% offer",style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w500),)
                              ),
                            ],
                          ),
                        ),
                      )
                      ).toList()
                  ),
                ),
              ],
            ),
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
