import 'package:flutter/material.dart';
import 'package:instagram_clone/src/models/post_model.dart';
import 'bottom-sheet-handle.dart';

class PostTimeline extends StatefulWidget{
  final int index;
  final TickerProvider tickerProvider;
  PostTimeline({this.index, this.tickerProvider});

  @override
  _PostTimelineState createState() => _PostTimelineState();
}

class _PostTimelineState extends State<PostTimeline> {

  AnimationController _animationController;
  Animation<double> _sizeController;

  TransformationController _transformationController =
  TransformationController();

  _setSaved(index){
    if(dataModel[index].saved)
      dataModel[index].saved = false;
    else
      dataModel[index].saved = true;

    setState(() {});
  }
  _setFavourite(index){
    setState(() {
      if(dataModel[index].favourite)
        dataModel[index].favourite = false;
      else
        dataModel[index].favourite = true;
    });
  }

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      duration: Duration(milliseconds: 300),
      vsync: widget.tickerProvider
    );
  }

  @override
  Widget build(BuildContext context) {
    _sizeController = Tween<double>(
      end: 1.3,
      begin: 1,
    ).animate(CurvedAnimation(
        curve: Curves.easeIn,
        parent: _animationController
    ));
    return Column(
      children: <Widget>[
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage(dataModel[widget.index].pageAvatar),
              ),
            ),
            MaterialButton(
              child: Text(dataModel[widget.index].pageName, style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400)),
              onPressed: () {},
            ),
            Expanded(child: Container()),
            IconButton(
                icon: Icon(Icons.more_vert, size: 20),
                onPressed: () {
                  _settingModalBottomSheet(context);
                }
            )
          ],
        ),
        Divider(height: 0),
        GestureDetector(
          onPanDown: (details) {

          },
          child: Container(
              height: 300.0,
              width: double.infinity,
              color: Colors.white,
              child: InteractiveViewer(
                transformationController: _transformationController,
                onInteractionEnd: (details) {
                  _transformationController.value = Matrix4.identity();
                },
                constrained: true,
                  child: Image(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        dataModel[widget.index].postImage,
                    ),
                  ),
                boundaryMargin: EdgeInsets.all(double.infinity),
                minScale: 1,
                maxScale: double.infinity,
              )
          ),
        ),
        Divider(height: 0),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  AnimatedBuilder(
                    builder: (context, _) {
                     return Padding(
                         padding: const EdgeInsets.only(left: 16, right: 10),
                         child: GestureDetector(
                             onTap: () async {
                               _setFavourite(widget.index);
                               try {
                                 await _animationController.forward().orCancel;
                               } catch(e) {
                               } finally {
                                 _animationController.reset();
                               }
                               // if(dataModel[widget.index].favourite) {
                               //
                               // }
                             },
                             child: Transform.scale(
                               scale: _sizeController.value,
                               child: dataModel[widget.index].favourite ?
                                 Image.asset('assets/icons/favourite-red.png', width: 24) :
                                 Image.asset('assets/icons/favourite-empty.png', width: 24, color: Colors.black),
                             )
                         )
                     );
                    }, animation: _animationController,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: GestureDetector(
                        onTap: () {},
                        child: Image.asset('assets/icons/comment.png', width: 24, color: Colors.black)
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: GestureDetector(
                        onTap: () {},
                        child: Image.asset('assets/icons/send.png', width: 24, color: Colors.black)
                    ),
                  ),
                  Expanded(child: Container()),
                  IconButton(
                    onPressed: () {
                      _setSaved(widget.index);
                    },
                    icon: Image.asset(
                        dataModel[widget.index].saved ?
                        'assets/icons/saved-filled.png' :
                        'assets/icons/saved-empty.png',
                        width: 24,
                        color: Colors.black
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text(dataModel[widget.index].likes+" likes", style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              SizedBox(height: 4.0),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text(dataModel[widget.index].pageName, style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              SizedBox(height: 4.0),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text("View all " + dataModel[widget.index].comments + " comments", style: TextStyle(color: Colors.grey)),
              ),
              ListTile(
                leading: CircleAvatar(backgroundColor: Colors.grey, radius: 15, backgroundImage: NetworkImage('https://images.unsplash.com/photo-1599162475526-89950ab28b0a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80')),
                title: Text('Add a comment...', style: TextStyle(color: Colors.grey)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text(dataModel[widget.index].time + " hours ago", style: TextStyle(color: Colors.grey, fontSize: 10)),
              ),
              SizedBox(height: 8)
            ],
          ),
        )
      ],
    );
  }
}

void _settingModalBottomSheet(context){
  showModalBottomSheet(
      context: context,
      builder: (BuildContext bc){
        return Container(
          child: new Wrap(
            children: <Widget>[
              BottomSheetHandle(),
              ListTile(
                  title: new Text('Report...'),
                  onTap: () => {}
              ),
              ListTile(
                title: new Text('Turn on Post Notifications'),
                onTap: () => {},
              ),
              ListTile(
                  title: new Text('Copy Link'),
                  onTap: () => {}
              ),
              ListTile(
                title: new Text('Share To...'),
                onTap: () => {},
              ),
              ListTile(
                  title: new Text('Unfollow'),
                  onTap: () => {}
              ),
              ListTile(
                title: new Text('Mute'),
                onTap: () => {},
              ),
            ],
          ),
        );
      }
  );
}