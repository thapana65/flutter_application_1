import 'package:flutter/material.dart';

void main() {
  var app = MaterialApp(
    title: 'hello',
    home: Scaffold(
      appBar: AppBar(
        title: Text(
          'Information',
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
              ),
            ),
            child: Row(
              children: [
                Expanded(
                    child: Column(
                  children: [
                    Text(
                      'ID',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueGrey),
                    ),
                  ],
                )),
                Expanded(
                    child: Column(
                  children: [
                    Text(
                      'Firstname',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueGrey),
                    ),
                  ],
                )),
                Expanded(
                    child: Column(
                  children: [
                    Text(
                      'Lastname',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueGrey),
                    ),
                  ],
                )),
                Expanded(
                    child: Column(
                  children: [
                    Text(
                      'Nickname',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueGrey),
                    ),
                  ],
                )),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                  child: Column(
                children: [
                  Text(
                    '65311347',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ],
              )),
              Expanded(
                  child: Column(
                children: [
                  Text(
                    'Thapana',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ],
              )),
              Expanded(
                  child: Column(
                children: [
                  Text(
                    'Thungkam',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ],
              )),
              Expanded(
                  child: Column(
                children: [
                  Text(
                    'Din',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ],
              )),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Image.network(
                'https://img.freepik.com/free-photo/closeup-shot-cute-black-white-cat-lying_181624-44821.jpg?t=st=1734942855~exp=1734946455~hmac=2067738748e2ecd00311ff6d79a68c77381663e5acec5e139bf1699462e5c5e8&w=740',
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    ),
  );

  runApp(app);
}
