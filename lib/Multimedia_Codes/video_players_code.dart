import 'package:creativedesign/Multimedia/video_players.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:widget_with_codeview/syntax_highlighter.dart';

class Video_Players_Code extends StatelessWidget {
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
        title: Text("Video Player",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Video_Players()));
          },
          icon: Icon(Icons.arrow_back_ios,size: 20,color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){
              launch("https://github.com/sudhirgamit/Creative-Design-In-Flutter/blob/master/lib/Multimedia/video_players.dart");
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
import 'package:chewie/chewie.dart';
import 'package:creativedesign/Multimedia_Codes/video_players_code.dart';
import 'package:creativedesign/Pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Video_Players extends StatefulWidget {
  @override
  _Video_PlayersState createState() => _Video_PlayersState();
}
class _Video_PlayersState extends State<Video_Players> {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  VideoPlayerController _videoPlayerController;
  ChewieController _chewieController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _videoPlayerController = VideoPlayerController.network("https://www.radiantmediaplayer.com/media/big-buck-bunny-360p.mp4");
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController,
      aspectRatio: 3/2,
      //autoPlay: true,
      looping: true,
      autoInitialize: true,
      showControlsOnInitialize: true
    );
  }
  @override
  void dispose(){
    _videoPlayerController.dispose();
    _chewieController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Video Player",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
          },
          icon: Icon(Icons.arrow_back_ios,size: 20,color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Video_Players_Code()));
            },
            icon: Icon(Icons.transfer_within_a_station,size: 25,color: Colors.black),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Expanded(
            child: Center(
              child: Chewie(
                controller: _chewieController,
              ),
            ),
          ),
          FlatButton(
            onPressed: () {
              _chewieController.enterFullScreen();
            },
            child: Text(''),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      _chewieController.dispose();
                      _videoPlayerController.pause();
                      _videoPlayerController.seekTo(Duration(seconds: 0));
                      _chewieController = ChewieController(
                        videoPlayerController: _videoPlayerController,
                        aspectRatio: 3 / 2,
                        autoPlay: true,
                        looping: true,
                      );
                    });
                  },
                  child: Padding(
                    child: Text(""),
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                  ),
                ),
              ),
            ],
          ),
        ],
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
