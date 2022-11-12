import 'package:flutter/material.dart';

class BarItem extends StatelessWidget {
  IconData ltemIcon = Icons.add;
  Color color = Colors.white;
  // Color backgroundcolor = Colors.transparent;

  BarItem(this.ltemIcon, this.color, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.transparent,
        margin: const EdgeInsets.fromLTRB(5, 0, 20, 0),
        child: IconButton(
            onPressed: () {},
            icon: Icon(
              ltemIcon,
              color: color,
            )));
  }
}
