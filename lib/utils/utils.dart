
import 'dart:js' as js;

import 'package:url_launcher/url_launcher.dart';

class Utils{

  void openUrl(String url) {
    if(url==null){return;}
    /*html.AnchorElement anchorElement =  html.AnchorElement(href: url);
    anchorElement.download = url;
    anchorElement.click();*/
    js.context.callMethod('open', [url]);
  }

  String encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map((e) => '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
        .join('&');
  }

  void launchEmail(String mail){
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: mail,
      query: encodeQueryParameters(<String, String>{
        'subject': 'Hola Jesus Marfil'
      }),
    );

    launch(emailLaunchUri.toString());
  }

  void launchPhone(String number){
    launch("tel:+52$number");
  }
}