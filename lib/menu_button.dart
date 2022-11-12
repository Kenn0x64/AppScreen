
import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {

  String txt1="";

  MenuButton( this.txt1, {super.key});


  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.fromLTRB(15, 0, 12, 0),
        child: TextButton(
            onPressed: () {},
            child: Text(txt1, style: const TextStyle(color: Colors.white))));
  }
}
