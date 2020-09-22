import 'dart:ui';
import 'package:creativedesign/Pages/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Tutorials extends StatefulWidget {
  @override
  _TutorialsState createState() => _TutorialsState();
}

class _TutorialsState extends State<Tutorials> {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  Widget CardExpansionTile(String num,String question,String answer){
    return Card(
      elevation: 5.0,
      margin: EdgeInsets.symmetric(vertical: 8,horizontal: 5),
      child: ExpansionTile(
        leading: CircleAvatar(
          child: Text(num,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600)),
        ),
        title: Text(question,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,letterSpacing: 0.8),),
        children: <Widget>[
          Container(
            child: Text(answer, style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,),textAlign: TextAlign.justify,),
            padding: EdgeInsets.only(left: 18,bottom: 10,right: 10,top: 10),
          )
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Flutter Tutorials",style: TextStyle(color: Colors.black),),
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
              launch("https://flutter.dev/docs/reference/tutorials");
            },
            icon: Icon(Icons.info_outline,size: 25,color: Colors.black,),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(5.0),
        child: ListView(
          children: <Widget>[
            CardExpansionTile("01","What is flutter?","Flutter is an open-source UI software development kit created by Google. It is used to develop applications for Android, iOS, Linux, Mac, Windows, Google Funchsia and the web from a single codebase."),
            CardExpansionTile("02","History of flutter?",
                "Stable release :- v1.17.5 / July 2, 2020;"
                "\nDeveloper(s) :- Google and community"
                "\nPreview release :- 1.19.0-4.3.pre / July 2, 2020;"
                "\nInitial release date :- May 2017"
                "\nPlatforms :- Android, iOS, Google Fuchsia, Web platform, Linux, macOS, Microsoft Windows"
                "\nWritten in :- C, C++, Dart"
            ),
            CardExpansionTile("03","What is dart?","Dart is a general-purpose, object-oriented programming language with C-style syntax. It is open-source and developed by Google in 2011. The purpose of Dart programming is to create a frontend user interfaces for the web and mobile apps. It is an important language for creating Flutter apps. The Dart language can be compiled both AOT (Ahead-of-Time) and JIT (Just-in-Time)."),
            CardExpansionTile("04","History of dart?",
                "Stable release :- 2.9.0 / August 5, 2020;"
                "\nPreview release :- 2.10.0-3.0.dev / August 5, 2020;"
                "\nTyping discipline :- 1.x: Optional; 2.x: Inferred (static, strong)"
                "\nFirst appeared :- October 10, 2011;"
                "\nLicense :- BSD"
                "\nDesigned by :- Lars Bak"
            ),
            CardExpansionTile("05","Is Flutter Free?","Yes. Flutter is free and open-source."),
            CardExpansionTile("06","Feature of flutter?",
                "The flutter framework feature to developers :-"
                "\n1). Beautiful and user interface."
                "\n2). Fast development."
                "\n3). High performance application."
                "\n4). Runs same UI for multiple platform."
                "\n5). Modern and reactive framework."
                "\n6). Huge widget catelog."
                "\n7). Uses dart programming language and it is very easy to learn."
            ),
            CardExpansionTile("07","Advantages of flutter?",
                "The advantages of flutter framework to below :-"
                "\n1). Single codebase to multiple platform to run."
                "\n2). Full control of widgets and layouts in flutter developers."
                "\n3). Fast development (capability and extendibility)."
                "\n4). The amazing hot reload."
                "\n5). Large repository of software packeges."
                "\n6). Automating testing for both platform."
            ),
            CardExpansionTile("08","Disadantages of flutter?",
                "The disadvantages of flutter framework to below :-"
                "\n1). Developer needs to learn new dart language."
                "\n2). The flutter is not good community."
                "\n3). The user interface UI and logic to intermixed."
            ),
            CardExpansionTile("09","Why flutter uses dart?","Flutter uses Dart as Dart allows Flutter to avoid the need for a separate declarative layout language like JSX and XML. The layout of Dart is declarative and programmatic and it makes it easy for developers to read and visualize it very easily and effortlessly."),
            CardExpansionTile("10","What is widget in flutter?","Everything is widget in flutter. e.g. Text, Button, Icon, Image etc."),
            CardExpansionTile("11","How many types of widgets are there in flutter?","There are broadly two types of widgets in Flutter. \n1). Stateful Widgets :- A widget that has mutable state. \n2). Stateless Widgets :- A widget that does not require mutable state."),
            CardExpansionTile("12","What is stateless widget in flutter?","A widget that does not require mutable state. A stateless widget is a widget that describes part of the user interface by building a constellation of other widgets that describe the user interface more concretely."),
            CardExpansionTile("13","What is stateful widget in flutter?","Stateless widgets subclass StatelessWidget . A stateful widget is dynamic: for example, it can change its appearance in response to events triggered by user interactions or when it receives data. Checkbox , Radio , Slider , InkWell , Form , and TextField are examples of stateful widgets."),
            CardExpansionTile("14","What is setState in flutter?","Calling setState notifies the framework that the internal state of this object has changed in a way that might impact the user interface in this subtree, which causes the framework to schedule a build for this State object."),
            CardExpansionTile("15","How to work in flutter?",""),
            CardExpansionTile("16","Dart language is frontend or backend?","Dart is currently actively used with Flutter for developing the frontend of cross-platform mobile apps. Dart can be also used for , but there is no mention of Dart being used for backend development."),
            CardExpansionTile("17","Architecture of flutter framework?",""),
            CardExpansionTile("18","What is Materialapp?","There are many more components and widgets that are accessed using MaterialApp. e.g. Text widget, Dropdownbutton widget, AppBar widget, Scaffold widget, ListView widget, StatelessWidget, StatefulWidget, IconButton widget, TextField widget, Padding widget, ThemeData widget, etc."),
            CardExpansionTile("19","What is Cupertino?","The Cupertino scaffold lays out the navigation bar on the top and the content between or behind the navigation bar. Like, the Scaffold widget, CupertinoPageScaffold widget also has certain properties which help you build your UI."),
            CardExpansionTile("20","What is Ahead of Time (AOT)?","Dart is AOT (Ahead Of Time) compiled to fast, predictable, native code, which allows almost all of Flutter to be written in Dart. This not only makes Flutter fast, virtually everything (including all the widgets) can be customized."),
            CardExpansionTile("21","What is a difference between thase operator \"??\" and \"?\" ",""),
            CardExpansionTile("22","What is the difference between double.infinity and MediaQuery?",
                "Double.infinity :- I want to be as big as my parent allows (double.infinity)"
                "\nMediaQuery :- I want to be as big as the screen (MediaQuery)."
            ),
            CardExpansionTile("23","What is future in flutter?","An object representing a delayed computation. A Future is used to represent a potential value, or error, that will be available at some time in the future. Receivers of a Future can register callbacks that handle the value or error once it is available. For example: Future<int> future = getFuture(); future."),
            CardExpansionTile("24","What is stream in flutter?","A Stream provides a way to receive a sequence of events. Each event is either a data event, also called an element of the stream, or an error event, which is a notification that something has failed. When a stream has emitted all its event, a single \"done\" event will notify the listener that the end has been reached."),
            CardExpansionTile("25","What is the difference between future and stream?",""),
            CardExpansionTile("26","What is release mode and when do you use it?",""),
            CardExpansionTile("27","What is ternary operator?","Ternary operator is the only available operator which handles 2 operands. Ternary conditional operator has 2 code execution sides and each will be know as True block and False Block."),
            CardExpansionTile("28","What is a null aware operator?","One is the ??= assignment operator, which assigns a value to a variable only if that variable is currently null: int a; "
                "// The initial value of a is null. a ??="
            ),
            CardExpansionTile("29","What are keys in flutter?","A Key is an identifier for Widgets, Elements and SemanticsNodes. A new widget will only be used to update an existing element if its key is the same as the key of the current widget associated with the element."),
            CardExpansionTile("30","The subclasses of keys in flutter","Subclasses of Key should either subclass LocalKey or GlobalKey. "),
            CardExpansionTile("31","Is flutter good for beginners?","Yes, if you know any Object Oriented programming language and JavaScript as a front-end language. If you don't know any of this languages then it will take around 3–4 months for you to learn flutter in an expert level."),
            CardExpansionTile("32","What are globalkey?","A key that is unique across the entire app. Global keys uniquely identify elements. Global keys provide access to other objects that are associated with those elements, such as BuildContext. For StatefulWidgets, global keys also provide access to State."),
            CardExpansionTile("33","What is the difference between final and const static?",""),
            CardExpansionTile("34","What is plugin in flutter?","Flutter provides a mechanism for authoring plugins that allows you to communicate with platform-specific code and also allows you to publish your plugins on pub. dev so that others can use them. In this codelab, you'll learn how to author your own plugins for iOS and Android."),
            CardExpansionTile("35","What are packages in flutter?","Packages, according to Flutterdocs, can be explained as “shared packages contributed by other developers to the Flutter and Dart ecosystems. This allows developers to quickly build an app without having to develop everything from scratch.”"),
            CardExpansionTile("36","What is the pubspec.yaml file and what does it do?",
                "* The pubspec.yaml file allows you to define the packages your app relies on, declare your assets like images, audio, video, etc. "
                "\n* It allows you to set constraints for your app. "
                "\n* For Android developers, this is roughly similar to a build.gradle file."
            ),
            CardExpansionTile("37","What are the difference between hot reload and hot restart?",
                "Hot Reload :- \n"
                "\n1). Flutter hot reload features works with a combination of Small r key on command prompt or Terminal. "
                "\n2). Hot reload feature quickly compile the newly added code in our file and sent the code to Dart Virtual Machine. After done updating the Code Dart Virtual Machine update the app UI with widgets. "
                "\n3). Hot Reload takes less time then Hot restart. "
                "\n4). There is also a drawback in Hot Reload, If you are using States in your application then Hot Reload preservers the States so they will not update on Hot Reload our set to their default values."
                "\n\nHot Restart :- \n"
                "\n1). Hot restart is much different than hot reload. "
                "\n2). In Hot restart, it destroys the preserves State value and set them to their default. So if you are using state value in your application then after every hot restart the developer gets fully compiled application and all the states will be set to their defaults. "
                "\n3). The app widget tree is completely rebuilt with a new typed code. "
                "\n4). Hot Restart takes much higher time than Hot reload."
            ),
            CardExpansionTile("38","What are the difference build modes in flutter?",
                "* The Flutter tooling supports three modes when compiling your app, and a headless mode for testing. "
                "\n* You choose a compilation mode depending on where you are in the development cycle. "
                "\n* The modes are: "
                "\n1).Debug "
                "\n2).Profile "
                "\n3).Release"
            ),
            CardExpansionTile("39","What is main() function in flutter?","main () function came from Java-like languages so it's where all program started, without it, you can't write any program on Flutter even without UI."),
            CardExpansionTile("40","What is runApp() function in flutter?","Hello world. The runApp() function takes the given Widget and makes it the root of the widget tree. In this example, the widget tree consists of two widgets, the Center widget and its child, the Text widget."),
            CardExpansionTile("41","What is super in flutter?","super is used to call the constructor of the base class. So in your example, the constructor of CardTitle is calling the constructor of StatelessWidget ."),
            CardExpansionTile("42","What is override in flutter?","The annotation @override marks an instance member as overriding a superclass member with the same name. The annotation applies to instance methods, getters and setters, and to instance fields, where it means that the implicit getter and setter of the field is marked as overriding, but the field itself is not."),
          ],
        ),
      )
    );
  }
}
