import 'package:creativedesign/Pages/creative_design.dart';
import 'package:flutter/material.dart';
import 'package:widget_with_codeview/syntax_highlighter.dart';

class Setting_2_Code extends StatelessWidget {
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
        title: Text("Setting 2",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Creative_Design()));
          },
          icon: Icon(Icons.arrow_back_ios,size: 20,color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){
              //launch("https://github.com/sudhirgamit/Creative-Design-In-Flutter/blob/master/lib/Async/future_builders.dart");
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
import 'package:creativedesign/Pages/creative_design.dart';
import 'package:flutter/material.dart';

class Setting_2 extends StatefulWidget {
  @override
  _Setting_2State createState() => _Setting_2State();
}
class _Setting_2State extends State<Setting_2> {
  Color light = Colors.white; bool _switch = false;
  Color dark = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _switch ? dark : light,
      body: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(
                          onPressed: (){
                            setState(() {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Creative_Design()));
                            });
                          },
                          icon: Icon(Icons.arrow_back_ios,size: 20,color: _switch ? light : dark),
                          tooltip: "Back",
                        ),
                        Container(padding: EdgeInsets.only(top: 12),child: Text("Settings",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 25,color: _switch ? light : dark,),)),
                        Switch(
                            value: _switch,materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            activeColor: Colors.white,
                            inactiveTrackColor: Colors.black,
                            onChanged: (bool val){
                              setState(() {
                                _switch = val;
                              });
                            }
                        ),
                      ],
                    ),
                    Container(
                      width: 120,height: 120,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,border: Border.all(color: _switch ? Colors.white38 : Colors.black38,width: 3),
                        color: _switch ? dark : light,
                        image: DecorationImage(
                          image: NetworkImage("https://images.unsplash.com/photo-1601614514155-0fa833ae6682?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
                            fit: BoxFit.cover,
                        )
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text("Devanson Sharma",style: TextStyle(fontSize: 18,color: _switch ? light : dark,fontWeight: FontWeight.w400),),
                    SizedBox(height: 5,),
                  ],
                ),
              ),
              Divider(height: 1,color: _switch ? light : dark,indent: 20,endIndent: 20,thickness: 0.5,),
              Expanded(
                flex: 2,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(left: 20,right: 20,top: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        containerList("Change Name","You can change name and surname",Icons.person),
                        SizedBox(height: 5,),
                        containerList("Change Password","You can change Password",Icons.lock),
                        SizedBox(height: 5,),
                        containerList("Change Email","You can change email",Icons.email),
                        SizedBox(height: 5,),
                        containerList("Change Mobile Number","You can change mobile number",Icons.phone),
                        SizedBox(height: 5,),
                        containerList("Change Date Of Birth","You can change Date Of Birth",Icons.date_range),
                        SizedBox(height: 5,),
                        containerList("Change Language","You can change Language",Icons.language),
                        SizedBox(height: 5,),
                        containerList("Info","You can get the information in system",Icons.info),
                        SizedBox(height: 2,),
                      ],
                    ),
                  ),
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget containerList(String title,String subtitle,IconData icon){
    return Container(
      decoration: BoxDecoration(
          color: _switch ? Colors.white12 : Colors.black12,
          borderRadius: BorderRadius.all(Radius.circular(5))
      ),
      child: ListTile(
        onTap: (){},
        leading: Icon(icon,color: _switch ? Colors.red : Colors.red,),
        title: Text(title,style: TextStyle(fontSize: 16,color: _switch ? light : dark,fontWeight: FontWeight.w400),),
        subtitle: Text(subtitle,style: TextStyle(fontSize: 14,color: _switch ? light : dark,fontWeight: FontWeight.w300),),
        trailing: Icon(Icons.arrow_forward_ios,color: _switch ? light : dark,size: 15,),
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
