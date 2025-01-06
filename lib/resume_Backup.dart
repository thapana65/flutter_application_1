import 'package:flutter/material.dart';

void main() {
  var app = MaterialApp(
    title: 'resume',
    home: Scaffold(
      appBar: AppBar(
        title: Text(
          'Resume',
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: [
          // Image
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Image.asset(
                'assets/me.jpg',
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Name
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Thapana',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                SizedBox(width: 10),
                Text(
                  'Thungkam,',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                SizedBox(width: 10),
                Text(
                  'Din',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                SizedBox(width: 10),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 45.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // แถวที่ 1
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hobby:',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(width: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Coding, PC Games, Sleeping',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 8), // เว้นระยะห่างระหว่างแถว
                // แถวที่ 2
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Food:',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(width: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Any',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 8), // เว้นระยะห่างระหว่างแถว
                // แถวที่ 3
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Birthplace:',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(width: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Phrae, Thailand',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 45), // ระยะห่างซ้ายและขวา
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start, // เริ่มต้นข้อความจากซ้าย
              children: [
                SizedBox(height: 20), // ระยะห่างใต้ Section ก่อนหน้า

                // Education Section
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Education:',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                SizedBox(height: 10),

                // รายการการศึกษา
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Elementary
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Elementary: Anupong',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                        Text(
                          'Year: 20xx-20xx',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),

                    // Primary
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Primary: Patcharin',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                        Text(
                          'Year: 20xx-20xx',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),

                    // High School
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'High School: Piriyalai',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                        Text(
                          'Year: 2015-2021',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),

                    // Undergrad
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Undergrad: Naresuan',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                        Text(
                          'Year: 2022-20xx',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),

        ],
      ),
    ),
  );

  runApp(app);
}
