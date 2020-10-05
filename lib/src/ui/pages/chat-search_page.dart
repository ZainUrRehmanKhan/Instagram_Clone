import 'package:flutter/material.dart';
import 'package:instagram_clone/src/models/messages_model.dart';

class ChatSearchPage extends StatefulWidget {
  @override
  _ChatSearchPageState createState() => _ChatSearchPageState();
}

class _ChatSearchPageState extends State<ChatSearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1.5,
        title: TextField(
          autofocus: true,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'Search'
          ),
        )
      ),
      body: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
                padding: EdgeInsets.all(15),
                child: Text('Suggestions', style: TextStyle(fontSize: 15))
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(messageModel[index].avatar),
                  ),
                  title: Text(messageModel[index].name),
                  subtitle: Row(
                    children: [
                      Text(messageModel[index].description + ' . '),
                      Text(messageModel[index].time, style: TextStyle(color: Colors.grey))
                    ]
                  )
                );
              },
              itemCount: messageModel.length,
            )
          )
        ],
      ),
    );
  }
}
