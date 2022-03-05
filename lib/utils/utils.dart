import 'dart:html' as html;
import 'dart:js' as js;

class Utils{

  void openUrl(String url) {
    /*html.AnchorElement anchorElement =  html.AnchorElement(href: url);
    anchorElement.download = url;
    anchorElement.click();*/
    js.context.callMethod('open', [url]);
  }

}