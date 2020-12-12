import 'package:creativedesign/Pages/creative_design.dart';
import 'package:flutter/material.dart';
import 'package:widget_with_codeview/syntax_highlighter.dart';

class E_Commerce_2_Code extends StatelessWidget {
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
        title: Text("E-Commerce 2",style: TextStyle(color: Colors.black),),
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
import 'package:creativedesign/E-Commerce/details_2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class E_Commerce_2 extends StatefulWidget {
  @override
  _E_Commerce_2State createState() => _E_Commerce_2State();
}
class _E_Commerce_2State extends State<E_Commerce_2> {
  String checkname="";
  TextEditingController _name = new TextEditingController();
  bool _namevalid = true;
  _namevalidation(String val){
    _namevalid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9]").hasMatch(val);
    //print(_namevalid);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.lightGreen,Colors.lightBlueAccent],
                begin: AlignmentDirectional.topStart,
                end: AlignmentDirectional.bottomCenter
              )
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(icon: Icon(Icons.scatter_plot,color: Colors.white,),onPressed: (){},),
                      CircleAvatar(
                        child: Icon(FontAwesomeIcons.female,color: Colors.white,),
                        backgroundColor: Colors.black54,
                      ),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width-90,
                        padding: EdgeInsets.only(left: 15),
                        child: TextField(
                          onChanged: (String value){
                            setState(() {
                              _namevalidation(value);
                              checkname=value;
                            });
                          },
                          controller: _name,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              hintText: "Search By Category",
                              hintStyle: TextStyle(color: Colors.white,fontSize: 18,),
                              suffixIcon:Icon(Icons.search,color: Colors.white,),fillColor: Colors.white,
                              border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                              focusedErrorBorder:
                              UnderlineInputBorder(borderSide: BorderSide(color: Colors.white,width: 1.5,style: BorderStyle.solid))
                          ),
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.blueGrey,width: 2),
                            borderRadius: BorderRadius.all(Radius.circular(20))
                          ),
                          child: IconButton(
                            icon: Icon(Icons.flip,color: Colors.white,),
                            onPressed: (){},
                          ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                          child: Text("New Collection",
                            style: TextStyle(fontSize: 30,color: Colors.white),
                          ),
                        padding: EdgeInsets.only(left: 15),
                      ),
                      Container(
                        child: IconButton(
                          icon: Icon(Icons.more_horiz,color: Colors.white,),
                          onPressed: (){},
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5,),
                  Flexible(
                    flex: 1,fit: FlexFit.tight,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                          height: 250,width: 250,margin: EdgeInsets.only(left: 15,),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://images.unsplash.com/photo-1586079615844-c0abfb04dc79?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80"),
                              fit: BoxFit.cover
                            ),
                            border: Border.all(color: Colors.white,width: 0.5),
                            borderRadius: BorderRadius.all(Radius.circular(20))
                          ),
                          alignment: AlignmentDirectional.bottomStart,padding: EdgeInsets.only(bottom: 15),
                          child: FlatButton(
                            onPressed: (){},
                            color: Colors.white54,
                            child: Text("For Girls"),
                          ),
                        ),
                        Container(
                          height: 280,width: 280,margin: EdgeInsets.only(left: 15,),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage("https://images.unsplash.com/photo-1594744802836-fad50e1bd603?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80"),
                                  fit: BoxFit.cover
                              ),
                              border: Border.all(color: Colors.white,width: 0.5),
                              borderRadius: BorderRadius.all(Radius.circular(20))
                          ),
                          alignment: AlignmentDirectional.bottomStart,padding: EdgeInsets.only(bottom: 15),
                          child: FlatButton(
                            onPressed: (){},
                            color: Colors.white54,
                            child: Text("For Girls"),
                          ),
                        ),
                        Container(
                          height: 280,width: 280,margin: EdgeInsets.only(left: 15,),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage("https://images.unsplash.com/photo-1582509042236-c522a937661e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80"),
                                  fit: BoxFit.cover
                              ),
                              border: Border.all(color: Colors.white,width: 0.5),
                              borderRadius: BorderRadius.all(Radius.circular(20))
                          ),
                          alignment: AlignmentDirectional.bottomStart,padding: EdgeInsets.only(bottom: 15),
                          child: FlatButton(
                            onPressed: (){},
                            color: Colors.white54,
                            child: Text("For Girls"),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Text("Best Seller",
                          style: TextStyle(fontSize: 30,color: Colors.white),
                        ),
                        padding: EdgeInsets.only(left: 15),
                      ),
                      Container(
                        child: IconButton(
                          icon: Icon(Icons.more_horiz,color: Colors.white,),
                          onPressed: (){},
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5,),
                  cardlist("Black Dress M1",1000,"https://images.unsplash.com/photo-1582509042236-c522a937661e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80"),
                  SizedBox(height: 5,),
                  cardlist("Black Dress M2",1200,"https://images.unsplash.com/photo-1594744802836-fad50e1bd603?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  Widget cardlist(String name,int price,String image){
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 15),
      elevation: 5.0,
      child: ListTile(
        onTap: (){
          setState(() {
            if(name=="Black Dress M1"){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Details_2(name,price,image)));
            }else if(name == "Black Dress M2"){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Details_2(name,price,image)));
            }
          });
        },
        leading: Image.network(image,fit: BoxFit.cover,height: 100,width: 100,),
        title: Text(name,style: TextStyle(fontSize: 18),),
        subtitle: Text("Price : Rs.price/-",style: TextStyle(fontSize: 14)),
        trailing: Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}



// Details_2.dart
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

class Details_2 extends StatefulWidget {
  String name1; int amount; String photo;
  Details_2(String name, int price, String image){
    name1 = name; amount = price; photo = image;
  }
  @override
  _Details_2State createState() => _Details_2State();
}
class _Details_2State extends State<Details_2> {
  int count = 1;
  bool like = false;
  @override
  Widget build(BuildContext context) {
    int total = widget.amount;
    int price = widget.amount;
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      body: Container(
        alignment: AlignmentDirectional.centerEnd,padding: EdgeInsets.only(top: 50),
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
            alignment: AlignmentDirectional.topCenter,
            width: 150,height: 220,
            decoration: BoxDecoration(
              color: Colors.white38,
              borderRadius: BorderRadius.all(Radius.circular(20))
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(widget.name1,style: TextStyle(fontSize: 20,color: widget.name1=="Black Dress M1"? Colors.white: Colors.black,fontWeight: FontWeight.w700),),
                SizedBox(height: 5,),
                Text("Price : Rs.total/-",style: TextStyle(fontSize: 16,color: widget.name1=="Black Dress M1"? Colors.white: Colors.black,fontWeight: FontWeight.w700),),
                SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                    Text(count.toString(),style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color:  widget.name1=="Black Dress M1"? Colors.white : Colors.black),),
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
                SizedBox(height: 5,),
                RaisedButton(
                  onPressed: (){},
                  elevation: 5.0,
                  child: Text("Add To Card",style: TextStyle(color: widget.name1=="Black Dress M1"? Colors.white: Colors.black,fontWeight: FontWeight.w700)),
                  color: Colors.lightGreen,
                ),
                Divider(color: Colors.black,thickness: 1.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.favorite_border,color: widget.name1=="Black Dress M1"? Colors.white : Colors.black ,),
                      onPressed: (){},
                    ),
                    IconButton(
                      icon: Icon(Icons.share,color: widget.name1=="Black Dress M1"? Colors.white : Colors.black ,),
                      onPressed: (){},
                    ),
                    IconButton(
                      icon: Icon(Icons.comment,color: widget.name1=="Black Dress M1"? Colors.white : Colors.black ,),
                      onPressed: (){},
                    ),
                  ],
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
