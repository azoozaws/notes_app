import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/widgets/custom_circle_avatar.dart';

class CustomListViewOfCircleAvatar extends StatefulWidget {
  const CustomListViewOfCircleAvatar({
    super.key,
  });

  @override
  State<CustomListViewOfCircleAvatar> createState() =>
      _CustomListViewOfCircleAvatarState();
}

class _CustomListViewOfCircleAvatarState
    extends State<CustomListViewOfCircleAvatar> {
  int currentIndex = -1;
  // build with bard

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: kColors.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            currentIndex = index;
            acolor = kColors[index];
            setState(() {});
          },
          child: CustomCircleAvatar(
            isActive: currentIndex == index,
            color: kColors[index],
          ),
        );
      },
    );
  }
}

Color acolor = Colors.black;
