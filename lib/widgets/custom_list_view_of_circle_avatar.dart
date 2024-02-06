import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_circle_avatar.dart';

class CustomListViewOfCircleAvatar extends StatelessWidget {
  const CustomListViewOfCircleAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (context, index) {
        return const CustomCircleAvatar();
      },
    );
  }
}