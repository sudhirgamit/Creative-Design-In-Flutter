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
                            child: Text("Rs.${total}/-",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),)
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
                        Text("Quatity : ${count}",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),)
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
