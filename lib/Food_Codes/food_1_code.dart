import 'package:creativedesign/Pages/creative_design.dart';
import 'package:flutter/material.dart';
import 'package:widget_with_codeview/syntax_highlighter.dart';

class Food_1_Code extends StatelessWidget {
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
        title: Text("Food 1",style: TextStyle(color: Colors.black),),
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
import 'package:creativedesign/Pages/creative_design.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Food_1 extends StatefulWidget {
  @override
  _Food_1State createState() => _Food_1State();
}
class _Food_1State extends State<Food_1> {
  final items = <String>['Fruit','Slat','Vegatable','Non-Vegetable'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: <Widget>[
                Container(
                  height: 250,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage("https://images.unsplash.com/photo-1476224203421-9ac39bcb3327?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80"),
                          fit: BoxFit.cover
                      )
                  ),
                  child: SafeArea(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            IconButton(
                              onPressed: (){
                                setState(() {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Creative_Design()));
                                });
                              },
                              icon: Icon(Icons.arrow_back_ios,color: Colors.white,size: 22,),
                            ),
                            Text("Back",style: TextStyle(fontSize: 20,color: Colors.white),)
                          ],
                        ),
                        IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.favorite_border,color: Colors.white,size: 22,),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width-30,
                  height: 80,
                  alignment: AlignmentDirectional.center,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10))
                  ),
                  child: ListTile(
                    onTap: (){},
                    leading: CircleAvatar(maxRadius: 25,backgroundImage:NetworkImage("https://images.unsplash.com/photo-1476224203421-9ac39bcb3327?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80")),
                    title: Text("Food Zone",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                    subtitle: Text("This is good quality of product.",overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                    trailing: IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.add,size: 25,color: Colors.black,),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Card(
              elevation: 5,margin: EdgeInsets.only(left: 15,right:15),
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Vegatable",style:TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w500)),
                    Text("See All")
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: ListView.builder(
                  padding: EdgeInsets.only(left: 5),
                  itemCount: 10, scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index){
                    return Container(
                      padding: EdgeInsets.all(10),
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(5))
                          ),
                          width: 120,alignment: AlignmentDirectional.center,
                          child: Column(
                            children: <Widget>[
                              Image.network("https://images.unsplash.com/photo-1560963805-6c64417e3413?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1021&q=80",height: MediaQuery.of(context).size.height-560,width:MediaQuery.of(context).size.width,fit: BoxFit.cover,),
                              Text("Vegatable",style:TextStyle(fontSize: 15,color: Colors.black)),
                            ],
                          )
                      ),
                    );
                  }
              ),
            ),
            Card(
              elevation: 5,margin: EdgeInsets.only(left: 15,right:15),
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Non Vegatable",style:TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w500)),
                    Text("See All")
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: ListView.builder(
                  padding: EdgeInsets.only(left: 5),
                  itemCount: 10, scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index){
                    return Container(
                      padding: EdgeInsets.all(10),
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(5))
                          ),
                          width: 120,alignment: AlignmentDirectional.center,
                          child: Column(
                            children: <Widget>[
                              Image.network("https://images.unsplash.com/photo-1559847844-5315695dadae?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1040&q=80",height: MediaQuery.of(context).size.height-560,width:MediaQuery.of(context).size.width,fit: BoxFit.cover,),
                              Text("Non Vegatable",style:TextStyle(fontSize: 15,color: Colors.black)),
                            ],
                          )
                      ),
                    );
                  }
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: _bottomItem,
        backgroundColor: Colors.red,
        currentIndex: 1,
        elevation: 5.0,fixedColor: Colors.black,showSelectedLabels: true,
      ),
    );
  }
  final _bottomItem  = <BottomNavigationBarItem>[
    BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.white,),title: Text("Home",style: TextStyle(color: Colors.white),)),
    BottomNavigationBarItem(icon: Icon(Icons.security,color: Colors.black),title: Text("Product",style: TextStyle(color: Colors.black),)),
    BottomNavigationBarItem(icon: Icon(Icons.store,color: Colors.white),title: Text("Booking",style: TextStyle(color: Colors.white),)),
   ];
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
