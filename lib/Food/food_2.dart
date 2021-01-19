import 'package:flutter/material.dart';
import 'package:masonry_grid/masonry_grid.dart';

class Food_2 extends StatefulWidget {
  @override
  _Food_2State createState() => _Food_2State();
}
class _Food_2State extends State<Food_2> {
  String checkname="";
  TextEditingController _name = new TextEditingController();
  bool _namevalid = true;
  _namevalidation(String val){
    _namevalid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9]+").hasMatch(val);
  }
  final List<String> _images = <String> [
    "https://images.unsplash.com/photo-1584269600464-37b1b58a9fe7?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1051&q=80",
    "https://images.unsplash.com/photo-1607492701914-4b00ed15ec94?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80",
    "https://images.unsplash.com/photo-1513442542250-854d436a73f2?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=858&q=80",
    "https://images.unsplash.com/photo-1525351484163-7529414344d8?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
    "https://images.unsplash.com/photo-1524182732116-a3ad2034503c?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80",
    "https://images.unsplash.com/photo-1467453678174-768ec283a940?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1028&q=80"
  ];

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.category,color: Colors.white,),
          onPressed: (){
            setState(() {
              Navigator.pop(context);
            });
          },
        ),
        actions: <Widget>[
          CircleAvatar(
            backgroundColor: Colors.white12,foregroundColor: Colors.white,
            child: IconButton(
              icon: Icon(Icons.perm_identity),
              onPressed: (){},
            ),
          ),
          SizedBox(width: 15,),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 18,vertical: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Enjoy Your Meal With",style: TextStyle(fontWeight: FontWeight.w300,color: Colors.white,fontSize: 16),),
              SizedBox(height: 2,),
              Text("Your Favourite Food",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.white,fontSize: 22,fontStyle: FontStyle.italic),),
              SizedBox(height: 10,),
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
                    hintStyle: TextStyle(color: Colors.white,fontSize: 18),
                    prefixIcon: Icon(Icons.search,color: Colors.white,),
                    //errorText: _namevalid!=true ? "Try To Search" : "",
                    border: OutlineInputBorder(),
                    errorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white,width: 1.5,style: BorderStyle.solid)
                    ),
                    focusedErrorBorder: _namevalid!=true ?
                    UnderlineInputBorder(borderSide: BorderSide(color: Colors.red,width: 1.5,style: BorderStyle.solid)):
                    UnderlineInputBorder(borderSide: BorderSide(color: Colors.white,width: 1.5,style: BorderStyle.solid))
                ),
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,fontWeight: FontWeight.w700,height: 1,
                ),
              ),
              SizedBox(height: 5,),
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
                                color: Colors.white,
                                image: DecorationImage(
                                    image: NetworkImage(_images[index]),
                                    fit: BoxFit.cover
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text("Foods",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15,color: Colors.white),),
                        ],
                      );
                    }
                ),
              ),

              Container(
                //padding: EdgeInsets.only(left: 5,right: 5,top: 10),
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
    );
  }
}
