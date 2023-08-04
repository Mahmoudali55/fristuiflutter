import 'package:flutter/material.dart';

class popbutwidget extends StatelessWidget {
  Widget? fristtext;
  Widget? sectext;
  Widget? thtext;
  Widget? fourtext;
  popbutwidget({Key? key,this.fristtext,this.sectext,this.thtext,this.fourtext}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   PopupMenuButton(itemBuilder: (context)=>[
      PopupMenuItem(child:fristtext,value: 'setting', ),
      PopupMenuItem(child:sectext,value: 'Stared', ),
      PopupMenuItem(child:thtext,value: 'ChatWeb', ),
      PopupMenuItem(child:fourtext,value: 'NewGroub', ),
    ]);
  }
}
