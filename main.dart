import 'package:flutter/material.dart';

main(){
  runApp(MusicApp());
}

class MusicApp extends StatelessWidget {
  const MusicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LandingPage(),
      },
    );
  }
}

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            //options menu row
            Container(height: 40,
              child: Row(
                children: [
                  //expand icon
                  Container(width: 60,
                    child: Icon(Icons.expand_more, size: 30,),
                  ),
                  //center text
                  Expanded(child: Center(
                    child: Container(child: Text('kneazllle'),),
                  ),),
                  //option menu
                  Container(width: 60,
                    child: Icon(Icons.more_vert,size: 28,),
                  ),
                ],
              ),
            ),
            // options menu end here

            // music image code row
            Expanded(
              child: Container(
                margin: EdgeInsets.all(30),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.asset('images/music.jpg',fit: BoxFit.cover,),
                ),
              ),
            ),
            // music image code end here

            //controller code start here
            Container(height: 220,
              child: Column(
                children: [
                  Container(height: 60, padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      children: [
                        Expanded(child: Container(color: Colors.white,
                          child: Container(
                            child: Column(
                              children: [
                                Expanded(child: Container(height: 10, width: double.infinity,
                                  child: Text('Die for you', style: TextStyle(fontWeight: FontWeight.w800, fontSize: 25),textAlign: TextAlign.left,))),
                                Container(height: 20, width: double.infinity,
                                  child: Text('The Weekend & Ariana Grande',textAlign: TextAlign.left,),
                                )
                              ],
                            ),
                          ),
                        )),
                        Container(width: 80,
                          child: Container( padding: EdgeInsets.symmetric(vertical: 7,horizontal: 7),decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color(0xFFFF0000)),
                            child: Row(
                              children: [
                                Container(child: Icon(Icons.online_prediction,color: Colors.white,),),
                                Container(child: Text('205',style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                                ),), padding: EdgeInsets.fromLTRB(7, 0, 0, 0),)
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ),
                  Container(height: 33,
                    child: MusicBar(),
                  ),
                  Container(height: 16,
                    child: Timeline(),
                  ),
                  Expanded(child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Controller(),
                  )),
                  Container(height: 40,
                    margin:EdgeInsets.symmetric(vertical: 10),
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Connect(),
                  )
                ],
              ),
            ),
            // controller code end here
          ],
        ),
      ),
    );
  }
}

class Connect extends StatelessWidget {
  const Connect({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(width: 110, padding: EdgeInsets.fromLTRB(5, 2, 2, 5),decoration: BoxDecoration(borderRadius: BorderRadius.circular(14),color: Colors.white24),
          child: Center(
            child: Row(
              children: [
                Container(width: 30,
                  child: Icon(Icons.headphones,color: Colors.red,),
                ),
                Expanded(child: Container(width: 30, padding: EdgeInsets.fromLTRB(7, 3, 3, 3),
                  child: Text('Airpod Pro',style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w600
                  ),),
                ),)
              ],
            ),
          )
        ),
        Container(width: 40,
          child: Icon(Icons.ios_share),
        )
      ],
    );
  }
}


class Controller extends StatelessWidget {
  const Controller({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(width: 30, child: Icon(Icons.shuffle),),
        Container(width: 180,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(child: Icon(Icons.skip_previous, size: 30,),),
              Container(child: Icon(Icons.pause_circle_filled,size: 70,),),
              Container(child: Icon(Icons.skip_next, size: 30,),),
            ],
          ),
        ),
        Container(width: 30, child: Icon(Icons.replay, color: Colors.red,),)
      ],
    );
  }
}

class Timeline extends StatelessWidget {
  const Timeline({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
          Container(child: Text('0:00',textAlign: TextAlign.left,),),
          Spacer(),
          Container(child: Text('3:30',textAlign: TextAlign.right),)
        ],
      ),
    );
  }
}


class MusicBar extends StatelessWidget {
  const MusicBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Stack(
          children: [
            Positioned(
                top :18,
                child: Container(width:500, height: 3, color: Colors.black12) ),
            Positioned(
              top: 15,
              child: Container(width: 10, height: 10, decoration:BoxDecoration(borderRadius: BorderRadius.circular(100),color: Colors.red)),
            ),
          ],
        )
      ),
    );
  }
}
