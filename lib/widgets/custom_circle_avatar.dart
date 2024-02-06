import 'package:flutter/material.dart';

class CustomCircleAvatar extends StatelessWidget {
  const CustomCircleAvatar({
    super.key,
    required this.isActive, required this.color,
  });
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: isActive
          ?  CircleAvatar(
              backgroundColor: color,
              radius: 32,
            )
          :  CircleAvatar(
              backgroundColor: color,
              radius: 22,
            ),
    );
  }
}
