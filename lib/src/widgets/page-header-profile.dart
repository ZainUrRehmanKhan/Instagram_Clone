import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class PageHeaderProfile implements SliverPersistentHeaderDelegate{
  PageHeaderProfile({
    this.minExtent,
    this.maxExtent,
    this.controller
  });

  final TabController controller;
  final double minExtent;
  final double maxExtent;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapContent) {
    return Container(
      color: Colors.white,
      child: TabBar(
          controller: controller,
          unselectedLabelColor: Colors.grey[400],
          labelColor: Colors.black,
          tabs: [
            Tab(
              icon: Icon(Icons.grid_on, size: 30),
            ),
            Tab(
              icon: Icon(Icons.assignment_ind, size: 30),
            )
      ]),
    );
  }

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }

  @override
  FloatingHeaderSnapConfiguration get snapConfiguration => null;

  @override
  OverScrollHeaderStretchConfiguration get stretchConfiguration {
    return OverScrollHeaderStretchConfiguration();
  }
}