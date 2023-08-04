import 'package:chat_by_chat/model/modelstatus.dart';

List<ModelStatus>listStatus=[
  ModelStatus(name: "mahmoud ali",
      image:'data:image/jpeg;base64,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',
      time: '2 min age', ),
  ModelStatus(name: "mahmoud ali",
      image:'assests/images/download.png',
      time: '2 min age', ),
  ModelStatus(name: "mahmoud ali",
      image:'assests/images/download.png',
      time: '2 min age', ),
  ModelStatus(name: "mahmoud ali",
      image:'assests/images/download.png',
      time: '2 min age', ),
  ModelStatus(name: "mahmoud ali",
      image:'assests/images/download.png',
      time: '2 min age', ),
  ModelStatus(name: "mahmoud ali",
      image:'assests/images/download.png',
      time: '2 min age', ),
  ModelStatus(name: "mahmoud ali",
      image:'assests/images/download.png',
      time: '2 min age', ),
  ModelStatus(name: "mahmoud ali",
      image:'assests/images/download.png',
      time: '2 min age', ),
  ModelStatus(name: "mahmoud ali",
      image:'assests/images/download.png',
      time: '2 min age', ),
  ModelStatus(name: "mahmoud ali",
      image:'assests/images/download.png',
      time: '2 min age', ),
  ModelStatus(name: "mahmoud ali",
      image:'assests/images/download.png',
      time: '2 min age', ),
];