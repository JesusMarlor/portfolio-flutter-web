import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/utils/responsive.dart';
import 'package:portfolio/utils/utils.dart';

class FooterMobile extends StatelessWidget {
  const FooterMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      decoration: BoxDecoration(
        color:  Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              offset: const Offset(1.1, 1.1),
              blurRadius: 10.0),
        ],
      ),
      child: SlideInRight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap:()=> Navigator.pushReplacementNamed(context, "dashboard"),
              child: Container(
                  //padding: const EdgeInsets.symmetric( vertical: 5 ),
                  child: Image.asset(
                    'assets/logo_end.png',
                    height: Responsive.isMobile(context) ? 50 : 80,
                    width: Responsive.isMobile(context) ? 100 : 190,
                  )
              ),
            ),
            Column(
              children: [
                Text("Esta web esta hecha con flutter", style: TextStyle( fontSize: 8),),
                InkWell(
                  onTap: ()=>Utils().openUrl("https://portfolio.pegassus.com.mx"),
                  child: Text("Quieres ver una version en Angular? da click aqui",style: TextStyle( fontSize: 8),),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
