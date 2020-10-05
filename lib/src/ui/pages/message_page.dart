import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:instagram_clone/src/models/messages_model.dart';
import 'package:instagram_clone/src/ui/pages/chat-search_page.dart';
import 'package:instagram_clone/src/ui/pages/new-message_page.dart';

class MessagePage extends StatefulWidget {

  final pgController;
  MessagePage({this.pgController});

  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1.5,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            widget.pgController.animateToPage(0, duration: Duration(milliseconds: 500), curve: Curves.ease);
          },
        ),
        title: Text('Direct', style: TextStyle(fontWeight: FontWeight.w300)),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: Image.asset('assets/icons/video-call.png', width: 27),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => NewMessagePage()));
              },
              child: Image.asset('assets/icons/new-message.png', width: 25),
            ),
          )
        ],
      ),
      bottomNavigationBar: GestureDetector(
        onTap: () {},
        child: Container(
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(width: .1)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/icons/logo-icon.png', color: Colors.blue, width: 30,),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Text('Camera', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold)),
              )
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChatSearchPage()),
                );
              },
              child: Container(
                width: double.infinity,
                height: 35,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 0.9, style: BorderStyle.solid),
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Image.asset('assets/icons/search-filled.png', width: 20, color: Colors.grey,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text('Search', style: TextStyle(color: Colors.grey, fontSize: 18)),
                    )
                  ],
                ),
              ),
            )
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Text('Messages', style: TextStyle(fontSize: 18))
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
                      ],
                    ),
                    trailing: GestureDetector(
                      child: Image.asset('assets/icons/logo-icon.png', width: 24, color: Colors.grey),
                      onTap: () {}
                    ),
                  );
                },
              itemCount: messageModel.length,
            ),
          )
        ],
      )
    );
  }
}
