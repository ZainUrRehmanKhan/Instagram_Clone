import 'package:flutter/material.dart';
import 'package:instagram_clone/src/models/status_model.dart';

class StatusTimeline extends StatefulWidget {
  final int index;
  StatusTimeline({this.index});

  @override
  _StatusTimelineState createState() => _StatusTimelineState();
}

class _StatusTimelineState extends State<StatusTimeline> {
  @override
  Widget build(BuildContext context) {
    return widget.index == 0 ?
    Padding(
      padding: EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Column(
            children: [
              CircleAvatar(
                  backgroundImage: NetworkImage('https://images.unsplash.com/photo-1599162475526-89950ab28b0a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80'),
                  radius: 30
              ),
              Padding(
                padding: const EdgeInsets.only(top: 3),
                child: Text('Your Story', style: TextStyle(fontWeight: FontWeight.w300)),
              )
            ],
          ),
          Positioned(
            top: 43,
            left: 47,
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
    )
        :
    Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [Color(0xffF58529), Color(0xffFEDA77), Color(0xffDD2A7B), Color(0xff8134AF)]
                ),
              ),
              child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: NetworkImage(dataStatusModel[widget.index].status),
                                  fit: BoxFit.cover
                              )
                          )
                      ),
                    ),
                  ),
                ),
              ),
            Padding(
              padding: const EdgeInsets.only(top: 3),
              child: Text(dataStatusModel[widget.index].name, style: TextStyle(fontWeight: FontWeight.w300)),
            )
          ],
        )
    );
  }
}
