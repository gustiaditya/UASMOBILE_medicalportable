import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:async';

void main() => runApp(Petak());

class Petak extends StatefulWidget{
  State<StatefulWidget> createState() => _Petak();
  }
  
class _Petak extends State<Petak>{
  final Completer<WebViewController> _webcontrol =
    Completer<WebViewController>();
    
    void initState(){
      super.initState();
    }
    
    @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return MaterialApp(
      home: Scaffold(
        appBar:AppBar(
          backgroundColor: Colors.blue,
          title: Text('Lokasi Undiksha'),
        ),
        body: WebView(
          initialUrl: "https://www.google.com/maps/place/Petak+Kaja,+Kec.+Gianyar,+Kabupaten+Gianyar,+Bali/@-8.4532434,115.3117526,15z/data=!3m1!4b1!4m5!3m4!1s0x2dd2184f9079c0c1:0x5030bfbca8310c0!8m2!3d-8.4546715!4d115.3207985",
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController webiewController){
            _webcontrol.complete(webiewController);
          },
  
        ),
      ),
      );
    }
   
  }
  
  