import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ONO',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'ONO'),
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
  
  int total = 0; 

  int randomNumber = Random().nextInt(9) + 1;
  int randomNum1 = Random().nextInt(9) + 1;
  int randomNum2 = Random().nextInt(9) + 1;
  int randomNum3 = Random().nextInt(9) + 1;
  int computadora = Random().nextInt(9) + 1;
  
  int boxNumber = 0;

  void updateBoxNumber() {
    setState(() {
      boxNumber = randomNum1; // Guarda el número de la caja
      randomNum1 = Random().nextInt(9) + 1; // Actualiza el número de la caja
    });
  }
  void addToTotal(int number) {
    setState(() {
      total += number;
    });
  }


void addToTotalAndUpdateNumbers(int number) {
  setState(() {
    total += number;
    randomNumber = Random().nextInt(9) + 1;
    computadora = Random().nextInt(9) + 1;
  });
}
void addToTotalAndUpdateNumbers2(int number) {
  setState(() {
    total += number;
    randomNum1 = Random().nextInt(9) + 1;
    computadora = Random().nextInt(9) + 1;
  });
}
void addToTotalAndUpdateNumbers3(int number) {
  setState(() {
    total += number;
    randomNum2 = Random().nextInt(9) + 1;
    computadora = Random().nextInt(9) + 1;
  });
}
void addToTotalAndUpdateNumbers4(int number) {
  setState(() {
    total += number;
    randomNum3 = Random().nextInt(9) + 1;
    computadora = Random().nextInt(9) + 1;
  });
}


  @override
  Widget build(BuildContext context) {
    double size = 150;

    BoxDecoration cajaRedonda(Color fondo) => BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        color: fondo,
        border: Border.all(color: Colors.black45, width: 4)
        );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /* top */
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Container (
                          child: Text('Numero de carta:'+ computadora.toString()),
                        )
                      ],
                    ),
                  ],
                ),
                /* lado de la computadora */
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row( // Inicio de Row
                      children: [ // Inicio de children
                        Container(
                          decoration: cajaRedonda(Colors.red),
                          height: size,
                          width: size/2,
                        ),
                        SizedBox(width:20),
                        Container(
                          decoration: cajaRedonda(Colors.yellow),
                          height: size,
                          width: size / 2,
                        ),
                        SizedBox(width:20),
                        Container(
                          decoration: cajaRedonda(Colors.blue),
                          height: size,
                          width: size / 2,
                        ),
                        SizedBox(width:20),
                        Container(
                          decoration: cajaRedonda(Colors.green),
                          height: size,
                          width: size / 2,
                        ),
                      ], // Fin de children
                    ), // Fin de Row
                  ],
                ),
              ],
            ),
            /* button */
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Container (
                          child: Text('GANADOR: ' + (total + computadora).toString()),
                        )
                      ],
                    ),
                  ],
                ),
                /* lado del usuario */
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row( // Inicio de Row
                      children: [ // Inicio de children
                        GestureDetector(
                          onTap: () => addToTotalAndUpdateNumbers(randomNumber),
                          child: Container(
                            decoration: cajaRedonda(Colors.red),
                            height: size,
                            width: size / 2,
                            child: Center(
                              child: Text(randomNumber.toString()),
                            ),
                          ),
                        ),
                        SizedBox(width:20),
                        GestureDetector(
                          onTap: () => addToTotalAndUpdateNumbers2(randomNum1),
                          child: Container(
                            decoration: cajaRedonda(Colors.orange),
                            height: size,
                            width: size / 2,
                            child: Center(
                              child: Text(randomNum1.toString()),
                            ),
                          ),
                        ),
                        SizedBox(width:20),
                        GestureDetector(
                          onTap: () => addToTotalAndUpdateNumbers3(randomNum2),
                          child: Container(
                            decoration: cajaRedonda(Colors.pink),
                            height: size,
                            width: size / 2,
                            child: Center(
                              child: Text(randomNum2.toString()),
                            ),
                          ),
                        ),
                        SizedBox(width:20),
                        GestureDetector(
                          onTap: () => addToTotalAndUpdateNumbers4(randomNum3),
                          child: Container(
                            decoration: cajaRedonda(Colors.green),
                            height: size,
                            width: size / 2,
                            child: Center(
                              child: Text(randomNum3.toString()),
                            ),
                          ),
                        ),
                      ], // Fin de children
                    ), // Fin de Row
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}