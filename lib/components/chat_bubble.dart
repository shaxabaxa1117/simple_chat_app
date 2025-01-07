

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {

  final String message;
  final bool isCurrentUser;
  const ChatBubble({super.key, required this.message, required this.isCurrentUser});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 3, horizontal: 15),
      padding: EdgeInsets.all(18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: isCurrentUser ? Colors.green : Colors.grey.shade400
      ),
      child: Text(message,style: const TextStyle(color: Color.fromARGB(221, 255, 255, 255), fontWeight: FontWeight.w500,fontSize: 17),),
    );
  }
}