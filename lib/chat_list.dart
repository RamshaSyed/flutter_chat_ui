import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo_app/user.dart';

class ChatList extends StatelessWidget{
 List<User> list=[
   User("Elsa" , "How r you", "12:20 PM"),
   User("Anna" , "by", "12:00 AM"),
   User("Bro" , "ok thanks", "1:20 PM"),
   User("Dash-07" , "submit assignment", "8:09 AM"),
 ];
  Widget build(BuildContext context){
    return ListView.builder(
        itemCount: 4,
        itemBuilder:(BuildContext context,int index){
          return ListTile(
            leading:CircleAvatar(
              backgroundImage: NetworkImage(list[index].dpUrl+index.toString()+".jpg"),
            ),

            title: Text(list[index].userName,style:new TextStyle(color:Colors.blue),),
            subtitle:Text(list[index].lastMessage,style:new TextStyle(color:Colors.white),) ,
            trailing:Text(list[index].time,style:new TextStyle(color:Colors.white),) ,
          );


        });

  }
}