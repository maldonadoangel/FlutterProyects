import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://media.revistavanityfair.es/photos/60e8369f7c159c2a68148c45/master/w_1600%2Cc_limit/205924.jpg'),
          ),
        ),
        title: const Text('Mi amor ❤️'),
        centerTitle: false,
      ),
    );
  }
}
