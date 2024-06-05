// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        scrollBehavior: const MaterialScrollBehavior().copyWith(
          dragDevices: {PointerDeviceKind.mouse},
        ),
        home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        title: Text('GDSCBOOK STORE'),
      ),
      body:
          ListView(padding: EdgeInsets.symmetric(horizontal: 10.0), children: [
        Row(children: [
          Expanded(
              child: SearchBar(
                  hintText: 'Looking for...',
                  padding: MaterialStatePropertyAll<EdgeInsets>(
                      EdgeInsets.symmetric(horizontal: 10.0)),
                  trailing: <Widget>[
                Tooltip(
                  message: 'Search ',
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.search),
                  ),
                )
              ])),
          Container(
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.tune,
                  color: Colors.blue,
                )),
          )
        ]),
        Container(
          margin: EdgeInsets.only(top: 10.0),
          alignment: Alignment.center,
          width: 250,
          height: 200.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              color: Colors.blue),
          child: Row(
            children: [
              Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(padding: EdgeInsets.only(top: 52.0)),
                      Icon(Icons.pause, color: Colors.white),
                    ],
                  )),
              Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                          text: TextSpan(
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                        children: <TextSpan>[
                          TextSpan(text: 'Today a reader\n',style: TextStyle(
                            fontSize:20
                          )),
                          TextSpan(text:'tommorrow a\n',style: TextStyle(fontSize: 20)),
                          TextSpan(
                              text: 'Leader',
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 30.0)),
                        ],
                      )),
                      Padding(padding: EdgeInsets.only(bottom: 20.0)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.translate,
                            color: Colors.white,
                          ),
                          Icon(
                            Icons.bookmark,
                            color: Colors.white,
                          ),
                          Icon(Icons.share, color: Colors.white)
                        ],
                      )
                    ],
                  )),
              Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      RichText(
                        text: TextSpan(
                          style: const TextStyle(
                            fontSize: 14.0,
                            color: Colors.white,
                          ),
                          children: <TextSpan>[
                            TextSpan(text: 'Sep 23,2023'),
                          ],
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(bottom: 30.0)),
                      Icon(Icons.pause, color: Colors.white)
                    ],
                  ))
            ],
          ),
        ),
        Text(
          'Categories',
          style: TextStyle(fontSize: 20),
        ),
        Wrap(
          children: <Widget>[
            Container(
              width: 100,
              margin: EdgeInsets.only(top: 10.0, right: 10.0),
              decoration: const BoxDecoration(
                  color: Color.fromARGB(216, 179, 178, 178),
                  borderRadius:
                      BorderRadiusDirectional.all(Radius.circular(7.0))),
              child: TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.all(10),
                    textStyle: const TextStyle(fontSize: 14),
                  ),
                  onPressed: () {},
                  child: Expanded(
                      child: Row(
                    children: [
                      Icon(Icons.health_and_safety_outlined),
                      Text('Health')
                    ],
                  ))),
            ),
            Container(
              width: 100,
              margin: EdgeInsets.only(top: 10.0, right: 10.0),
              decoration: const BoxDecoration(
                  color: Color.fromARGB(216, 179, 178, 178),
                  borderRadius:
                      BorderRadiusDirectional.all(Radius.circular(7.0))),
              child: TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.all(10),
                    textStyle: const TextStyle(fontSize: 14),
                  ),
                  onPressed: () {},
                  child: Expanded(
                      child: Row(
                    children: [Icon(Icons.science_outlined), Text('Science')],
                  ))),
            ),
            Container(
              width: 100,
              margin: EdgeInsets.only(top: 10.0, right: 10.0),
              decoration: const BoxDecoration(
                  color: Color.fromARGB(216, 179, 178, 178),
                  borderRadius:
                      BorderRadiusDirectional.all(Radius.circular(7.0))),
              child: TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.all(10),
                    textStyle: const TextStyle(fontSize: 14),
                  ),
                  onPressed: () {},
                  child: Expanded(
                      child: Row(
                    children: [
                      Icon(Icons.history_edu_outlined),
                      Text('History')
                    ],
                  ))),
            ),
            Container(
              width: 110,
              margin: EdgeInsets.only(top: 10.0, right: 10.0),
              decoration: const BoxDecoration(
                  color: Color.fromARGB(216, 179, 178, 178),
                  borderRadius:
                      BorderRadiusDirectional.all(Radius.circular(7.0))),
              child: TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.all(10),
                    textStyle: const TextStyle(fontSize: 14),
                  ),
                  onPressed: () {},
                  child: Expanded(
                      child: Row(
                    children: [
                      Icon(Icons.military_tech_outlined),
                      Text('Tehnology')
                    ],
                  ))),
            ),
            Container(
              width: 110,
              margin: EdgeInsets.only(top: 10.0, right: 10.0),
              decoration: const BoxDecoration(
                  color: Color.fromARGB(216, 179, 178, 178),
                  borderRadius:
                      BorderRadiusDirectional.all(Radius.circular(7.0))),
              child: TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.all(10),
                    textStyle: const TextStyle(fontSize: 14),
                  ),
                  onPressed: () {},
                  child: Expanded(
                      child: Row(
                    children: [
                      Icon(Icons.psychology_alt_outlined),
                      Text('philosopy')
                    ],
                  ))),
            ),
          ],
        ),
        Padding(padding: EdgeInsets.only(bottom: 10.0)),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            'Recomendation',
            style: TextStyle(fontSize: 20),
          ),
          Icon(Icons.arrow_forward_outlined)
        ]),
        Container(
            height: 185,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Card(
                  child: Column(
                    children: [
                      Image.asset(
                        'lib/Icons/borncrime.jpg',
                        width: 100,
                      ),
                      Text('Born a Crime'),
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.symmetric(horizontal: 10.0)),
                Card(
                  child: Column(
                    children: [
                      Image.asset(
                        'lib/Icons/evolution.jpg',
                        width: 100,
                      ),
                      Text('Evolution'),
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.symmetric(horizontal: 10.0)),
                Card(
                  child: Column(
                    children: [
                      Image.asset(
                        'lib/Icons/lelasew.jpg',
                        width: 100,
                      ),
                      Text('Lelasew'),
                    ],
                  ),
                ),
              ],
            )),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            'New',
            style: TextStyle(fontSize: 20),
          ),
          Icon(Icons.arrow_forward_outlined)
        ]),
        Container(
            height: 185,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Card(
                  child: Column(
                    children: [
                      Image.asset(
                        'lib/Icons/Atomic Habit.jpg',
                        width: 100,
                      ),
                      Text('Atomic Habits')
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.symmetric(horizontal: 10.0)),
                Card(
                  child: Column(
                    children: [
                      Image.asset(
                        'lib/Icons/richdad.jpg',
                        width: 100,
                      ),
                      Text('Rich dad Poor Dad'),
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.symmetric(horizontal: 10.0)),
                Card(
                  child: Column(
                    children: [
                      Image.asset(
                        'lib/Icons/yebedel.jpg',
                        width: 100,
                      ),
                      Text('Yebedel Kasa'),
                    ],
                  ),
                ),
              ],
            )),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            'Trending',
            style: TextStyle(fontSize: 20),
          ),
          Icon(Icons.arrow_forward_outlined)
        ]),
        Container(
            height: 185,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Column(
                  children: [
                    Image.asset(
                      'lib/Icons/positive.jpg',
                      width: 100,
                    ),
                    Text('Positive Thinkig'),
                  ],
                ),
                Padding(padding: EdgeInsets.symmetric(horizontal: 10.0)),
                Card(
                  child: Column(
                    children: [
                      Image.asset(
                        'lib/Icons/mahlet.jpg',
                        width: 100,
                      ),
                      Text('Mahlet'),
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.symmetric(horizontal: 10.0)),
                Card(
                  child: Column(
                    children: [
                      Image.asset(
                        'lib/Icons/lelasew.jpg',
                        width: 100,
                      ),
                      Text('Lelasew'),
                    ],
                  ),
                ),
              ],
            ))
      ]),
      bottomNavigationBar: Row(children: [
        Expanded(
          child: Icon(Icons.calendar_month),
        ),
        Expanded(
          child: Icon(Icons.library_books_outlined),
        ),
        Expanded(
          child: Icon(Icons.home_outlined),
        ),
        Expanded(child: Icon(Icons.book)),
        Expanded(
          child: Icon(Icons.person_2_outlined),
        ),
      SizedBox(height: 10,)
      ]),
    );
  }
}
