import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Mini ONO'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  int randomNumber = Random().nextInt(9) + 1;
  int randomNum1 = Random().nextInt(9) + 1;
  int randomNum2 = Random().nextInt(9) + 1;
  int randomNum3 = Random().nextInt(9) + 1;
  
  int boxNumber = 0;

  void updateBoxNumber() {
    setState(() {
      boxNumber = randomNum1; // Guarda el número de la caja
      randomNum1 = Random().nextInt(9) + 1; // Actualiza el número de la caja
    });
  }
  @override
  Widget build(BuildContext context) {
    double size = 200;
    BoxDecoration cajaRedonda(Color fondo) => BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        color: fondo,
        border: Border.all(color: Colors.black45, width: 4));

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: cajaRedonda(Colors.blue),
                  height: size,
                  width: size / 2,
                  child: Center(
                    child: Text(
                      '$randomNumber',
                      style: const TextStyle(
                        fontSize: 40,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: cajaRedonda(Colors.red),
                  height: size,
                  width: size / 2,
                  child: Center(
                    child: Text(
                      '$randomNum1',
                      style: const TextStyle(
                        fontSize: 40,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: cajaRedonda(Colors.green),
                  height: size,
                  width: size / 2,
                  child: Center(
                    child: Text(
                      '$randomNum2',
                      style: const TextStyle(
                        fontSize: 40,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: cajaRedonda(Colors.yellow),
                  height: size,
                  width: size / 2,
                  child: Center(
                    child: Text(
                      '$randomNum3',
                      style: const TextStyle(
                        fontSize: 40,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}