import 'package:creativedesign/Pages/homepage.dart';
import 'package:creativedesign/Navigation/dialog_box.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:widget_with_codeview/source_code_view.dart';
import 'package:widget_with_codeview/syntax_highlighter.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';

class Dialog_Code extends StatefulWidget {
  @override
  _Dialog_CodeState createState() => _Dialog_CodeState();
}

class _Dialog_CodeState extends State<Dialog_Code> {
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
        title: Text("Dialog",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Dialog_Box()));
          },
          icon: Icon(Icons.arrow_back_ios,size: 20,color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){
              launch("https://github.com/sudhirgamit/Creative-Design-In-Flutter/blob/master/lib/Navigation/dialog_box.dart");
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
import 'package:creativedesign/Navigation_Codes/dialog_code.dart';
import 'package:creativedesign/Pages/homepage.dart';
import 'package:flutter/material.dart';

class Dialog_Box extends StatefulWidget {
  @override
  _Dialog_BoxState createState() => _Dialog_BoxState();
}
class _Dialog_BoxState extends State<Dialog_Box> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text("Dialog"),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
          },
          icon: Icon(Icons.arrow_back_ios,size: 20,),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Dialog_Code()));
            },
            icon: Icon(Icons.transfer_within_a_station,size: 25,),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: Colors.black26,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Wrap(
                  spacing: 20,
                  children: <Widget>[
                    RaisedButton(
                      onPressed: (){
                        showDialog(
                          context: context,
                          builder: (BuildContext context)=> AlertDialog(
                            title: Text("Alert Gialog Box",style: TextStyle(color: Colors.white),),
                            backgroundColor: Colors.deepOrange,
                            content: Text("That Is My Simple Alert Dialog Box...",style: TextStyle(color: Colors.white),),
                            actions: <Widget>[
                              FlatButton(
                                child: Text("Cancel",style: TextStyle(color: Colors.white),),
                                onPressed: (){
                                  Navigator.pop(context,"Cancel");
                                },
                              ),
                              FlatButton(
                                child: Text("Ok",style: TextStyle(color: Colors.white),),
                                onPressed: (){
                                  Navigator.pop(context,"Ok");
                                },
                              )
                            ],
                          ),
                        ).then((returnVal){
                          if(returnVal!=null){
                            _scaffoldKey.currentState.showSnackBar(SnackBar(
                              content: Text(returnVal.toString()),
                              action: SnackBarAction(label: "Ok",onPressed: (){},textColor: Colors.white,),
                              backgroundColor: Colors.teal,
                              duration: Duration(seconds: 3),
                              behavior: SnackBarBehavior.floating,
                            ));
                          }
                        });
                      },
                      child: Text("Alert Dialog box",style: TextStyle(color: Colors.white),),
                      padding: EdgeInsets.symmetric(vertical: 15,horizontal: 35),
                      color: Colors.teal,
                    ),
                    RaisedButton(
                      onPressed: (){
                        showDialog(
                            context: context,
                            builder: (BuildContext context)=> SimpleDialog(
                              backgroundColor: Colors.red,
                              title: Text("Simple Dialog Box",style: TextStyle(color: Colors.white),),
                              children: <Widget>[
                                ListTile(
                                  title: Text("amit@gmail.com",style: TextStyle(color: Colors.white),),
                                  leading: Icon(Icons.person,color: Colors.white,),
                                  onTap: (){
                                    Navigator.pop(context,"amit@gmail.com");
                                  },
                                ),
                                ListTile(
                                  title: Text("sudhir@gmail.com",style: TextStyle(color: Colors.white),),
                                  leading: Icon(Icons.person,color: Colors.white,),
                                  onTap: (){
                                    Navigator.pop(context,"sudhir@gmail.com");
                                  },
                                ),
                                ListTile(
                                  title: Text("elesh@gmail.com",style: TextStyle(color: Colors.white),),
                                  leading: Icon(Icons.person,color: Colors.white,),
                                  onTap: (){
                                    Navigator.pop(context,"elesh@gmail.com");
                                  },
                                ),
                                ListTile(
                                  title: Text("Add account",style: TextStyle(color: Colors.white),),
                                  leading: Icon(Icons.add_circle,color: Colors.white,),
                                  onTap: (){
                                    Navigator.pop(context,"Add account");
                                  },
                                ),
                              ],
                            )
                        ).then((returnVal){
                          if(returnVal!=null){
                            _scaffoldKey.currentState.showSnackBar(
                              SnackBar(
                                content: Text(returnVal.toString(),style: TextStyle(color: Colors.white),),
                                action: SnackBarAction(label: "Ok",textColor: Colors.white,onPressed: (){},),
                                backgroundColor: Colors.red,
                                behavior: SnackBarBehavior.floating,
                                duration: Duration(seconds: 3),
                              ),
                            );
                          }
                        });
                      },
                      child: Text("Simple Dialog box",style: TextStyle(color: Colors.white),),
                      padding: EdgeInsets.symmetric(vertical: 15,horizontal: 30),
                      color: Colors.red,
                    ),
                  ],
                ),
                Wrap(
                  spacing: 20,
                  children: <Widget>[
                    RaisedButton(
                      onPressed: (){
                        DateTime date = new DateTime.now();
                        showDatePicker(
                            context: context,
                            initialDate: date,
                            firstDate: DateTime(2020),
                            lastDate: DateTime(2025)
                        ).then((DateTime date1){
                          if(date1!=null){
                            _scaffoldKey.currentState.showSnackBar(
                                SnackBar(
                                  content: Text(date1.toString()),
                                  duration: Duration(seconds: 3),
                                  backgroundColor: Colors.deepOrange,
                                  behavior: SnackBarBehavior.floating,
                                  action: SnackBarAction(
                                    onPressed: (){},
                                    label: "Ok",
                                    textColor: Colors.white,
                                  ),
                                )
                            );
                          }
                        });
                      },
                      child: Text("Date Dialog box",style: TextStyle(color: Colors.white),),
                      padding: EdgeInsets.symmetric(vertical: 15,horizontal: 35),
                      color: Colors.deepOrange,
                    ),
                    RaisedButton(
                      onPressed: (){
                        DateTime now = new DateTime.now();
                        showTimePicker(
                          context: context,
                          initialTime: TimeOfDay(hour: now.hour,minute: now.minute),
                        ).then((TimeOfDay time1){
                          if(time1!=null){
                            _scaffoldKey.currentState.showSnackBar(
                                SnackBar(
                                  content: Text(time1.format(context)),
                                  backgroundColor: Colors.blueGrey,
                                  duration: Duration(seconds: 3),
                                  behavior: SnackBarBehavior.floating,
                                  action: SnackBarAction(
                                    label: "Ok",
                                    textColor: Colors.white,
                                    onPressed: (){},
                                  ),
                                )
                            );
                          }
                        });
                      },
                      child: Text("Time Dialog box",style: TextStyle(color: Colors.white),),
                      padding: EdgeInsets.symmetric(vertical: 15,horizontal: 35),
                      color: Colors.blueGrey,
                    ),
                  ],
                ),
                Wrap(
                  spacing: 10,
                  children: <Widget>[
                    RaisedButton(
                      onPressed: (){
                        showModalBottomSheet(backgroundColor: Colors.transparent,
                          context: context,
                          builder: (BuildContext context)=>Card(
                            color: Colors.blue,
                            child: ListView(
                              primary: false,
                              shrinkWrap: true,
                              children: <Widget>[
                                ListTile(
                                  title: Text("First Round",style: TextStyle(color: Colors.white),),
                                  leading: Icon(Icons.looks_one,color: Colors.white,),
                                  onTap: (){
                                    Navigator.pop(context,"First Round");
                                  },
                                ),
                                ListTile(
                                  title: Text("Two Round",style: TextStyle(color: Colors.white),),
                                  leading: Icon(Icons.looks_two,color: Colors.white,),
                                  onTap: (){
                                    Navigator.pop(context,"Two Round");
                                  },
                                ),
                                ListTile(
                                  title: Text("Three Round",style: TextStyle(color: Colors.white),),
                                  leading: Icon(Icons.looks_3,color: Colors.white,),
                                  onTap: (){
                                    Navigator.pop(context,"Three Round");
                                  },
                                ),
                                ButtonBar(
                                  children: <Widget>[
                                    FlatButton(
                                      child: Text("Cancel",style: TextStyle(color: Colors.white),),
                                      onPressed: (){
                                        Navigator.pop(context);
                                      },
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ).then((returnVal){
                          if(returnVal!=null){
                            _scaffoldKey.currentState.showSnackBar(
                                SnackBar(
                                  content: Text(returnVal),
                                  behavior: SnackBarBehavior.floating,
                                  backgroundColor: Colors.blue,
                                  duration: Duration(seconds: 3),
                                  action: SnackBarAction(
                                    onPressed: (){},
                                    label: "Ok",
                                    textColor: Colors.white,
                                  ),
                                )
                            );
                          }
                        });
                      },
                      child: Text("Bottom Dialog box",style: TextStyle(color: Colors.white),),
                      padding: EdgeInsets.symmetric(vertical: 15,horizontal: 30),
                      color: Colors.blue,
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
