import 'package:creativedesign/Other_Widgets/datatables.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:widget_with_codeview/syntax_highlighter.dart';

class DataTables_Code extends StatelessWidget {
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
        title: Text("DataTable",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>DataTables()));
          },
          icon: Icon(Icons.arrow_back_ios,size: 20,color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){
              launch("https://github.com/sudhirgamit/Creative-Design-In-Flutter/blob/master/lib/Other_Widgets/datatables.dart");
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
import 'package:creativedesign/Other_Widgets_Codes/datatables_code.dart';
import 'package:creativedesign/Pages/advance.dart';
import 'package:flutter/material.dart';

class DataTables extends StatefulWidget {
  @override
  _DataTablesState createState() => _DataTablesState();
}
class _DataTablesState extends State<DataTables> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("DataTable",style: TextStyle(color: Colors.black),),
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>DataTables_Code()));
            },
            icon: Icon(Icons.transfer_within_a_station,size: 25,color: Colors.black),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: DataTable(
              columns: [
                DataColumn(
                  label: Text("No",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
                  tooltip: "Number"
                ),
                DataColumn(
                    label: Text("Name",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
                    tooltip: "Name"
                ),
                DataColumn(
                    label: Text("City",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
                    tooltip: "City"
                ),
                DataColumn(
                    label: Text("Email",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
                    tooltip: "Email"
                ),
                DataColumn(
                    label: Text("Mobile",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
                    tooltip: "Mobile"
                ),
              ],
              rows: [
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text("1")),
                    DataCell(Text("Rahul Gamit")),
                    DataCell(Text("Mandvi")),
                    DataCell(Text("rahulgamit@gmail.com")),
                    DataCell(Text("+91 9937784143")),
                  ]
                ),
                DataRow(
                    cells: <DataCell>[
                      DataCell(Text("2")),
                      DataCell(Text("Amit Chaudhari")),
                      DataCell(Text("Vyara")),
                      DataCell(Text("amitchaudhari@gmail.com")),
                      DataCell(Text("+91 8969123612")),
                    ]
                ),
                DataRow(
                    cells: <DataCell>[
                      DataCell(Text("3")),
                      DataCell(Text("Sanjay Patel")),
                      DataCell(Text("Bardoli")),
                      DataCell(Text("sanjaypatel@gmail.com")),
                      DataCell(Text("+91 8969123612")),
                    ]
                ),
                DataRow(
                    cells: <DataCell>[
                      DataCell(Text("4")),
                      DataCell(Text("Ravi Gamit")),
                      DataCell(Text("Surat")),
                      DataCell(Text("ravigamit@gmail.com")),
                      DataCell(Text("+91 9073912542")),
                    ]
                ),
                DataRow(
                    cells: <DataCell>[
                      DataCell(Text("5")),
                      DataCell(Text("Pinkesh Patel")),
                      DataCell(Text("Madi")),
                      DataCell(Text("pinkeshpatel@gmail.com")),
                      DataCell(Text("+91 9713242789")),
                    ]
                ),
                DataRow(
                    cells: <DataCell>[
                      DataCell(Text("6")),
                      DataCell(Text("Jay Gamit")),
                      DataCell(Text("Bardoli")),
                      DataCell(Text("jay@gmail.com")),
                      DataCell(Text("+91 9537084143")),
                    ]
                ),
                DataRow(
                    cells: <DataCell>[
                      DataCell(Text("7")),
                      DataCell(Text("Kajal Chaudhari")),
                      DataCell(Text("Vyara")),
                      DataCell(Text("kajalchaudhari@gmail.com")),
                      DataCell(Text("+91 8869190612")),
                    ]
                ),
                DataRow(
                    cells: <DataCell>[
                      DataCell(Text("8")),
                      DataCell(Text("Prince Patel")),
                      DataCell(Text("Madvi")),
                      DataCell(Text("princepatel@gmail.com")),
                      DataCell(Text("+91 9075823612")),
                    ]
                ),
                DataRow(
                    cells: <DataCell>[
                      DataCell(Text("9")),
                      DataCell(Text("Jenny Gamit")),
                      DataCell(Text("Surat")),
                      DataCell(Text("jenygamit@gmail.com")),
                      DataCell(Text("+91 7874569697")),
                    ]
                ),
                DataRow(
                    cells: <DataCell>[
                      DataCell(Text("10")),
                      DataCell(Text("Umesh Patel")),
                      DataCell(Text("Madi")),
                      DataCell(Text("umeshpatel@gmail.com")),
                      DataCell(Text("+91 7689504123")),
                    ]
                ),
              ]
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
