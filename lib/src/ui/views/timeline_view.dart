import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/src/models/post_model.dart';
import 'package:instagram_clone/src/models/status_model.dart';
import 'package:instagram_clone/src/widgets/post_timeline.dart';
import 'package:instagram_clone/src/widgets/status_timeline.dart';

class TimelinePage extends StatefulWidget {
  @override
  _TimelinePageState createState() => _TimelinePageState();
}

class _TimelinePageState extends State<TimelinePage> {
  @override
  Widget build(BuildContext context) {
    return
      CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(
                child: Container(
                    height: 95.0,
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return StatusTimeline(index: index);
                      },
                      scrollDirection: Axis.horizontal,
                      itemCount: dataStatusModel.length,
                    )
                )
            ),
            SliverToBoxAdapter(child: Divider(height: 1)),
            SliverList(
                delegate: SliverChildBuilderDelegate(
                        (context, index){
                      return PostTimeline(index: index);
                    },
                    childCount: dataModel.length
                )
            )
          ]
      );
  }
}