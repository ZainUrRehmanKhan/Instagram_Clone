import 'package:flutter/material.dart';

class DrawerProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      decoration: BoxDecoration(
        border: Border(left: BorderSide(width: 0.2))
      ),
      child: Drawer(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 30),
            ),
            ListTile(
              title: Text('Profile Name', style: TextStyle(fontWeight: FontWeight.w300, fontSize: 25)),
            ),
            Divider(height: 0),
            ListTile(
              leading: Icon(Icons.restore, color: Colors.black),
              title: Text('Archive', style: TextStyle(fontWeight: FontWeight.w400)),
            ),
            ListTile(
              leading: Icon(Icons.slow_motion_video, color: Colors.black),
              title: Text('Your Activity', style: TextStyle(fontWeight: FontWeight.w400)),
            ),
            ListTile(
              leading: Icon(Icons.developer_board, color: Colors.black),
              title: Text('QR Code', style: TextStyle(fontWeight: FontWeight.w400)),
            ),
            ListTile(
              leading: Icon(Icons.bookmark_border, color: Colors.black),
              title: Text('Saved', style: TextStyle(fontWeight: FontWeight.w400)),
            ),
            ListTile(
              leading: Icon(Icons.list, color: Colors.black),
              title: Text('Close Friends', style: TextStyle(fontWeight: FontWeight.w400)),
            ),
            ListTile(
              leading: Icon(Icons.group_add, color: Colors.black),
              title: Text('Discover People', style: TextStyle(fontWeight: FontWeight.w400)),
            ),
            Expanded(
              child: Container(),
            ),
            Divider(height: 0),
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                height: 50,
                child: ListTile(
                  leading: Icon(Icons.settings, color: Colors.black),
                  title: Text('Settings', style: TextStyle(fontWeight: FontWeight.w400)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
