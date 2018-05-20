import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/models/chat_model.dart';

class ChatScreen extends StatefulWidget {

  @override
  _ChatScreenState createState() => new _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummyData.length,
      itemBuilder: (context, i) => Column(
        children: <Widget>[
          Divider(
            height: 10.0,
          ),
          ListTile(
            leading: CircleAvatar(
              foregroundColor: Theme.of(context).primaryColor,
              backgroundColor: Colors.grey,
              backgroundImage: NetworkImage(dummyData[i].avatarUrl),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(dummyData[i].name, style: TextStyle(fontWeight: FontWeight.bold)),
                Text(dummyData[i].time, style: TextStyle(color: Colors.grey, fontSize: 14.0)),
              ],
            ),
            subtitle: Container(
              padding: const EdgeInsets.only(top: 5.0),
              child: Text(
                dummyData[i].message,
                style: TextStyle(color: Colors.grey, fontSize: 15.0),
              ),
            ),
          )
        ],
      ),
    );
  }
}

List<ChatModel> dummyData = [
  ChatModel(
      name: "Nelson Minaya",
      message: "WhatsApp Layout made on Flutter example",
      time: "9:40 PM",
      avatarUrl: "https://avatars0.githubusercontent.com/u/7952888?s=400&v=4"
  ),
  ChatModel(
      name: "Jhon Doe",
      message: "Message string text example",
      time: "9:55 PM",
      avatarUrl: "https://pbs.twimg.com/profile_images/378800000099157593/d4084a181e9382e070783858c0ccafd8_400x400.jpeg"
  )
];