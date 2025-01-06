import 'dart:math';
import 'package:flutter/material.dart';
import 'foodMenu.dart';

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
        home: const MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<foodMenu> _foodList = [];
  double totalPrice = 0;

  void _refreshFoodList() {
    setState(() {
      _foodList.clear();
      totalPrice = 0;
    });
  }

  void _getRandomFood() {
    foodMenu randomMenu = foodMenu.getRandomFood();
    setState(() {
      if (!_foodList.contains(randomMenu)) {
        _foodList.add(randomMenu);
        totalPrice += double.parse(randomMenu.price);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(
          'Flutter Demo: Food Order - Total: \$${totalPrice.toStringAsFixed(2)}',
        ),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: _foodList.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(_foodList[index].name, style: TextStyle(fontWeight: FontWeight.bold),),
              subtitle: Text(_foodList[index].description),
              leading: CircleAvatar(
                child: Text(_foodList[index].price,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
              ),
            );
          },
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: _refreshFoodList,
            tooltip: 'Refresh',
            child: const Icon(Icons.refresh),
          ),
          FloatingActionButton(
            onPressed: _getRandomFood,
            tooltip: 'Random Food',
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
