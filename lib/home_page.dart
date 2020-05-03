import 'package:flutter/material.dart';
import 'package:flutter_demo_app/chat_screen.dart';
class HomePage extends StatelessWidget{
  Widget build(BuildContext context){
    return DefaultTabController(
      length:4,
      child: Scaffold(
        backgroundColor: Color(0XFF4A4A58),
            appBar: AppBar(
              title: Text("Chat App"),
              centerTitle: true,
              actions: <Widget>[
                Icon(Icons.video_call),
                Icon(Icons.add_call),
                Icon(Icons.more_vert)
              ],

            ),
         body: TabBarView(

           children: <Widget>[
             Container(),
             ChatScreen(),
             Container(),
             Container()
           ],
         ),
          floatingActionButton: FloatingActionButton(
           child: Icon(Icons.message),
            onPressed: () { print('Clicked'); },
    ),
    floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }

}