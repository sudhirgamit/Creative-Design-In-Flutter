import 'package:creativedesign/Other_Widgets_Codes/stepers_code.dart';
import 'package:creativedesign/Pages/advance.dart';
import 'package:flutter/material.dart';

class Stepers extends StatefulWidget {
  @override
  _StepersState createState() => _StepersState();
}
class _StepersState extends State<Stepers> {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  int _currentstep = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Steper",style: TextStyle(color: Colors.black),),
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Stepers_Code()));
            },
            icon: Icon(Icons.transfer_within_a_station,size: 25,color: Colors.black),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Stepper(
          currentStep: _currentstep,
          onStepContinue: (){
            if(_currentstep >= 5){
              return;
            }
            setState(() {
              _currentstep +=1;
            });
          },
          onStepCancel: (){
            if(_currentstep <= 0){
              return;
            }
            setState(() {
              _currentstep -=1;
            });
          },
          steps: <Step>[
            Step(
                title: Text("Step 1"),
                content: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("https://images.unsplash.com/photo-1600103698130-f70ace056ac2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=891&q=80"),
                      fit: BoxFit.cover
                    )
                  ),
                  child: Center(child: Text("Nature",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w700),)),
                )
            ),
            Step(
                title: Text("Step 2"),
                content: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage("https://images.unsplash.com/1/irish-hands.jpg?ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80"),
                        fit: BoxFit.cover
                      )
                  ),
                  child: Center(child: Text("Home Work",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w700),)),
                )
            ),
            Step(
                title: Text("Step 3"),
                content: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage("https://images.unsplash.com/photo-1497171156029-51dfc973e5f9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80"),
                        fit: BoxFit.cover
                      )
                  ),
                  child: Center(child: Text("Technology",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w700),)),
                )
            ),
            Step(
                title: Text("Step 4"),
                content: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage("https://images.unsplash.com/photo-1550778323-71868c7dea39?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80"),
                        fit: BoxFit.cover
                      )
                  ),
                  child: Center(child: Text("Wallpapers",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w700),)),
                )
            ),
            Step(
                title: Text("Step 5"),
                content: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage("https://images.unsplash.com/photo-1599953454277-fd24c266b04a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=837&q=80"),
                        fit: BoxFit.cover
                      )
                  ),
                  child: Center(child: Text("Travel",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w700),)),
                )
            ),
            Step(
                title: Text("Step 6"),
                content: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage("https://images.unsplash.com/photo-1597954211063-daaa715c72cf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80"),
                        fit: BoxFit.cover
                      )
                  ),
                  child: Center(child: Text("Events",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w700),)),
                )
            ),
          ]
      ),
    );
  }
}
