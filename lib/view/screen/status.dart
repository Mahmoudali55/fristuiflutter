import 'package:chat_by_chat/lists/liststatus.dart';
import 'package:chat_by_chat/view/widget/popbutwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_avatar/flutter_advanced_avatar.dart';
import 'package:get/get.dart';

import '../widget/storywidget.dart';
class Status extends StatelessWidget {
  const Status({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    return Column(
      children: [
        ListTile(
          title:Text("My Status",style: TextStyle(fontWeight: FontWeight.bold),) ,
          subtitle: Text("tap to add"),
          leading: Icon(Icons.person_pin,
            color: Colors.grey,
            size: 70,
          ),
          trailing: popbutwidget(fristtext:Text( "add status") ,
            sectext:Text("show my Status") ,
            thtext: Text("Delete status"),
            fourtext: Text("Hide"),
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 10),
          height: 30,
          width: double.infinity,
          color: Color(0xffe8eae9),
          child:Text("Recent updates",style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xff075e54),fontSize: 14),) ,
        ),
        Container(
          height: height*0.6,
          child: ListView.builder(
            itemCount: listStatus.length,
              itemBuilder: (context,i){
              return ListTile(
                onTap: (){
                 print("zfghjkl");
                 Get.to(StoryWidget(username:listStatus[i].name ,url:listStatus[i].image ,));

                },

                title: Text(listStatus[i].name,
                  style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 18),) ,
                subtitle: Text(listStatus[i].time),
                leading: AdvancedAvatar(
                  foregroundDecoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(color: Colors.blue,width: 3)),
                  image: AssetImage(listStatus[i].image),
                ),
              );
              }),
        )
      ],
    );
  }
}
