import 'package:creativedesign/Widgets/checkbutton_box.dart';
import 'package:flutter/material.dart';
import 'package:widget_with_codeview/syntax_highlighter.dart';

class CheckButton_Code extends StatelessWidget {
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
        title: Text("CheckButton Box",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>CheckButton_Box()));
          },
          icon: Icon(Icons.arrow_back_ios,size: 20,color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){
              //Navigator.push(context, MaterialPageRoute(builder: (context)=>CheckButton_Box()));
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
import 'package:creativedesign/Codes/checkbutton_code.dart';
import 'package:creativedesign/Pages/homepage.dart';
import 'package:flutter/material.dart';

class CheckButton_Box extends StatefulWidget {
  @override
  _CheckButton_BoxState createState() => _CheckButton_BoxState();
}
class _CheckButton_BoxState extends State<CheckButton_Box> {
  final _scaffoldkey =new GlobalKey<ScaffoldState>();
  String _radio1="MCA"; String _radio2="BBA";
  bool _check1 = true; bool _check2 = false; bool _check3 = false;
  bool _switch1 = true; bool _switch2 = false;
  final List<String> _radiobutton = <String>["BBA","BCA","BSc","MBA","MCA","MSc"];
  Column addRadioButton(int index,String title){
    return Column(
      children: <Widget>[
        Radio(
          value: _radiobutton[index],
          groupValue: _radio2,
          activeColor: Colors.green,
          hoverColor: Colors.red,
          autofocus: true,
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          onChanged: (String val){
            setState(() {
              _radio2 = val;
              _scaffoldkey.currentState.showSnackBar(
                SnackBar(
                  content: Text(_radio2.toString(),style: TextStyle(color: Colors.white),),
                  action: SnackBarAction(label: "Ok",textColor: Colors.white,onPressed: (){},),
                  backgroundColor: Colors.green,
                  behavior: SnackBarBehavior.floating,
                  duration: Duration(seconds: 3),
                ),
              );
            });
          },
        ),
        Text(title)
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      appBar: AppBar(
        title: Text("CheckButton Box"),
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>CheckButton_Code()));
            },
            icon: Icon(Icons.transfer_within_a_station,size: 25),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Direct List To Fetch The Data
              Text("Radio Button : 1",style: TextStyle(color:Colors.blueGrey,fontSize: 20,fontWeight: FontWeight.w500),),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:_radiobutton.map((String index)=>Column(
                  children: <Widget>[
                    Radio<String>(
                      value: index,
                      groupValue: _radio1,
                      onChanged: (String val){
                        setState(() {
                          print(index);
                          _radio1 = val;
                          _scaffoldkey.currentState.showSnackBar(
                            SnackBar(
                              content: Text(_radio1.toString(),style: TextStyle(color: Colors.white),),
                              action: SnackBarAction(label: "Ok",textColor: Colors.white,onPressed: (){},),
                              backgroundColor: Colors.red,
                              behavior: SnackBarBehavior.floating,
                              duration: Duration(seconds: 3),
                            ),
                          );
                        });
                      },
                    ),
                    Text(index),
                  ],
                )).toList(),
              ),
              SizedBox(height: 20,),
              // Function To Fetch Radio Button Ane Title
              Text("Radio Button : 2",style: TextStyle(color:Colors.blueGrey,fontSize: 20,fontWeight: FontWeight.w500),),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  addRadioButton(0,"BBA"),
                  addRadioButton(1,"BCA"),
                  addRadioButton(2,"BSc"),
                  addRadioButton(3,"MBA"),
                  addRadioButton(4,"MCA"),
                  addRadioButton(5,"MSc"),
                ],
              ),
              Divider(height: 30,color: Colors.green,thickness: 2.5,),
              Text("CheckBox : 1",style: TextStyle(color:Colors.blueGrey,fontSize: 20,fontWeight: FontWeight.w500),),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:<Widget>[
                  Checkbox(
                      value: _check1,
                      checkColor: Colors.green,
                      onChanged: (bool val){
                        setState(() {
                          _check1 = val;
                          _scaffoldkey.currentState.showSnackBar(
                            SnackBar(
                              content: Text(_check1.toString(),style: TextStyle(color: Colors.white),),
                              action: SnackBarAction(label: "Ok",textColor: Colors.white,onPressed: (){},),
                              backgroundColor: Colors.blue,
                              behavior: SnackBarBehavior.floating,
                              duration: Duration(seconds: 3),
                            ),
                          );
                        });
                      }
                  ),
                  Text("FY"),
                  Checkbox(
                      value: _check2,
                      checkColor: Colors.green,
                      activeColor: Colors.white,
                      onChanged: (bool val){
                        setState(() {
                          _check2 = val;
                          _scaffoldkey.currentState.showSnackBar(
                            SnackBar(
                              content: Text(_check2.toString(),style: TextStyle(color: Colors.white),),
                              action: SnackBarAction(label: "Ok",textColor: Colors.white,onPressed: (){},),
                              backgroundColor: Colors.blueGrey,
                              behavior: SnackBarBehavior.floating,
                              duration: Duration(seconds: 3),
                            ),
                          );
                        });
                      }
                  ),
                  Text("SY"),
                  Checkbox(
                      value: _check3,
                      checkColor: Colors.green,
                      activeColor: Colors.white,
                      tristate: true,
                      onChanged: (bool val){
                        setState(() {
                          _check3 = val;
                          _scaffoldkey.currentState.showSnackBar(
                            SnackBar(
                              content: Text(_check3.toString(),style: TextStyle(color: Colors.white),),
                              action: SnackBarAction(label: "Ok",textColor: Colors.white,onPressed: (){},),
                              backgroundColor: Colors.pink,
                              behavior: SnackBarBehavior.floating,
                              duration: Duration(seconds: 3),
                            ),
                          );
                        });
                      }
                  ),
                  Text("TY")
                ],
              ),
              Divider(height: 30,color: Colors.green,thickness: 2.5,),
              Text("Switch : 1",style: TextStyle(color:Colors.blueGrey,fontSize: 20,fontWeight: FontWeight.w500),),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:<Widget>[
                  Switch(
                      value: _switch1,
                      activeTrackColor: Colors.blue,
                      onChanged: (bool val){
                        setState(() {
                          _switch1 = val;
                          _scaffoldkey.currentState.showSnackBar(
                            SnackBar(
                              content: Text(_switch1.toString(),style: TextStyle(color: Colors.white),),
                              action: SnackBarAction(label: "Ok",textColor: Colors.white,onPressed: (){},),
                              backgroundColor: Colors.orange,
                              behavior: SnackBarBehavior.floating,
                              duration: Duration(seconds: 3),
                            ),
                          );
                        });
                      }
                  ),
                  Text("Power On"),
                  Switch(
                      value: _switch2,
                      activeColor: Colors.white,
                      onChanged: (bool val){
                        setState(() {
                          _switch2 = val;
                          _scaffoldkey.currentState.showSnackBar(
                            SnackBar(
                              content: Text(_switch2.toString(),style: TextStyle(color: Colors.white),),
                              action: SnackBarAction(label: "Ok",textColor: Colors.white,onPressed: (){},),
                              backgroundColor: Colors.yellow,
                              behavior: SnackBarBehavior.floating,
                              duration: Duration(seconds: 3),
                            ),
                          );
                        });
                      }
                  ),
                  Text("Power Off"),
                ],
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
