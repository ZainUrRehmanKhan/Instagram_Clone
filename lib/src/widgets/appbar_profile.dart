import 'package:flutter/material.dart';

class EditProfileAppBar extends StatefulWidget {
  final String name;
  EditProfileAppBar({this.name});

  @override
  _EditProfileAppBarState createState() => _EditProfileAppBarState();
}

class _EditProfileAppBarState extends State<EditProfileAppBar> {
  bool flag = false;

  @override
  Widget build(BuildContext context) {
    return AppBar(
        elevation: 1.5,
        leading: IconButton(
            icon: Icon(Icons.close, size: 30),
            onPressed: () {
              Navigator.pop(context);
            }
        ),
        title: Text(widget.name, style: TextStyle(fontWeight: FontWeight.w400)),
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: !flag ?
              IconButton(
                  icon: Icon(Icons.done, size: 30, color: Colors.blue),
                  onPressed: () {
                    setState(() {
                      flag = true;
                    });
                    Future.delayed(Duration(seconds: 2),(){
                      Navigator.of(context).pop();
                    });
                  }
              )
                  :
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                ),
              )
          )
        ]
    );
  }
}
