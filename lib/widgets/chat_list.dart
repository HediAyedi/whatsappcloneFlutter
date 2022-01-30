import 'package:flutter/material.dart';
import 'package:whatsappclone/info.dart';
import 'package:whatsappclone/widgets/myMessage.dart';
import 'package:whatsappclone/widgets/senderMessage.dart';

class ChatList extends StatelessWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context, index){
        if (messages[index]['isMe'] == true){
          //Mymessage
         return MyMessage(message: messages[index]['text'].toString(),date: messages[index]['time'].toString(),);
        }
        //Sender Message
        return  SenderMessage(message: messages[index]['text'].toString(),date: messages[index]['time'].toString(),);
      },
    );
  }
}
