import 'package:flutter/material.dart';

class BottomSheetHandle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            width: 40,
            height: 4,
            decoration: BoxDecoration(
                color: Colors.tealAccent[400],
                borderRadius: BorderRadius.all(Radius.circular(4))
            ),
          ),
        )
      ],
    );
  }
}
