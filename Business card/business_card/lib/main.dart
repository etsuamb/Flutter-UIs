// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(Name());
}

class Name extends StatelessWidget {
  const Name({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
              backgroundColor: Colors.teal,
              body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 70,
                    backgroundImage: AssetImage('Images/woman.jpg'),
                  ),
                  Text(
                    'Etsub',
                    style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Space Worker',
                    style: TextStyle(
                      fontFamily: 'SourceSans3',
                      color: Colors.teal[100],
                      fontSize: 20,
                      letterSpacing: 1.5,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                    width: 150,
                    child: Divider(
                      color: Colors.teal[100],
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    child: ListTile(
                      leading: Icon(
                        Icons.phone,
                        color: Colors.teal[900],
                      ),
                      title: Text(
                        '+412 908 678',
                        style: TextStyle(
                            fontFamily: 'SourceSans3', color: Colors.teal[900]),
                      ),
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    child: ListTile(
                      leading: Icon(
                        Icons.email,
                        color: Colors.teal[900],
                      ),
                      title: Text(
                        'etsub@gmail.com',
                        style: TextStyle(color: Colors.teal[900]),
                      ),
                    ),
                  )
                ],
              )),
        ));
  }
}
