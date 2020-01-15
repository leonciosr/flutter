import 'package:flutter/material.dart';
import 'package:flutter_aog/pages/home.page.dart';
import 'package:flutter_aog/widgets/input.widget.dart';
import 'package:flutter_aog/widgets/loading-button.widget.dart';
import 'package:flutter_aog/widgets/logo.widgets.dart';
import 'package:flutter_aog/widgets/submit-form.dart';
import 'package:flutter_aog/widgets/success.widget.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Álcool ou Gasolina',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.deepPurple,
      ),
      home: HomePage(),
    );
  }
}
