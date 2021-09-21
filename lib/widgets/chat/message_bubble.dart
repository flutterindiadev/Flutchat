import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  const MessageBubble(this.message, this.userName, this.isme, {Key? key})
      : super(key: key);
  final String message;
  final String userName;
  final bool isme;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: isme ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: isme ? Colors.grey[300] : Theme.of(context).primaryColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
                bottomLeft: isme ? Radius.circular(12) : Radius.circular(0),
                bottomRight: isme ? Radius.circular(0) : Radius.circular(12)),
          ),
          width: 150,
          margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 12),
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Column(
            crossAxisAlignment:
                isme ? CrossAxisAlignment.end : CrossAxisAlignment.start,
            children: [
              Text(
                userName,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: isme ? Colors.black : Colors.white),
              ),
              Text(message,
                  style: TextStyle(color: isme ? Colors.black : Colors.white),
                  textAlign: isme ? TextAlign.end : TextAlign.start),
            ],
          ),
        ),
      ],
    );
  }
}
