import 'package:creativedesign/Database/mysql_database.dart';
import 'package:flutter/material.dart';
import 'package:widget_with_codeview/syntax_highlighter.dart';

class MySQL_Database_Code extends StatelessWidget {
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
        title: Text("MySQL Databse",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>MySQL_Database()));
          },
          icon: Icon(Icons.arrow_back_ios,size: 20,color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){
              //launch("https://github.com/sudhirgamit/Creative-Design-In-Flutter/blob/master/lib/Animation/animated_align.dart");
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
import 'dart:convert';
import 'package:creativedesign/AppAPI/AppURL.dart';
import 'package:creativedesign/Pages/advance.dart';
import 'package:creativedesign/Utils/Services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:creativedesign/Json_API/mysql_all_jsondata.dart';
import 'package:http/http.dart' as http;
import 'package:loading_animations/loading_animations.dart';
import 'package:url_launcher/url_launcher.dart';

class MySQL_Database extends StatefulWidget {
  @override
  _MySQL_DatabaseState createState() => _MySQL_DatabaseState();
}
class _MySQL_DatabaseState extends State<MySQL_Database> {
  List<Student> _student;
  Student _selectedStudent;
  final _scaffoldkey = new GlobalKey<ScaffoldState>();
  TextEditingController _name = new TextEditingController();
  String checkname="";  String checkemail=""; String checkmobile="";
  bool _namevalid = true;
  _namevalidation(String val){
    _namevalid = RegExp("^[a-zA-Z]{3,}").hasMatch(val);
  }
  TextEditingController _email = new TextEditingController();
  bool _emailvalid = true;
  _emailvalidation(String val){
    _emailvalid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(val);
  }
  TextEditingController _mobile = new TextEditingController();
  bool _mobilevalid = true;
  _mobilevalidation(String val){
    _mobilevalid = RegExp("[6-9]{1}[0-9]{9}").hasMatch(val);
  }
  // Show Message In Successfull Insert,Update Or Delete
  _showDoneSnackBar(context,message){
    _scaffoldkey.currentState.showSnackBar(
      SnackBar(
        content: Text(message),
        elevation: 5.0,
        duration: Duration(seconds: 3),
        backgroundColor: Colors.lightGreen,
        behavior: SnackBarBehavior.floating,
      )
    );
  }
  // Show Message In Failed Insert,Update Or Delete
  _showFailSnackBar(context,message){
    _scaffoldkey.currentState.showSnackBar(
        SnackBar(
          content: Text(message),
          elevation: 5.0,
          duration: Duration(seconds: 3),
          backgroundColor: Colors.red,
          behavior: SnackBarBehavior.floating,
        )
    );
  }
  // TextField Controller Value to clean Method
  _clearvalue(){
    _name.clear();
    _mobile.clear();
    _email.clear();
  }
  // Student Table All Data Get In MySql Database
  _getStudent(){
    Services.getStudent().then((student){
      setState(() {
        _student = student;
      });
      //print(_student.length);
    });
  }
  // Insert Data In Student Table
  _addStudent(){
    Services.addStudent(_name.text, _mobile.text, _email.text).then((result){
      if(result=="Success Inserted"){
        _getStudent();
        _clearvalue();
        _showDoneSnackBar(context, result);
      }else{
        _showFailSnackBar(context, result);
      }
    });
  }
  // Update Data In Student Table
  _updateStudent(Student student){
    Services.updateStudent(student.id,_name.text, _mobile.text, _email.text).then((result){
      if(result=="Success Updated"){
        _getStudent();
        _showDoneSnackBar(context, result);
      }else{
        _showFailSnackBar(context, result);
      }
      _clearvalue();
    });
  }
  // Delete Data In Student Table
  _deleteStudent(Student student){
    Services.deleteStudent(student.id).then((result){
      if(result=="Success Deleted"){
        _getStudent();
        _showDoneSnackBar(context, result);
      }else{
        _showFailSnackBar(context, result);
      }
      _clearvalue();
    });
  }
  // Updated Time Particular Data Set In TextField Controller
  _showValue(Student student)
  {
    _name.text = student.name;
    _mobile.text = student.mobile;
    _email.text = student.email;
    _showDialog();
  }
  bool _updated;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _student = [];
    _getStudent();
    _updated = false;
  }
  // Student Table All The Data Display In Body.
  SingleChildScrollView _dataBody(){
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          columns: [
            DataColumn(
              label: Text("ID",style: TextStyle(fontWeight: FontWeight.w600),),
            ),
            DataColumn(
              label: Text("NAME",style: TextStyle(fontWeight: FontWeight.w600),),
            ),
            DataColumn(
              label: Text("MOBILE",style: TextStyle(fontWeight: FontWeight.w600),),
            ),
            DataColumn(
              label: Text("EMAIL",style: TextStyle(fontWeight: FontWeight.w600),),
            ),
            DataColumn(
              label: Text("EDIT",style: TextStyle(fontWeight: FontWeight.w600),),
            ),
            DataColumn(
              label: Text("DELETE",style: TextStyle(fontWeight: FontWeight.w600),),
            ),
          ],
          rows: _student.map((student)=>DataRow(
            cells: [
              DataCell(
                Text(student.id),
              ),
              DataCell(
                Text(student.name.toUpperCase()),
              ),
              DataCell(
                Text(student.mobile.toUpperCase()),
              ),
              DataCell(
                Text(student.email.toUpperCase()),
              ),
              DataCell(
                IconButton(
                  icon: Icon(CupertinoIcons.create),
                  onPressed: (){
                    setState(() {
                      _updated = true;
                    });
                    _showValue(student);
                    _selectedStudent = student;
                  },
                ),
              ),
              DataCell(
                IconButton(
                  icon: Icon(CupertinoIcons.delete),
                  onPressed: (){
                    setState(() {
                      _selectedStudent = student;
                      _deleteStudent(_selectedStudent);
                    });
                  },
                ),
              ),
            ]
          )).toList(),
        ),
      ),
    );
  }
  // Student Register Form Or Update Form
  _showDialog(){
    return showDialog(
        context: context,
        child: SimpleDialog(
          elevation: 5.0,
          title: Center(child: Text(_updated ? "Student Update": "Student Registration",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18),)),
          children: <Widget>[
            Form(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
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
                          labelText: "Name",
                          labelStyle: TextStyle(color: Colors.black,fontSize: 18),
                          //prefixIcon: _namevalid!=true ? Icon(Icons.person,color: Colors.red,): Icon(Icons.person,color: Colors.grey,),
                          errorText: _namevalid!=true ? "Please enter valid name" : "",
                          //suffixIcon: _emailvalid!=true ? null : Icon(Icons.done,color: checkemail=="" ? Colors.transparent : Colors.grey,),
                          border: UnderlineInputBorder(),
                          errorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey,width: 1.5,style: BorderStyle.solid)
                          ),
                          focusedErrorBorder: _namevalid!=true ?
                          UnderlineInputBorder(borderSide: BorderSide(color: Colors.red,width: 1.5,style: BorderStyle.solid)):
                          UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey,width: 1.5,style: BorderStyle.solid))
                      ),
                      style: TextStyle(
                          color: _namevalid!=true ? Colors.red :Colors.grey,
                          fontSize: 20,fontWeight: FontWeight.w700
                      ),
                    ),
                    TextField(
                      onChanged: (String value){
                        setState(() {
                          _mobilevalidation(value);
                          checkmobile=value;
                        });
                      },
                      controller: _mobile,
                      keyboardType: TextInputType.number,
                      maxLength: 10,
                      decoration: InputDecoration(
                          labelText: "Mobile",
                          counter: Container(),
                          labelStyle: TextStyle(color: Colors.black,fontSize: 18),
                          errorText: _mobilevalid!=true ? "Please enter valid mobile number" : "",
                          border: UnderlineInputBorder(),
                          errorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey,width: 1.5,style: BorderStyle.solid)
                          ),
                          focusedErrorBorder: _mobilevalid!=true ?
                          UnderlineInputBorder(borderSide: BorderSide(color: Colors.red,width: 1.5,style: BorderStyle.solid)):
                          UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey,width: 1.5,style: BorderStyle.solid))
                      ),
                      style: TextStyle(
                          color: _mobilevalid!=true ? Colors.red :Colors.grey,
                          fontSize: 20,fontWeight: FontWeight.w700
                      ),
                    ),
                    SizedBox(height: 10,),
                    TextField(
                      onChanged: (String value){
                        setState(() {
                          _emailvalidation(value);
                          checkemail=value;
                        });
                      },
                      controller: _email,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          labelText: "Email",
                          labelStyle: TextStyle(color: Colors.black,fontSize: 18),
                          //prefixIcon: _namevalid!=true ? Icon(Icons.person,color: Colors.red,): Icon(Icons.person,color: Colors.grey,),
                          errorText: _emailvalid!=true ? "Please enter valid email" : "",
                          //suffixIcon: _emailvalid!=true ? null : Icon(Icons.done,color: checkemail=="" ? Colors.transparent : Colors.grey,),
                          border: UnderlineInputBorder(),
                          errorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey,width: 1.5,style: BorderStyle.solid)
                          ),
                          focusedErrorBorder: _emailvalid!=true ?
                          UnderlineInputBorder(borderSide: BorderSide(color: Colors.red,width: 1.5,style: BorderStyle.solid)):
                          UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey,width: 1.5,style: BorderStyle.solid))
                      ),
                      style: TextStyle(
                          color: _emailvalid!=true ? Colors.red :Colors.grey,
                          fontSize: 20,fontWeight: FontWeight.w700
                      ),
                    ),
                    SizedBox(height: 35,),
                    _updated ?
                      Row(
                      children: <Widget>[
                        Text("Update",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30),),
                        SizedBox(width: 10),
                        Container(
                          width: 60,height: 60,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle,
                              boxShadow: [BoxShadow(
                                  color: Colors.red,
                                  blurRadius: 5
                              )]
                          ),
                          child: IconButton(alignment: Alignment.center,
                            onPressed: (){
                              setState(() {
                                _updateStudent(_selectedStudent);
                                Navigator.of(context,rootNavigator: true).pop("close");
                              });
                            },
                            icon: Icon(
                              Icons.trending_flat,
                              size: 30,color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    )
                     :Row(
                      children: <Widget>[
                        Text("Sign up",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30),),
                        SizedBox(width: 10),
                        Container(
                          width: 60,height: 60,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle,
                              boxShadow: [BoxShadow(
                                  color: Colors.red,
                                  blurRadius: 5
                              )]
                          ),
                          child: IconButton(alignment: Alignment.center,
                            onPressed: (){
                              setState(() {
                                _name.text.trimLeft().isEmpty ? _namevalid = false : _name.text.length >= 3 ? _namevalid = true : _namevalid = false;
                                _email.text.trimLeft().isEmpty ? _emailvalid = false : _emailvalid = true;
                                _mobile.text.trimLeft().isEmpty ? _mobilevalid = false : _mobile.text.length == 10 ? _mobilevalid = true : _mobilevalid = false;
                                if(_namevalid == true && _emailvalid == true && _mobilevalid == true){
                                  _addStudent();
                                  print("Successfully registration..!");
                                  Navigator.of(context,rootNavigator: true).pop("close");
                                }else{
                                  print("Please try again for registration..!");
                                  Navigator.of(context,rootNavigator: true).pop("close");
                                }
                              });
                            },
                            icon: Icon(
                              Icons.trending_flat,
                              size: 30,color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("MySQL Database",style: TextStyle(color: Colors.black),),
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
              //Navigator.push(context, MaterialPageRoute(builder: (context)=>Animated_Text_Kits_Code()));
            },
            icon: Icon(Icons.transfer_within_a_station,size: 25,color: Colors.black),
          )
        ],
      ),
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          _updated = false;
          _clearvalue();
          _showDialog();
        },
        child: Icon(Icons.add),
      ),
      body: _dataBody(),
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
