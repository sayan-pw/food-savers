import 'package:flutter/material.dart';
import 'package:save_the_scran/chat/MessagesWidget.dart';
import 'package:save_the_scran/chat/NewMessageWidget.dart';

class ChatScreen extends StatelessWidget {
  static const String id = "chat_screen";
  final otherPerson;
  final itemName;

  const ChatScreen({Key key, this.otherPerson, this.itemName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.teal[800],
      appBar: AppBar(
        //toolbarHeight: 200,
        // automaticallyImplyLeading: false,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(15)),
        ),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        centerTitle: false,
        backgroundColor: Colors.teal[800],
        title: Row(
          children: [
            Text(
              "Topic : ",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Text(itemName, style: TextStyle(color: Colors.white)),
          ],
        ),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Messages(otherPerson: otherPerson),
            ),
            NewMessage(
              otherPerson: otherPerson,
              itemName: itemName,
            ),
          ],
        ),
      ),
    );
  }
}
