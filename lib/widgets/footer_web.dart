import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/utils/responsive.dart';
import 'package:portfolio/utils/utils.dart';

class FooterWeb extends StatelessWidget {
  const FooterWeb({Key key}) : super(key: key);

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
      child: SlideInRight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                padding: const EdgeInsets.symmetric( vertical: 5 ),
                child: Image.asset(
                  'assets/logo_end.png',
                  height: Responsive.isMobile(context) ? 30 : 80,
                  width: Responsive.isMobile(context) ? 80 : 190,
                )
            ),
            InkWell(
              onTap: ()=>Utils().openUrl("https://portfolio.pegassus.com.mx"),
              child: Column(
                children: const [
                  Text("Esta web esta hecha con flutter"),
                  Text("Quieres ver una version en Angular? da click aqui")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
