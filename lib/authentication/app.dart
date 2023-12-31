import 'package:authentication_demo/authentication/auth_gate.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyApp extends StatelessWidget {
 const MyApp({super.key});
 @override
 Widget build(BuildContext context) {
   return MaterialApp(
    debugShowCheckedModeBanner: false,
     theme: ThemeData(
       colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyan),
       textTheme: GoogleFonts.robotoTextTheme(
          Theme.of(context).textTheme,
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
       useMaterial3: true,
     ),
     home:  const AuthGate(),
   );
 }
}