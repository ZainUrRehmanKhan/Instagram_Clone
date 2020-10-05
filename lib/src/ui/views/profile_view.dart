import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:instagram_clone/src/ui/pages/edit-profile_page.dart';
import 'package:instagram_clone/src/widgets/page-header-profile.dart';
import 'package:instagram_clone/src/models/uploads-profile_model.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> with SingleTickerProviderStateMixin {

  TabController _tabController;
  ScrollController _scrollViewController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
    _scrollViewController = ScrollController();
  }

  @override
  void dispose() {
    _tabController.dispose();
    _scrollViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
        controller: _scrollViewController,
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return <Widget>[
            SliverToBoxAdapter(
                child: Container(
                    height: 250,
                    color: Colors.white,
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 135,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Stack(
                                    children: <Widget>[
                                      Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Padding(
                                              padding: const EdgeInsets.only(top: 22.0, bottom: 22.0, right: 22.0, left: 15),
                                              child: CircleAvatar(backgroundImage: NetworkImage('https://images.unsplash.com/photo-1599162475526-89950ab28b0a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80'),
                                                  radius: 45),
                                            ),
                                          ]
                                      ),
                                      Positioned(
                                        top: 90,
                                        left: 90,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              border: Border.all(color: Colors.white, width: 1.5)
                                          ),
                                          child: CircleAvatar(
                                              backgroundColor: Colors.blue,
                                              minRadius: 7,
                                              child: Icon(Icons.add, color: Colors.white, size: 15)
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text('4', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                                  Text('Posts', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300))
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text('135', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                                  Text('Followers', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300))
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text('77', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                                  Text('Following', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300))
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 99,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Text('Zain Khan'),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Text('Bio Text Here!'),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 19),
                              ),
                              SizedBox(
                                width: 340,
                                height: 30,
                                child: OutlineButton(
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfilePage()));
                                  },
                                  color: Colors.white,
                                  child: Text('Edit Profile'),
                                ),
                              )
                            ],
                          ),
                        ),
                        Divider(thickness: 1)
                      ],
                    )
                )
            ),
            SliverPersistentHeader(
              pinned: true,
              floating: true,
              delegate: PageHeaderProfile(
                  controller: _tabController,
                  maxExtent: 50,
                  minExtent: 50
              ),
            )
          ];
        },
        body: TabBarView(
          children: <Widget>[
            Container(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 1.5,
                      crossAxisSpacing: 1.5
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(uploadsModel[index].image),
                                fit: BoxFit.cover
                            )
                        )
                    );
                  },
                  itemCount: uploadsModel.length,
                )
            ),
            Container(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 1.5,
                      crossAxisSpacing: 1.5
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(uploadsModel[index].image),
                                fit: BoxFit.cover
                            )
                        )
                    );
                  },
                  itemCount: uploadsModel.length,
                )
            )
          ],
          controller: _tabController,
        )
    );
  }
}


