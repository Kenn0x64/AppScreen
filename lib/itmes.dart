import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  String src = "";
  String txt1 = "";
  String txt2 = "";
  String price = "";

  Item(this.src, this.txt1, this.txt2, this.price, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          src,
          height: 100,
          width: 150,
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(15,10,0,5),
          alignment: Alignment.topLeft,
          child: Text(
            txt1,
            style: const TextStyle(
                fontSize: 17, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(15,0,0,5),
          alignment: Alignment.topLeft,
          child: Text(
            txt2,
            style: const TextStyle(fontSize: 10, color: Colors.white),
          ),
        ),
        
        Container(
          padding: const EdgeInsets.fromLTRB(15,0,20,1),
          child: Row(            
            children: [
              Text(
                price,
                style: const TextStyle(
                    fontSize: 10,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              const Icon(
                Icons.add,
                size: 11,
                color: Colors.white,
              )
            ],
          ),
        )
      ],
    );
  }
}
