import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class ButtonHome extends StatelessWidget {
  String text;
  IconData icon;
  StatefulWidget page;
  ButtonHome(
      {super.key, required this.text, required this.icon, required this.page});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          PageTransition(child: page, type: PageTransitionType.fade),
        );
      },
      child: Container(
        child: Column(children: [
          Icon(
            icon,
            size: 70,
            color: Colors.white,
            shadows: const [
              Shadow(
                blurRadius: 10.0,
                color: Colors.black,
                offset: Offset(5.0, 5.0),
              ),
            ],
          ),
          Text(text.toUpperCase(),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ))
        ]),
      ),
    );
  }
}
