import 'package:fegno_task/src/core/extensions/context.extension.dart';
import 'package:fegno_task/src/core/extensions/widget.extension.dart';
import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  const Message({
    super.key,
    required this.isUser,
    required this.text,
  });
  final bool isUser;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isUser ? Alignment.topRight : Alignment.topLeft,
      child: Card(
        color: isUser ? const Color.fromRGBO(200, 230, 201, 1) : null,
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: context.sizeOf.width * 0.9),
          child: Text(text).pad(16),
        ),
      ),
    );
  }
}
