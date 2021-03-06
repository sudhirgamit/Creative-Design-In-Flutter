import 'package:creativedesign/Advance_Animation/loading_animations.dart';
import 'package:creativedesign/Advance_Multimedia/photo_filters.dart';
import 'package:creativedesign/Advance_Multimedia/wallpapers.dart';
import 'package:creativedesign/Animation/animated_align.dart';
import 'package:creativedesign/Animation/animated_builder.dart';
import 'package:creativedesign/Animation/animated_container.dart';
import 'package:creativedesign/Animation/animated_crossfade.dart';
import 'package:creativedesign/Animation/animated_icon.dart';
import 'package:creativedesign/Animation/animated_list.dart';
import 'package:creativedesign/Animation/animated_opacity.dart';
import 'package:creativedesign/Animation/animated_padding.dart';
import 'package:creativedesign/Animation/animated_physicalmodel.dart';
import 'package:creativedesign/Animation/animated_positioned.dart';
import 'package:creativedesign/Animation/animated_size.dart';
import 'package:creativedesign/Animation/animated_switcher.dart';
import 'package:creativedesign/Animation/animated_textstyle.dart';
import 'package:creativedesign/AppBar/bottom_appbar.dart';
import 'package:creativedesign/AppBar/custom_appbar.dart';
import 'package:creativedesign/AppBar/search_bar.dart';
import 'package:creativedesign/AppBar/simple_appbar.dart';
import 'package:creativedesign/AppBar/sliver_appbar.dart';
import 'package:creativedesign/Async/future_builders.dart';
import 'package:creativedesign/Async/listview_builders.dart';
import 'package:creativedesign/Async/stream_builders.dart';
import 'package:creativedesign/Authentication/login_1.dart';
import 'package:creativedesign/Authentication/login_2.dart';
import 'package:creativedesign/Authentication/login_3.dart';
import 'package:creativedesign/Authentication/login_4.dart';
import 'package:creativedesign/Authentication/signup_1.dart';
import 'package:creativedesign/Authentication/signup_2.dart';
import 'package:creativedesign/Authentication/signup_3.dart';
import 'package:creativedesign/Authentication/signup_4.dart';
import 'package:creativedesign/Cupertino/cupertino_actionsheet.dart';
import 'package:creativedesign/Cupertino/cupertino_activityindicator.dart';
import 'package:creativedesign/Cupertino/cupertino_alertdialog.dart';
import 'package:creativedesign/Cupertino/cupertino_button.dart';
import 'package:creativedesign/Cupertino/cupertino_contextmenu.dart';
import 'package:creativedesign/Cupertino/cupertino_datepicker.dart';
import 'package:creativedesign/Cupertino/cupertino_others.dart';
import 'package:creativedesign/Cupertino/cupertino_slivernavbar.dart';
import 'package:creativedesign/Cupertino/cupertino_timepicker.dart';
import 'package:creativedesign/Database/mysql_database.dart';
import 'package:creativedesign/Database/sqlite_database.dart';
import 'package:creativedesign/E-Commerce/e_commerce_1.dart';
import 'package:creativedesign/E-Commerce/e_commerce_2.dart';
import 'package:creativedesign/E-Commerce/e_commerce_3.dart';
import 'package:creativedesign/E-Commerce/e_commerce_4.dart';
import 'package:creativedesign/Food/food_1.dart';
import 'package:creativedesign/Food/food_2.dart';
import 'package:creativedesign/Food/food_3.dart';
import 'package:creativedesign/Food/food_4.dart';
import 'package:creativedesign/Layouts/flexibles.dart';
import 'package:creativedesign/Lists/expansion_tile.dart';
import 'package:creativedesign/Lists/gridviews.dart';
import 'package:creativedesign/Lists/listviews.dart';
import 'package:creativedesign/Lists/pageviews.dart';
import 'package:creativedesign/Multimedia/camera.dart';
import 'package:creativedesign/Multimedia/gallary.dart';
import 'package:creativedesign/Multimedia/video_players.dart';
import 'package:creativedesign/Navigation/bottom_navigation.dart';
import 'package:creativedesign/Navigation/bottom_tabs.dart';
import 'package:creativedesign/Navigation/navigation_drawer.dart';
import 'package:creativedesign/Navigation/page_selecter.dart';
import 'package:creativedesign/Navigation/tabs.dart';
import 'package:creativedesign/Layouts/columns.dart';
import 'package:creativedesign/Layouts/containers.dart';
import 'package:creativedesign/Layouts/expandeds.dart';
import 'package:creativedesign/Layouts/rows.dart';
import 'package:creativedesign/Layouts/stacks.dart';
import 'package:creativedesign/Layouts/wraps.dart';
import 'package:creativedesign/Other_Widgets/categories.dart';
import 'package:creativedesign/Other_Widgets/datatables.dart';
import 'package:creativedesign/Other_Widgets/dismissibles.dart';
import 'package:creativedesign/Other_Widgets/refreshindicators.dart';
import 'package:creativedesign/Other_Widgets/stepers.dart';
import 'package:creativedesign/Pages/dashboard.dart';
import 'package:creativedesign/Pages/homepage.dart';
import 'package:creativedesign/Pages/loginpage.dart';
import 'package:creativedesign/Plugins/carousel_sliders.dart';
import 'package:creativedesign/Plugins/flutter_slidables.dart';
import 'package:creativedesign/Plugins/shared_preferenceses.dart';
import 'package:creativedesign/Plugins/url_launchers.dart';
import 'package:creativedesign/Profiles/profile_1.dart';
import 'package:creativedesign/Profiles/profile_2.dart';
import 'package:creativedesign/Profiles/profile_3.dart';
import 'package:creativedesign/Profiles/profile_4.dart';
import 'package:creativedesign/Settings/setting_1.dart';
import 'package:creativedesign/Settings/setting_2.dart';
import 'package:creativedesign/Settings/setting_3.dart';
import 'package:creativedesign/Settings/setting_4.dart';
import 'package:creativedesign/Socialmedia/connectivities.dart';
import 'package:creativedesign/Socialmedia/facebook_signin.dart';
import 'package:creativedesign/Socialmedia/google_signin.dart';
import 'package:creativedesign/Utils/constants.dart';
import 'package:creativedesign/Widgets/aligns.dart';
import 'package:creativedesign/Widgets/button_box.dart';
import 'package:creativedesign/Widgets/card_box.dart';
import 'package:creativedesign/Widgets/checkbutton_box.dart';
import 'package:creativedesign/Navigation/dialog_box.dart';
import 'package:creativedesign/Widgets/dropdown_box.dart';
import 'package:creativedesign/Widgets/icon_box.dart';
import 'package:creativedesign/Widgets/image_box.dart';
import 'package:creativedesign/Widgets/progress_box.dart';
import 'package:creativedesign/Widgets/text_box.dart';
import 'package:creativedesign/Widgets/textfield_box.dart';
import 'package:creativedesign/Widgets/textformfields.dart';
import 'package:creativedesign/Widgets/textrich_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp
    ]);
    return LayoutBuilder(
      builder: (BuildContext context,BoxConstraints view){
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Creative Design",
          theme: ThemeData(
              primarySwatch: Colors.blueGrey,
              appBarTheme: AppBarTheme(color: Colors.transparent),
              textTheme: TextTheme(title: TextStyle(color: Colors.black)),
              primaryIconTheme: IconThemeData(color: Colors.black),
              floatingActionButtonTheme: FloatingActionButtonThemeData(backgroundColor: Colors.cyan,elevation: 5.0)
          ),
          home: Constants.prefs.getBool("LoggedIn") == true ? Dashboard() : LoginPage(),
          routes: {
            // Widgets
            "/login": (context)=>LoginPage(),
            "/dashboard": (context)=>Dashboard(),
            "/home": (context)=>HomePage(),
            "/icon": (context)=>Icon_Box(),
            "/text": (context)=>Text_Box(),
            "/image": (context)=>Image_Box(),
            "/button": (context)=>Button_Box(),
            "/progress": (context)=>Progress_Box(),
            "/card": (context)=>Card_Box(),
            "/textfield": (context)=>TextField_Box(),
            "/dropdown": (context)=>DropDown_Box(),
            "/check": (context)=>CheckButton_Box(),
            "/aligns": (context)=>Aligns(),
            "/textformfields": (context)=>TextFormFields(),
            "/textrich": (context)=>TextRich_Box(),
            // Appbar
            "/simpleAB": (context)=>Simple_AppBar(),
            "/sliverAB": (context)=>Sliver_AppBar(),
            "/customAB": (context)=>Custom_AppBar(),
            "/bottomAB": (context)=>Bottom_Appbar(),
            "/searchBar": (context)=>Search_Bar(),
            // Navigation
            "/dialog": (context)=>Dialog_Box(),
            "/tabs": (context)=>Tabs(),
            "/bottomtabs": (context)=>Bottom_Tabs(),
            "/nvDrawer": (context)=>Navigation_Drawer(),
            "/bottomNav": (context)=>Bottom_Navigation(),
            "/pageSelecter": (context)=>Page_Selecter(),
            // Layouts
            "/containers": (context)=>Containers(),
            "/rows": (context)=>Rows(),
            "/columns": (context)=>Columns(),
            "/wraps": (context)=>Wraps(),
            "/expandeds": (context)=>Expandeds(),
            "/stacks": (context)=>Stacks(),
            "/flexible": (context)=>Flexibles(),
            // Lists
            "/listviews": (context)=>ListViews(),
            "/gridviews": (context)=>GridViews(),
            "/pageviews": (context)=>PageViews(),
            "/expansiontile": (context)=>Expansion_Tile(),
            // Async
            "/listviewB": (context)=>ListView_Builders(),
            "/futureB": (context)=>Future_Builders(),
            "/streamB": (context)=>Stream_Builders(),
            // Multimedia
            "/camera": (context)=>Camera(),
            "/gallary": (context)=>Gallary(),
            "/videoplay": (context)=>Video_Players(),
            // Animation
            "/anim_container": (context)=>Animated_Container(),
            "/anim_icon": (context)=>Animated_Icon(),
            "/anim_size": (context)=>Animated_Size(),
            "/anim_padding": (context)=>Animated_Padding(),
            "/anim_crossfade": (context)=>Animated_CrossFade(),
            "/anim_builder": (context)=>Animated_Builder(),
            "/anim_align": (context)=>Animated_Align(),
            "/anim_textstyle": (context)=>Animated_TextStyle(),
            "/anim_opacity": (context)=>Animated_Opacity(),
            "/anim_model": (context)=>Animated_PhysicalModel(),
            "/anim_positioned": (context)=>Animated_Positioned(),
            "/anim_switcher": (context)=>Animated_Switcher(),
            "/anim_list": (context)=>Animated_List(),
            // Cupertino
            "/cup_actionsheet": (context)=>Cupertino_ActionSheet(),
            "/cup_indicator": (context)=>Cupertino_ActivityIndicator(),
            "/cup_alertdialog": (context)=>Cupertino_AlertDialog(),
            "/cup_button": (context)=>Cupertino_Button(),
            "/cup_menu": (context)=>Cupertino_ContextMenu(),
            "/cup_datepicker": (context)=>Cupertino_DatePicker(),
            "/cup_timepicker": (context)=>Cupertino_TimePicker(),
            "/cup_sliver": (context)=>Cupertino_SliverNavBar(),
            "/cup_others": (context)=>Cupertino_Others(),

            // Advance Widgets
            // Plugins
            "/shared_pref": (context)=>Shared_Preferenceses(),
            "/url_launch": (context)=>URL_Launchers(),
            "/flut_slidable": (context)=>Flutter_Slidables(),
            "/carousel_slider": (context)=>Carousel_Sliders(),
            // Advance Animations
            //"/anim_text_kit": (context)=>Animated_Text_Kits(),
            "/loading_anim": (context)=>Loading_Animations(),
            // Multimedia
            "/photofilter": (context)=>Photo_Filters(),
            "/wallpaper": (context)=>Wallpapers(),
            // Socialmedia
            "/connectivity": (context)=>Connectivities(),
            "/google_signin": (context)=>Google_SignIn(),
            "/facebook_signin": (context)=>Facebook_SignIn(),
            // Database
            "/mysql_db": (context)=>MySQL_Database(),
            "/sqlite_db": (context)=>SQLite_Database(),
            // Other Widgets
            "/dismissible": (context)=>Dismissibles(),
            "/refresh": (context)=>RefreshIndicators(),
            "/steper": (context)=>Stepers(),
            "/datatable": (context)=>DataTables(),
            "/categories": (context)=>Categories(),

            // Creative Design
            // Authentication
            "/login_1": (context)=>Login_1(),
            "/signup_1": (context)=>SignUp_1(),
            "/login_2": (context)=>Login_2(),
            "/signup_2": (context)=>SignUp_2(),
            "/login_3": (context)=>Login_3(),
            "/signup_3": (context)=>SignUp_3(),
            "/login_4": (context)=>Login_4(),
            "/signup_4": (context)=>SignUp_4(),
            // Profile
            "/profile_1": (context)=>Profile_1(),
            "/profile_2": (context)=>Profile_2(),
            "/profile_3": (context)=>Profile_3(),
            "/profile_4": (context)=>Profile_4(),
            // Settings
            "/setting_1": (context)=>Setting_1(),
            "/setting_2": (context)=>Setting_2(),
            "/setting_3": (context)=>Setting_3(),
            "/setting_4": (context)=>Setting_4(),
            // E-Commerce
            "/e_commerce_1": (context)=>E_Commerce_1(),
            "/e_commerce_2": (context)=>E_Commerce_2(),
            "/e_commerce_3": (context)=>E_Commerce_3(),
            "/e_commerce_4": (context)=>E_Commerce_4(),
            // Food
            "/food_1": (context)=>Food_1(),
            "/food_2": (context)=>Food_2(),
            "/food_3": (context)=>Food_3(),
            "/food_4": (context)=>Food_4(),
          },
        );
      },
    );
  }
}


