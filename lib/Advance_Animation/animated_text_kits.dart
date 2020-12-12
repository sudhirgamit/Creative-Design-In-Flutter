// import 'package:animated_text_kit/animated_text_kit.dart';
// import 'package:creativedesign/Advance_Animation_Codes/animated_text_kits_code.dart';
// import 'package:creativedesign/Pages/advance.dart';
// import 'package:flutter/material.dart';
//
// class Animated_Text_Kits extends StatefulWidget {
//   @override
//   _Animated_Text_KitsState createState() => _Animated_Text_KitsState();
// }
// class _Animated_Text_KitsState extends State<Animated_Text_Kits> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         title: Text("Animated Text Kit",style: TextStyle(color: Colors.black),),
//         centerTitle: true,
//         leading: IconButton(
//           onPressed: (){
//             Navigator.push(context, MaterialPageRoute(builder: (context)=>Advance()));
//           },
//           icon: Icon(Icons.arrow_back_ios,size: 20,color: Colors.black),
//         ),
//         actions: <Widget>[
//           IconButton(
//             onPressed: (){
//               Navigator.push(context, MaterialPageRoute(builder: (context)=>Animated_Text_Kits_Code()));
//             },
//             icon: Icon(Icons.transfer_within_a_station,size: 25,color: Colors.black),
//           )
//         ],
//       ),
//       backgroundColor: Colors.white,
//       body: Container(
//         color: Colors.white,
//         child:Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: <Widget>[
//                 ColorizeAnimatedTextKit(
//                   text: ["Colorize Animated Text Kit"],
//                   colors: [
//                     Colors.orange,
//                     Colors.blueGrey,
//                     Colors.green,
//                     Colors.blue,
//                   ],
//                   textStyle: TextStyle(
//                     fontSize: 25,
//                     fontFamily: "Times New Roman",
//                     letterSpacing: 2,
//                     color: Colors.blueGrey,
//                     fontWeight: FontWeight.bold,
//                   ),
//                   repeatForever: true,
//                   isRepeatingAnimation: true,
//                   speed: Duration(seconds: 1),
//                   alignment: AlignmentDirectional.topStart,
//                   textAlign: TextAlign.start,
//                   onTap: (){},
//                 ),
//                 FadeAnimatedTextKit(
//                   text: ["Fade Animated Text Kit"],
//                   textStyle: TextStyle(
//                     fontSize: 25,
//                     letterSpacing: 2,
//                     fontWeight: FontWeight.bold,
//                   ),
//                   repeatForever: true,
//                   isRepeatingAnimation: true,
//                   duration: Duration(seconds: 1),
//                   alignment: AlignmentDirectional.topStart,
//                   textAlign: TextAlign.start,
//                   onTap: (){},
//                 ),
//                 TyperAnimatedTextKit(
//                   text: ["Typer Animated Text Kit"],
//                   textStyle: TextStyle(
//                     fontSize: 25,
//                     fontFamily: "Times New Roman",
//                     letterSpacing: 2,
//                     color: Colors.blueGrey,
//                     fontWeight: FontWeight.bold,
//                   ),
//                   alignment: AlignmentDirectional.topStart,
//                   textAlign: TextAlign.start,
//                   speed: Duration(milliseconds: 500),
//                 ),
//                 TypewriterAnimatedTextKit(
//                   text: ["Typer Write Animated Text Kit"],
//                   textStyle: TextStyle(
//                     fontSize: 20,
//                     fontFamily: "Times New Roman",
//                     letterSpacing: 2,
//                     color: Colors.lightGreen,
//                     fontWeight: FontWeight.bold,
//                   ),
//                   alignment: AlignmentDirectional.topStart,
//                   textAlign: TextAlign.start,
//                   speed: Duration(milliseconds: 300),
//                 ),
//                 ScaleAnimatedTextKit(
//                   text: ["Scale Animated Text Kit"],
//                   textStyle: TextStyle(
//                     fontSize: 25,
//                     fontFamily: "Times New Roman",
//                     letterSpacing: 2,
//                     color: Colors.indigoAccent,
//                     fontWeight: FontWeight.bold,
//                   ),
//                   repeatForever: true,
//                   duration: Duration(seconds: 3),
//                 ),
//               ],
//             )
//         ),
//       ),
//     );
//   }
// }
