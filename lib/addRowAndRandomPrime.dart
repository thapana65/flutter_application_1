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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  // public variable
  int min = 0;
  int max = 100;

  // private variable
  int _addRow = 0;
  List<int> _rowsPrimes = [];

  bool isPrime(int n) {
    if (n <= 1) return false;
    for (int i = 2; i <= sqrt(n).toInt(); i++) {
      if (n % i == 0) return false;
    }
    return true;
  }

  int generateRandomPrime() {
    Random random = Random();
    int prime;
    do {
      prime = random.nextInt(max - min) + min;
    } while (!isPrime(prime));
    return prime;
  }

  void _addNewRowAndRandomPrime() {
    setState(() {
      int newPrime = generateRandomPrime();
      _rowsPrimes.add(newPrime);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Center(
          child: ListView.builder(
            itemCount: _rowsPrimes.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('Item ${index + 1}'),
                subtitle: Text('Prime number: ${_rowsPrimes[index]}'),
                leading: CircleAvatar(
                  child: Text('${index + 1}'),
                ),
              );
            },
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _addNewRowAndRandomPrime,
          tooltip: 'Add Row',
          child: Icon(Icons.add),
        ));
  }
}
