import 'package:flutter/material.dart';
import 'package:instagram_clone/src/widgets/appbar_profile.dart';

//------------------------- Name Page -----------------------------

class EditNamePage extends StatefulWidget {
  @override
  _EditNamePageState createState() => _EditNamePageState();
}

class _EditNamePageState extends State<EditNamePage> {
  TextEditingController nameTextEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    nameTextEditingController.text = 'Zain khan';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  PreferredSize(
        child: EditProfileAppBar(name: 'Name'),
        preferredSize: Size.fromHeight(56),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top : 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Name', style: TextStyle(color: Colors.grey[350], fontSize: 13)),
                  TextFormField(
                    controller: nameTextEditingController,
                    decoration: InputDecoration(
                        border: InputBorder.none
                    ),
                  ),
                  Divider(thickness: 1, height: 1),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text("Help people discover your account by using the name you're known by either your full name,  nickname, or business name.",
                        style: TextStyle(color: Colors.grey[500], fontSize: 13, ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text("You can only change your name twice in 14 days.",
                        style: TextStyle(color: Colors.grey[500], fontSize: 13, ),
                      textAlign: TextAlign.justify,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}

//------------------------- Username Page -----------------------------

class EditUsernamePage extends StatefulWidget {
  @override
  _EditUsernamePageState createState() => _EditUsernamePageState();
}

class _EditUsernamePageState extends State<EditUsernamePage> {
  TextEditingController usernameTextEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    usernameTextEditingController.text = 'zainkhan.official10';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:  PreferredSize(
          child: EditProfileAppBar(name: 'Username'),
          preferredSize: Size.fromHeight(56),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top : 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      controller: usernameTextEditingController,
                      decoration: InputDecoration(
                          border: InputBorder.none
                      ),
                    ),
                    Divider(thickness: 1, height: 1),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text("You'll be able to change your username back to",
                        style: TextStyle(color: Colors.grey[500], fontSize: 12 ),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    Text("zainkhan.official10 for another 14 days.",
                      style: TextStyle(color: Colors.grey[500], fontSize: 12 ),
                      textAlign: TextAlign.justify,
                    ),
                    Text("Learn More",
                      style: TextStyle(color: Colors.blue, fontSize: 15 ),
                      textAlign: TextAlign.justify,
                    )
                  ],
                ),
              )
            ],
          ),
        )
    );
  }
}

//------------------------- Bio Page -----------------------------

class EditBioPage extends StatefulWidget {
  @override
  _EditBioPageState createState() => _EditBioPageState();
}

class _EditBioPageState extends State<EditBioPage> {
  TextEditingController bioTextEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    bioTextEditingController.text = 'My bio text';
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:  PreferredSize(
          child: EditProfileAppBar(name: 'Bio'),
          preferredSize: Size.fromHeight(56),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    controller: bioTextEditingController,
                    decoration: InputDecoration(
                        border: InputBorder.none
                    ),
                  ),
                  Divider(thickness: 1, height: 1, color: Colors.blue)
                ],
              ),
            )
          ],
        )
    );
  }
}

//------------------------- Email Page -----------------------------

class EditEmailPage extends StatefulWidget {
  @override
  _EditEmailPageState createState() => _EditEmailPageState();
}

class _EditEmailPageState extends State<EditEmailPage> {
  TextEditingController emailTextEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    emailTextEditingController.text = 'zainkhan.official10@gmail.com';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:  PreferredSize(
          child: EditProfileAppBar(name: 'Change Email'),
          preferredSize: Size.fromHeight(56),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
          child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.email),
                  title: TextFormField(
                    controller: emailTextEditingController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                        hintText: 'Zain'
                    ),
                  )
                ),
                Divider(height: 1, thickness: 1, color: Colors.blue)
              ]
          ),
        )
    );
  }
}

//------------------------- Phone Number Page -----------------------------

//--------------- /// TODO Phone Number Page ------------------------------