import 'package:chat_by_chat/lists/listchat.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_avatar/flutter_advanced_avatar.dart';

class Chats extends StatelessWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: listChats.length,itemBuilder: (context,i){
      return ListTile(
        title: Text(listChats[i].name),
        subtitle: Text(listChats[i].msg),
        trailing: Text(listChats[i].time),
        leading: AdvancedAvatar(image: AssetImage(listChats[i].image),)
      );
    });
  }
}
