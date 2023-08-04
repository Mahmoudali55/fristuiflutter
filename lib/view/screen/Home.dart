import 'package:chat_by_chat/view/screen/status.dart';
import 'package:flutter/material.dart';

import '../widget/popbutwidget.dart';
import 'chats.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        initialIndex: 1,
        child: Scaffold(
          backgroundColor:Colors.white ,
          appBar: AppBar(
            title: Text("chat_by_chat",
              style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            bottom: TabBar(tabs: [
              Tab(child: Icon(Icons.camera_alt_outlined),),
              Tab(child: Text("chats"),),
              Tab(child: Text("Status"),),
              Tab(child: Text("call")),
            ]),
            actions: [
              popbutwidget(
                fristtext:Text( "setting") ,
                sectext:Text("stared") ,
                thtext: Text("chat web"),
                fourtext: Text("profile"),
              ),
              IconButton(onPressed: (){}, icon: Icon(Icons.search))
            ],
          ),
          body: TabBarView(children: [
            Text('0'),
            Chats(),
            Status(),
            Text('3'),
          ]),
        ));
  }
}
