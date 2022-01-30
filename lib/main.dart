
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:permission_handler/permission_handler.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Permission.camera.request();
  await Permission.microphone.request(); // if you need microphone permission

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
 home: Scaffold(
      appBar:AppBar(title:Text('Membership QR Scanner')),
      body: WebView(
        initialUrl: "https://staging.islamicmuseum.org.au/qr-scan",
        javascriptMode: JavascriptMode.unrestricted,
      )),
    );
  }
}