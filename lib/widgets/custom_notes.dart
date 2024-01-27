import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomNotes extends StatelessWidget {
  const CustomNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          16,
        ),
        color: Colors.cyan,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Flutter tips",
              style: TextStyle(
                fontSize: 28,
                color: Colors.black,
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.delete,
                  color: Colors.black,
                ),
              ),
            ),
            const Text(
              "Build your Career with\n Aziz Aws",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            const Align(
              alignment: Alignment.centerRight,
              child: Text(
                "May 21,2022",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
