import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/utils/responsive.dart';
import 'package:portfolio/utils/utils.dart';

class HeaderWeb extends StatelessWidget {
  const HeaderWeb({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      decoration: BoxDecoration(
        color:  Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              offset: const Offset(1.1, 1.1),
              blurRadius: 10.0),
        ],
      ),
      child: SlideInLeft(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap:()=> Navigator.pushReplacementNamed(context, "dashboard"),
              child: Container(
                  padding: const EdgeInsets.symmetric( vertical: 5 ),
                  child: Image.asset(
                    'assets/logo.png',
                    height: Responsive.isMobile(context) ? 30 : 80,
                    width: Responsive.isMobile(context) ? 80 : 190,
                  )
              ),
            ),
            Wrap(
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
            )
          ],
        ),
      ),
    );
  }
}
