import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loyalage/mobile_push/screen/mobile_push_dashboard.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

      fontFamily: "Poppins",tabBarTheme: TabBarTheme(labelStyle: TextStyle(fontFamily: "Poppins",fontWeight: FontWeight.w600),)
     ,
     ),
      home: MobilePushDashboard(),
    );
    
  }
}
