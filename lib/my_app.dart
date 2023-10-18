import 'package:flutter/material.dart';
import 'package:proj_imc_calc/pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //retira a tarja de debug
      theme: ThemeData(
        primarySwatch: Colors.purple, //define a cor padrão do app
        textTheme: GoogleFonts.aDLaMDisplayTextTheme(),
      ),
      home: const HomePage(),
    );
  }
}
