import 'package:creativedesign/Pages/creative_design.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Food_4 extends StatefulWidget {
  @override
  _Food_4State createState() => _Food_4State();
}

class _Food_4State extends State<Food_4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: Container(
          color: Colors.red,
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
                            image: NetworkImage("https://images.unsplash.com/photo-1560963805-6c64417e3413?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1021&q=80"),
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
                      title: Text("Food Zone",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                      subtitle: Row(
                        children: <Widget>[
                          Text("Price : Rs.350/-     ",overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                          Text("Rs.550/-",overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,decoration: TextDecoration.lineThrough),),
                        ],
                      ),
                      trailing: RaisedButton(
                        onPressed: (){},
                        elevation: 5.5,
                        child: Text("Add To Cart"),
                      )
                      // IconButton(
                      //   onPressed: (){},
                      //   icon: Icon(Icons.favorite_border,size: 25,color: Colors.black,),
                      // ),
                    ),
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
                                Image.network("https://images.unsplash.com/photo-1476224203421-9ac39bcb3327?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80",height: MediaQuery.of(context).size.height-560,width:MediaQuery.of(context).size.width,fit: BoxFit.cover,),
                                Text("Vegatable",style:TextStyle(fontSize: 15,color: Colors.black)),
                              ],
                            )
                        ),
                      );
                    }
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
      ),
    );
  }
}
