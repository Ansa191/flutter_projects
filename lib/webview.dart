import 'package:flutter/material.dart';
import 'package:togoparts/constants.dart';
import 'package:webview_flutter/webview_flutter.dart';
//
//
// class WebViewWidget extends StatefulWidget {
//   final s_index=0;
//
//   const WebViewWidget({Key? key, required int s_index}) : super(key: key);
//
//   @override
//   State<WebViewWidget> createState() => _WebViewWidgetState();
// }
//
// class _WebViewWidgetState extends State<WebViewWidget> {
//   final WebViewController controler;
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Center(
//         child:
//       ),
//     );
//
//   }
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     controler.loadUrl(urls.elementAt(s_index));
//   }
// }

//controler.loadUrl(urls.elementAt(_selectedIndex));

class HomeWebView extends StatelessWidget {
  const HomeWebView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: "https://www.togoparts.com/",
      javascriptMode: JavascriptMode.unrestricted,
      );
  }
}
class BoardWebView extends StatelessWidget {
  const BoardWebView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: urls[1],
      javascriptMode: JavascriptMode.unrestricted,
      );
  }
}
class MarketWebView extends StatelessWidget {
  const MarketWebView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: urls[2],
      javascriptMode: JavascriptMode.unrestricted,
      );
  }
}
class PostWebView extends StatelessWidget {
  const PostWebView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: urls[3],
      javascriptMode: JavascriptMode.unrestricted,
      );
  }
}
