// import 'package:authentication_demo/home.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:authentication_demo/firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'authentication/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  
 
  runApp(const MyApp());
}
