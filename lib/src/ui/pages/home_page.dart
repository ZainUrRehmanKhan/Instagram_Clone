import 'message_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:instagram_clone/src/ui/views/search_view.dart';
import 'package:instagram_clone/src/ui/views/profile_view.dart';
import 'package:instagram_clone/src/widgets/drawer-profile.dart';
import 'package:instagram_clone/src/ui/views/timeline_view.dart';
import 'package:instagram_clone/src/ui/views/add-story_view.dart';
import 'package:instagram_clone/src/ui/views/notification_view.dart';
import 'package:instagram_clone/src/widgets/bottom-sheet-handle.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Widget> _appBars;
  int _selectedIndex = 0;
  PageController _pageViewController;
  bool isCollapse;

  _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> _pageOptions = <Widget>[
    TimelinePage(),
    SearchPage(),
    AddStoryPage(),
    NotificationPage(),
    ProfilePage()
  ];

  @override
  void initState() {
    super.initState();

    _pageViewController = new PageController(initialPage: 0);
    isCollapse = true;

    _appBars = <Widget>[
      AppBar(
        elevation: 1.5,
        title: Row(
          children: [
            Image.asset('assets/icons/logo-icon.png', width: 24, color: Colors.black),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Text('Instagram', style: TextStyle(fontFamily: 'Billabong', fontSize: 27)),
            )
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: Image.asset('assets/icons/send.png', width: 24, color: Colors.black),
            onPressed: () {
              _pageViewController.animateToPage(1, duration: Duration(milliseconds: 500), curve: Curves.ease);
            },
          ),
          Padding(padding: EdgeInsets.only(left: 10))
        ],
      ),
      AppBar(
        elevation: 1.5,
        title: Row(
          children: [
            Image.asset('assets/icons/search-filled.png', width: 20, color: Colors.black),
            Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Text('Search', style: TextStyle(fontSize: 20, color: Colors.grey, fontWeight: FontWeight.w400),)
            )
          ],
        ),
        // leading: Image.asset('assets/icons/search-empty.png', width: 20),
        // title: Text('Search', style: TextStyle(fontSize: 20, color: Colors.grey, fontWeight: FontWeight.w400)),
        actions: <Widget>[
          Icon(Icons.center_focus_weak),
          Padding(padding: EdgeInsets.only(left: 10))
        ],
      ),
      null,
      AppBar(
          elevation: 1.5,
          title: Text('Activity', style: TextStyle(fontWeight: FontWeight.w400))
      ),
      AppBar(
        elevation: 0,
        title: Row(
          children: [
            GestureDetector(
                child: Image.asset('assets/icons/add.png', color: Colors.black, width: 25),
                onTap: () {
                  _profileStoryModalBottomSheet(context);
                }
            ),
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Container(),
            ),
            FlatButton.icon(
              icon: Text('Profile Name', style: TextStyle(fontWeight: FontWeight.w400, color: Colors.black87, fontSize: 20)),
              label:  Icon(Icons.expand_more, size: 20),
              onPressed: () {
                _profileAddModalBottomSheet(context);
              },
            ),
          ],
        ),
        actions: [
          IconButton(
              icon: Image.asset('assets/icons/menu.png', height: 21,),
              onPressed: () {
                setState(() {
                  this.isCollapse = !this.isCollapse;
                });
              }
          )
        ],
      )
    ];
  }

  @override
  Widget build(BuildContext context) {

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return PageView(
        physics: _selectedIndex == 0 ? PageScrollPhysics(): NeverScrollableScrollPhysics(),
        children: [
          Stack(
            children: [
              AnimatedPositioned(
                duration: Duration(milliseconds: 300),
                top: 0,
                left: isCollapse ? 250 : 0,
                right: isCollapse ? -250 : 0,
                bottom: 0,
                child: Align(
                  alignment: Alignment.centerRight,
                    child: DrawerProfile()
                ),
              ),
              AnimatedPositioned(
                top: 0,
                left: isCollapse ? 0 : -250,
                right: isCollapse ? 0 : 250,
                bottom: 0,
                duration: Duration(milliseconds: 300),
                child: Scaffold(
                    appBar: _appBars[_selectedIndex],
                    body: _pageOptions[_selectedIndex],
                    bottomNavigationBar: CupertinoTabBar(
                      items: [
                        BottomNavigationBarItem(icon: Image.asset(_selectedIndex == 0 ? 'assets/icons/home-filled.png' : 'assets/icons/home-empty.png', width: 24, color: Colors.black)),
                        BottomNavigationBarItem(icon: Image.asset(_selectedIndex == 1 ? 'assets/icons/search-filled.png' : 'assets/icons/search-empty.png', width: 24, color: Colors.black)),
                        BottomNavigationBarItem(icon: Image.asset(_selectedIndex == 2 ? 'assets/icons/add-story-filled.png' : 'assets/icons/add-story-empty.png', width: 24, color: Colors.black)),
                        BottomNavigationBarItem(icon: Image.asset(_selectedIndex == 3 ? 'assets/icons/heart-tab-filled.png' : 'assets/icons/heart-tab-empty.png', width: 24, color: Colors.black)),
                        BottomNavigationBarItem(
                            icon: _selectedIndex == 4 ?
                            Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      width: 1,
                                      color: Colors.black
                                  )
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Container(
                                    height: 22,
                                    width: 22,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                            image: NetworkImage('https://images.unsplash.com/photo-1599162475526-89950ab28b0a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80'),
                                            fit: BoxFit.cover
                                        )
                                    )
                                ),
                              ),
                            )
                                :
                            Container(
                                height: 22,
                                width: 22,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        image: NetworkImage('https://images.unsplash.com/photo-1599162475526-89950ab28b0a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80'),
                                        fit: BoxFit.cover
                                    )
                                )
                            )
                        )
                      ],
                      currentIndex: _selectedIndex,
                      onTap: _onItemTapped,
                    )
                ),
              )
            ],
          ),
          MessagePage(pgController: _pageViewController)
        ],
        controller: _pageViewController
      );
  }
}

//bottom sheets for profile page
void _profileStoryModalBottomSheet(context){
  showModalBottomSheet(
      context: context,
      builder: (BuildContext bc){
        return Container(
          child: new Wrap(
            children: <Widget>[
              BottomSheetHandle(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Create New', style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 20
                    ))
                  ],
                ),
              ),
              Divider(height: 1),
              Padding(
                  padding: EdgeInsets.only(bottom: 15)
              ),
              ListTile(
                  leading: Icon(Icons.grid_on, color: Colors.black),
                  dense: true,
                  title: Text('Feed Post'),
                  subtitle: Divider(height: 1),
                  onTap: () => {}
              ),
              ListTile(
                  leading: Icon(Icons.satellite, color: Colors.black),
                  dense: true,
                  title: Text('Story'),
                  subtitle: Divider(height: 1),
                  onTap: () => {}
              ),
              ListTile(
                  leading: Icon(Icons.slow_motion_video, color: Colors.black),
                  title: Text('Story Highlights'),
                  dense: true,
                  subtitle: Divider(height: 1),
                  onTap: () => {}
              ),
              ListTile(
                  leading: Icon(Icons.live_tv, color: Colors.black),
                  title: Text('IGTV Video'),
                  dense: true,
                  subtitle: Divider(height: 1),
                  onTap: () => {}
              ),
              Container(
                height: 35,
              )
            ],
          ),
        );
      }
  );
}

void _profileAddModalBottomSheet(context){
  showModalBottomSheet(
      context: context,
      builder: (BuildContext bc){
        return Container(
          child: new Wrap(
            children: <Widget>[
              BottomSheetHandle(),
              Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: ListTile(
                    leading: CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage('https://images.unsplash.com/photo-1599162475526-89950ab28b0a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80'),
                    ),
                    title: Text('zainkhan.official10'),
                    trailing: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white
                          ),
                        ),
                      )
                    ),
                    onTap: () => {}
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 25.0),
                child: ListTile(
                    leading: Container(
                      width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black87,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(30))
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.asset('assets/icons/add.png'),
                        )
                    ),
                    title: Text('Add Account'),
                    onTap: () => {}
                ),
              ),
            ],
          ),
        );
      }
  );
}