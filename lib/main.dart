import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // make navigation bar transparent
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.transparent,
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  // make flutter draw behind navigation bar
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(15),
            width: 300,
            height: 300,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.grey.shade300,
              /*border: Border.all(
                color: Colors.white.withOpacity(0.6),
                width: 1.5,
              ),*/
              boxShadow: [
                BoxShadow(
                  blurRadius: 15,
                  offset: const Offset(4, 4),
                  color: Colors.grey.shade500,
                  spreadRadius: 1,
                ),
                const BoxShadow(
                  blurRadius: 15,
                  offset: Offset(-4, -4),
                  color: Colors.white,
                  spreadRadius: 1,
                ),
              ],
            ),
            child: Text(
              "Hola \n Mundo",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 60,
                color: Colors.grey.shade300,
                shadows: [
                  Shadow(
                    blurRadius: 13,
                    offset: const Offset(3, 3),
                    color: Colors.grey.shade500, 
                  ),
                  const Shadow(
                    blurRadius: 10,
                    offset: Offset(-3, -3),
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
