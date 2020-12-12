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
        subtitle: Text("Price : Rs.${price}/-",style: TextStyle(fontSize: 14)),
        trailing: Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
