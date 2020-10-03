import 'package:creativedesign/Authentication/login_1.dart';
import 'package:creativedesign/Authentication/signup_1.dart';
import 'package:creativedesign/Authentication_Codes/login_1_code.dart';
import 'package:creativedesign/Authentication_Codes/login_2_code.dart';
import 'package:creativedesign/Authentication_Codes/login_3_code.dart';
import 'package:creativedesign/Authentication_Codes/login_4_code.dart';
import 'package:creativedesign/Authentication_Codes/signup_1_code.dart';
import 'package:creativedesign/Authentication_Codes/signup_2_code.dart';
import 'package:creativedesign/Authentication_Codes/signup_3_code.dart';
import 'package:creativedesign/Authentication_Codes/signup_4_code.dart';
import 'package:creativedesign/Pages/dashboard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Creative_Design extends StatefulWidget {
  @override
  _Creative_DesignState createState() => _Creative_DesignState();
}
class _Creative_DesignState extends State<Creative_Design> {
  // Authentication
  Widget Cardlist_Authentication_Dialog(String title,String subtitle,IconData icon){
    return Card(
      child: ListTile(
        leading: Icon(icon,color: Colors.black),
        title: Text(title,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18,color: Colors.black),),
        subtitle: Text(subtitle,maxLines: 2,overflow: TextOverflow.ellipsis,),
        trailing: IconButton(
          onPressed: (){
            if(title=="Login 1"){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Login_1_Code()));
            }else if(title=="SignUp 1"){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp_1_Code()));
            }else if(title=="Login 2"){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Login_2_Code()));
            }else if(title=="SignUp 2"){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp_2_Code()));
            }else if(title=="Login 3"){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Login_3_Code()));
            }else if(title=="SignUp 3"){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp_3_Code()));
            }else if(title=="Login 4"){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Login_4_Code()));
            }else if(title=="SignUp 4"){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp_4_Code()));
            }
          },
          icon: Icon(Icons.android,color: Colors.teal),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
        onTap: (){
          if(title=="Login 1"){
            Navigator.pushReplacementNamed(context, "/login_1");
          }else if(title=="SignUp 1"){
            Navigator.pushReplacementNamed(context, "/signup_1");
          }else if(title=="Login 2"){
            Navigator.pushReplacementNamed(context, "/login_2");
          }else if(title=="SignUp 2"){
            Navigator.pushReplacementNamed(context, "/signup_2");
          }else if(title=="Login 3"){
            Navigator.pushReplacementNamed(context, "/login_3");
          }else if(title=="SignUp 3"){
            Navigator.pushReplacementNamed(context, "/signup_3");
          }else if(title=="Login 4"){
            Navigator.pushReplacementNamed(context, "/login_4");
          }else if(title=="SignUp 4"){
            Navigator.pushReplacementNamed(context, "/signup_4");
          }
        },
      ),
    );
  }

  // Profiles
  Widget Cardlist_Profile_Dialog(String title,String subtitle,IconData icon){
    return Card(
      child: ListTile(
        leading: Icon(icon,color: Colors.black),
        title: Text(title,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18,color: Colors.black),),
        subtitle: Text(subtitle,maxLines: 2,overflow: TextOverflow.ellipsis,),
        trailing: IconButton(
          onPressed: (){
            if(title=="Profile 1"){
              //Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile_1_Code()));
            }else if(title=="Profile 2"){
              //Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile_2_Code()));
            }
          },
          icon: Icon(Icons.android,color: Colors.teal),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
        onTap: (){
          if(title=="Profile 1"){
            Navigator.pushReplacementNamed(context, "/profile_1");
          }else if(title=="Profile 2"){
            Navigator.pushReplacementNamed(context, "/profile_2");
          }
        },
      ),
    );
  }

  // All The Pages To Creative Design In Flutter
  Widget Cardlist_Head(String title,IconData icon){
    return Card(
      elevation: 5.0,
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        onTap: (){
          if(title=="Authentication"){
            _showModelButtomSheet_Authentication(context);
          }else if(title=="Profiles"){
            _showModelButtomSheet_Profiles(context);
          }else if(title=="Settings"){
            //_showModelButtomSheet_Multimedia(context);
          }else if(title=="E-Commerce"){
            //_showModelButtomSheet_Socialmedia(context);
          } else if(title=="Foods"){
            //_showModelButtomSheet_Database(context);
          }else if(title=="Miscellaneous"){
            //_showModelButtomSheet_Other_Widgets(context);
          }
        },
        title: Text(title,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,letterSpacing: 2,color: Colors.black),),
        leading: Icon(icon,color: Colors.black,),
        trailing: Icon(Icons.view_list,color: Colors.black),
      ),
    );
  }
  // Buttom Sheet Authentication
  Widget _showModelButtomSheet_Authentication(context){
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (BuildContext context)=>Card(
          color: Colors.white70.withOpacity(0.7),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: <Widget>[
                Cardlist_Authentication_Dialog("Login 1","SingleChildScrollView, SafeArea, Column, Form, TextField, CupertinoButton",Icons.looks_one),
                Cardlist_Authentication_Dialog("Login 2","SingleChildScrollView, SafeArea, Column, Form, TextField, CupertinoButton",Icons.looks_two),
                Cardlist_Authentication_Dialog("Login 3","SingleChildScrollView, SafeArea, Column, Form, TextField, CupertinoButton",Icons.looks_3),
                Cardlist_Authentication_Dialog("Login 4","SingleChildScrollView, SafeArea, Column, Form, TextField, CupertinoButton",Icons.looks_4),
                Cardlist_Authentication_Dialog("SignUp 1","SingleChildScrollView, SafeArea, Column, Form, TextField, CupertinoButton",Icons.looks_one),
                Cardlist_Authentication_Dialog("SignUp 2","SingleChildScrollView, SafeArea, Column, Form, TextField, CupertinoButton",Icons.looks_two),
                Cardlist_Authentication_Dialog("SignUp 3","SingleChildScrollView, SafeArea, Column, Form, TextField, CupertinoButton",Icons.looks_3),
                Cardlist_Authentication_Dialog("SignUp 4","SingleChildScrollView, SafeArea, Column, Form, TextField, CupertinoButton",Icons.looks_4),
              ],
            ),
          ),
        )
    );
  }

  // Buttom Sheet Profiles
  Widget _showModelButtomSheet_Profiles(context){
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (BuildContext context)=>Card(
          color: Colors.white70.withOpacity(0.7),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: <Widget>[
                Cardlist_Profile_Dialog("Profile 1","SingleChildScrollView, SafeArea, Column, Form, TextField, CupertinoButton",Icons.looks_one),
                Cardlist_Profile_Dialog("Profile 2","SingleChildScrollView, SafeArea, Column, Form, TextField, CupertinoButton",Icons.looks_two),
              ],
            ),
          ),
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Creative Design Flutter",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Dashboard()));
          },
          icon: Icon(Icons.arrow_back_ios,size: 20,color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){
              launch("https://flutter.dev/docs/development/ui/advanced");
            },
            icon: Icon(Icons.info_outline,size: 25,color: Colors.black,),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              Cardlist_Head("Authentication",Icons.lock),
              Cardlist_Head("Profiles",CupertinoIcons.profile_circled),
              Cardlist_Head("Settings",Icons.settings),
              Cardlist_Head("E-Commerce",Icons.shopping_cart),
              Cardlist_Head("Foods",Icons.fastfood),
              Cardlist_Head("Miscellaneous",Icons.info),
            ],
          ),
        ),
      ),
    );
  }
}
