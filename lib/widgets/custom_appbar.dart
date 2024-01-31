import 'package:flutter/material.dart';
class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key, required this.icon, this.onPressed, required this.title});
  final String title;
  final IconData icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Text(
        title,
        style: const TextStyle(fontSize: 28),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                8,
              ),
              color: Colors.grey[850],
            ),
            child: IconButton(
              icon: Icon(
                size: 30,
                icon,
              ),
              onPressed: onPressed == null ? onPressed : () {},
            ),
          ),
        ),
      ],
    );
  }
}
