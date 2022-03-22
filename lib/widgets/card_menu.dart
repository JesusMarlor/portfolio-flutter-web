import 'package:flutter/material.dart';

import '../theme/AppTheme.dart';

class CardMenu extends StatelessWidget {

  final String title;
  const CardMenu({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      child: Row(
        children: [
          InkWell(
            hoverColor: AppTheme.kPrimaryColor,
              child: Text( title ?? "-", style: TextStyle( color: Colors.white ),)
          ),
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
