import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/src/ui/pages/sub-edit-profile_pages.dart';
import 'package:instagram_clone/src/widgets/appbar_profile.dart';
import 'package:instagram_clone/src/widgets/bottom-sheet-handle.dart';

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: PreferredSize(
          child: EditProfileAppBar(name: 'Edit Profile'),
          preferredSize: Size.fromHeight(56),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: GestureDetector(
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 50,
                              backgroundImage: NetworkImage('https://images.unsplash.com/photo-1599162475526-89950ab28b0a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80'),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text('Change Profile Photo', style: TextStyle(color: Colors.blue, fontSize: 17)),
                            )
                          ],
                        ),
                        onTap: () {
                          _editProfilePhotoModalBottomSheet(context);
                        }
                      )
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text('Name', style: TextStyle(color: Colors.grey[350], fontSize: 11)),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => EditNamePage()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: SizedBox(
                            width: double.infinity,
                            child: Text('Zain Khan', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400))
                        ),
                      ),
                    ),
                    Divider(thickness: 1),

                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text('Username', style: TextStyle(color: Colors.grey[350], fontSize: 11)),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => EditUsernamePage()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: SizedBox(
                            width: double.infinity,
                            child: Text('zainkhan.official10', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400))
                        ),
                      ),
                    ),
                    Divider(thickness: 1),

                    TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: 'Website',
                        labelStyle: TextStyle(
                          color: Colors.grey[350],
                          fontSize: 15,
                            fontWeight: FontWeight.w400
                        )
                      ),
                    ),
                    Divider(height: 1, thickness: 1, color: Colors.grey[350]),

                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text('Bio', style: TextStyle(color: Colors.grey[350], fontSize: 11)),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => EditBioPage()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: SizedBox(
                            width: double.infinity,
                            child: Text('My Bio Text', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400))
                        ),
                      ),
                    ),
                    Divider(thickness: 1),
                  ],
                ),
              ),

              Divider(thickness: 0.5, color: Colors.grey[250]),
              GestureDetector(
                onTap: () {},
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 5, bottom: 5, left: 15, right: 15),
                    child: Text('Switch to Professional Account', style: TextStyle(color: Colors.blue, fontSize: 16)),
                  ),
                ),
              ),
              Divider(thickness: 0.5, color: Colors.grey[250]),
              Divider(thickness: 0.5, color: Colors.grey[250]),

              Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text('Profile Information', style: TextStyle(fontSize: 17)),

                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text('E-mail Address', style: TextStyle(color: Colors.grey[350], fontSize: 13)),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => EditEmailPage()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: SizedBox(
                            width: double.infinity,
                            child: Text('zainkhan.official10@gmail.com', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400))
                        ),
                      ),
                    ),
                    Divider(thickness: 1),

                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text('Phone Number', style: TextStyle(color: Colors.grey[350], fontSize: 13)),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: SizedBox(
                            width: double.infinity,
                            child: Text('+923317079787', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400))
                        ),
                      ),
                    ),
                    Divider(thickness: 1),

                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text('Gender', style: TextStyle(color: Colors.grey[350], fontSize: 13)),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: SizedBox(
                            width: double.infinity,
                            child: Text('Male', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400))
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Divider(thickness: 0.5, color: Colors.grey,)
            ],
          ),
        ),
      )
    );
  }
}

void _editProfilePhotoModalBottomSheet(context){
  showModalBottomSheet(
      context: context,
      builder: (BuildContext bc){
        return Container(
          child: new Wrap(
            children: <Widget>[
              BottomSheetHandle(),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Text('Change Profile Photo', style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14
                    ))
                  ],
                ),
              ),
              Divider(height: 1),
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 15, bottom: 15.0),
                  child: Row(
                    children: [
                      Text('New Profile Photo', style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16
                      ))
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 5, bottom: 15.0),
                  child: Row(
                    children: [
                      Text('Import from Facebook', style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16
                      ))
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 5, bottom: 15.0),
                  child: Row(
                    children: [
                      Text('Remove Profile Photo',
                          style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                            color: Colors.red
                      ))
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      }
  );
}