import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'VideoPlayer.dart';

void main() => runApp(Myapp());


AudioPlayer audioPlayer = new AudioPlayer();
var ap = new AudioCache(fixedPlayer: audioPlayer);

playonline() async {
  ap.clearCache();
  await audioPlayer.play(
      'https://bit.ly/33mw2OV');
}

playlocal() {
  ap.clearCache();
  ap.play('song.mp3');
}

pause() {
  audioPlayer.pause();
}

stop() {
  audioPlayer.stop();
}

class Myapp  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar:PreferredSize(
          preferredSize: Size.fromHeight(120.0), 
        child:AppBar(
          title:
          Text(
            "YourMusic.in",
            style: TextStyle(
              color: Colors.tealAccent,
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              fontFamily: 'Georgia',
              ),           
            ),
          backgroundColor: Colors.transparent,

            actions: <Widget>[
              
              Icon(Icons.search),
              Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
           child: Icon(Icons.more_vert),
        ),
              ],
            leading: Icon(Icons.menu),
            elevation: 50,
          centerTitle: true,
        ),
        ),
        extendBodyBehindAppBar: true,
        body:
        
         Container(
           decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage("https://bit.ly/2EHkAmJ"),
              fit: BoxFit.cover)
              ),
          alignment: Alignment.center,
          
          child:Column(
            children: <Widget>[
              
              Padding(
                padding: const EdgeInsets.only(top:150),
                child: Text(
                  'Offline Music',
                  style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic,color: Colors.teal[100],
                fontFamily: 'Georgia',),
                ),
              ),
              Padding(padding: const EdgeInsets.only(top:8),
              child: Container(
                decoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.tealAccent
                ),
                margin: EdgeInsets.only(right: 30, left: 30),
                  width: double.infinity,
                  height: 60,
                  
                  child: Row( children: <Widget>[
                    
                    


                    IconButton(
                        icon: Icon(Icons.play_circle_filled),
                        focusColor: Colors.black,
                        onPressed: playlocal,
                        iconSize: 35,
                      ),

                      IconButton(
                        icon: Icon(Icons.pause_circle_filled),
                        onPressed: pause,
                        iconSize: 35,
                      ),

                       IconButton(
                        icon: Icon(Icons.stop),
                        onPressed: stop,
                        iconSize: 35,
                      ),

                  ],

                  ),
              ),
              ),
              
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Online Music',
                style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic,color: Colors.teal[100],
                fontFamily: 'Georgia',),
                ),
              ),
              Padding(padding: const EdgeInsets.only(top:2),
              child: Container(
                decoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.tealAccent
                ),
                margin: EdgeInsets.only(right: 30, left: 30),
                  width: double.infinity,
                  height: 60,
                  child: Row(children: <Widget>[
                    IconButton(
                        icon: Icon(Icons.play_circle_filled),
                        focusColor: Colors.black,
                        onPressed: playonline,
                        iconSize: 35,
                      ),

                      IconButton(
                        icon: Icon(Icons.pause_circle_filled),
                        onPressed: pause,
                        iconSize: 35,
                      ),

                       IconButton(
                        icon: Icon(Icons.stop),
                        onPressed: stop,
                        iconSize: 35,
                      ),
                  ],),
              ),
              
              ),


              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Online Video',
                style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic,color: Colors.teal[100],
                fontFamily: 'Georgia',),
                ),
              ),
              Padding(padding: const EdgeInsets.only(top:2),
              child: Container(
                decoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.tealAccent
                ),
                margin: EdgeInsets.only(right: 30, left: 30),
                  width: double.infinity,
                  height: 60,
                  child: Row(children: <Widget>[
                    IconButton(
                        icon: Icon(Icons.play_circle_filled),
                        focusColor: Colors.black,
                        onPressed: playonline,
                        iconSize: 35,
                      ),

                      IconButton(
                        icon: Icon(Icons.pause_circle_filled),
                        onPressed: pause,
                        iconSize: 35,
                      ),

                       IconButton(
                        icon: Icon(Icons.stop),
                        onPressed: stop,
                        iconSize: 35,
                      ),
                  ],),
              ),
              
              ),

            
             
              Padding(
                padding: const EdgeInsets.only(top:20,right: 20,left: 20),
                child: new SamplePlayer1(),


              ),

            ],
          
          )

        )
        
        ),
      );
      
    
  }
}