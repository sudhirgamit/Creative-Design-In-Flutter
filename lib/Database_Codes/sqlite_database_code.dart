import 'package:creativedesign/Database/sqlite_database.dart';
import 'package:flutter/material.dart';
import 'package:widget_with_codeview/syntax_highlighter.dart';

class SQLite_Database_Code extends StatelessWidget {
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
        title: Text("SQLite Databse",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>SQLite_Database()));
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
import 'package:creativedesign/Database_Codes/sqlite_database_code.dart';
import 'package:creativedesign/Json_API/sqlite_all_jsondata.dart';
import 'package:creativedesign/Pages/advance.dart';
import 'package:creativedesign/Utils/Helpers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loading_animations/loading_animations.dart';

class SQLite_Database extends StatefulWidget {
  @override
  _SQLite_DatabaseState createState() => _SQLite_DatabaseState();
}
class _SQLite_DatabaseState extends State<SQLite_Database> {
  Future<List<Student>> _student;
  String name; int UserId;
  final _scaffoldkey = new GlobalKey<ScaffoldState>();
  TextEditingController _name = new TextEditingController();
  String checkname="";
  bool _namevalid = true;
  bool _updated;
  _namevalidation(String val){
    _namevalid = RegExp("^[a-zA-Z]{3,}").hasMatch(val);
  }
  // TextField Controller Value to clean Method
  _clearvalue(){
    _name.clear();
  }
  var dbHelper;
  @override
  void initState() {
    super.initState();
    dbHelper = Helper();
    _updated = false;
    refreshList();
  }
  @override
  void dispose(){
    super.dispose();
    dbHelper.close();
  }
  // Get All Data In Student Table
  refreshList(){
    setState(() {
      _student = dbHelper.getStudent();
    });
  }
  // Form Data Validation And Insert Or Update Button
  validate(){
    if(_updated){
      print(UserId); print(name);
      name = _name.text;
      Student s = Student(UserId,name);
      dbHelper.update(s);
      setState(() {
        _updated = false;
        refreshList();
      });
    }else{
      _name.text.trimLeft().isEmpty ? _namevalid = false : _name.text.length >= 3 ? _namevalid = true : _namevalid = false;
      if(_namevalid == true){
        name =  _name.text;
        Student s = Student(null,name);
        dbHelper.save(s);
      }
      setState(() {
        refreshList();
      });
    }
  }
  // Student Table All The Data Display In Body.
  SingleChildScrollView dataTable(List<Student> student){
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          columns: [
            DataColumn(
              label: Text("ID"),
            ),
            DataColumn(
              label: Text("NAME"),
            ),
            DataColumn(
              label: Text("UPDATE"),
            ),
            DataColumn(
              label: Text("DELETE"),
            ),
          ],
           rows: student.map((stud)=>DataRow(
            cells: [
              DataCell(
                Text(stud.id.toString())
              ),
              DataCell(
                  Text(stud.name)
              ),
              DataCell(
                IconButton(
                  icon: Icon(CupertinoIcons.create),
                  onPressed: (){
                    setState(() {
                      _name.text = stud.name;
                      UserId = stud.id;
                      _updated = true;
                    });
                  },
                ),
              ),
              DataCell(
                IconButton(
                  icon: Icon(CupertinoIcons.delete),
                  onPressed: (){
                    setState(() {
                      dbHelper.delete(stud.id);
                      refreshList();
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
  // Fetching Of Data In SQLite Database
  FetchData(){
    return Expanded(
      child: FutureBuilder(
        future: _student,
        builder: (context, snapshot){
          if(snapshot.hasData){
            return dataTable(snapshot.data);
          }
          if(snapshot.data == null || snapshot.data.length == 0){
            return Text("No Data Found");
          }
          return Center(child: LoadingRotating.square(size: 40,borderSize: 2.5,borderColor: Colors.cyan,),);
        },
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("SQLite Database",style: TextStyle(color: Colors.black),),
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SQLite_Database_Code()));
            },
            icon: Icon(Icons.transfer_within_a_station,size: 25,color: Colors.black),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            TextFormField(
              onSaved: (val){
                name = val;
              },
              onChanged: (String value){
                setState(() {
                  _namevalidation(value);
                  checkname=value;
                });
              },
              controller: _name,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  hintText: "Name",
                  labelStyle: TextStyle(color: Colors.black,fontSize: 12),
                  errorText: _namevalid!=true ? "Please enter valid name" : "",
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
                  fontSize: 15,fontWeight: FontWeight.w700
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FlatButton(
                  onPressed: validate,
                  child: Text(_updated ? "UPDATE" : "ADD"),
                ),
                FlatButton(
                  onPressed: (){
                    setState(() {
                      _clearvalue();
                    });
                  },
                  child: Text("CANCEL"),
                ),
              ],
            ),
            FetchData(),
          ],
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
