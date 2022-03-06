import 'package:flutter/material.dart';

class CardMenu extends StatelessWidget {

  final String title;
  const CardMenu({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      child: Row(
        children: [
          Text( title ?? "-"),
          const SizedBox( width: 5,),
          Container(
            color: Colors.blue,
            height: 20,
            width: 1,
          ),
        ],
      ),
    );
  }
}
