import 'package:flutter/material.dart';
import 'package:portfolio/utils/utils.dart';

class SocialNetworks extends StatelessWidget {
  const SocialNetworks({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Wrap(
      children: [
        InkWell(
            onTap: ()=> Utils().openUrl("https://github.com/JesusMarlor"),
            child: Container(
              margin: const EdgeInsets.all(5),
              width: 45,
              height: 45,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle
              ),
              child: Image.asset("assets/icons/github.png", height: 40, width: 40,),
            )
        ),
        InkWell(
            onTap: ()=> Utils().openUrl("https://www.linkedin.com/in/jesus-marfil/"),
            child: Container(
              margin: const EdgeInsets.all(5),
              width: 45,
              height: 45,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle
              ),
              child: Image.asset("assets/icons/linkedin.png", height: 40, width: 40,),
            )
        ),
        InkWell(
            onTap: ()=> Utils().openUrl("https://twitter.com/JesusMarlor"),
            child: Container(
              margin: const EdgeInsets.all(5),
              width: 45,
              height: 45,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle
              ),
              child: Image.asset("assets/icons/twitter.png", height: 40, width: 40,),
            )
        ),
      ],
    );
  }
}
