import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:nal_la/src/pages/home.dart';

class App extends StatelessWidget {
  const App({var key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Firebase.initializeApp(),
        builder: (context, snapshot) {
          if(snapshot.hasError) {
            return Center(child: Text("Firebase load fail"),);
          }

          if(snapshot.connectionState == ConnectionState.done) {
            return Home();
          }
          return CircularProgressIndicator();
        });
  }
}