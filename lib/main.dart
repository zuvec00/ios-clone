import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'screens/lockscreens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme:
            ThemeData(textTheme: TextTheme(bodyText2: GoogleFonts.poppins(color:Colors.grey[50]))),
        home: LockScreen());
  }
}
