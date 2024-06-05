// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'clipper.dart';

void main() {
  runApp(const ProfilePage());
}




class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: [
          Profile(),
        ]),
      ),
    );
  }
}

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
        
          height: 900,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
            ClipPath(
                clipper: MyCustomClipper(),
                child: Container(
                  width: double.infinity,
                  height: 230,
                  color: Color(0xFF50A9E2),
                ),
              ),
              Positioned(
                left: 36,
                top: 179,
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://images.unsplash.com/photo-1508138221679-760a23a2285b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
                      ),
                      fit: BoxFit.fill,
                    ),
                    shape: OvalBorder(
                      side: BorderSide(width: 7, color: Colors.white),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0xFF96D8CC),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 34,
                top: 62,
                child: SizedBox(
                  width: 209,
                  height: 37,
                  child: Text(
                    'Esther John',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 282,
                top: 78,
                child: SizedBox(
                  width: 86,
                  height: 19,
                  child: Text(
                    'AASTU',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 26,
                top: 324,
                child: Container(
                  width: 317,
                  height: 102.19,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 52.68,
                        top: 37,
                        child: SizedBox(
                          width: 53.60,
                          height: 28,
                          child: Text(
                            '',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'Jost',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 317,
                          height: 102.19,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 317,
                                  height: 102.19,
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          width: 1, color: Color(0xFF50A9E2)),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 17.56,
                                top: 28,
                                child: SizedBox(
                                  width: 123,
                                  height: 67,
                                  child: Text(
                                    '',
                                    style: TextStyle(
                                      color: Color(0xFF8F92A1),
                                      fontSize: 12,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w400,
                                      height: 0.14,
                                      letterSpacing: 1,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 17.56,
                        top: 12,
                        height: 300,
                        child: SizedBox(
                          width: 281.88,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(height: 10),
                              Text(
                                'Description',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  fontFamily: 'Roboto',
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  height: 0.14,
                                  letterSpacing: 1,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nec pretium urna. Curabitur tristique commodo tortor',
                                style: TextStyle(
                                  height: 1.5,
                                  fontSize: 12,
                                  fontFamily: 'Roboto',
                                  color: Color(0xFF8F92A1),
                                  letterSpacing: 1,
                                ),
                              ),
                              SizedBox(height: 16),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 24,
                top: 111,
                child: Container(
                  width: 185,
                  height: 33,
                  child: Stack(
                    
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 185,
                          height: 33,
                          decoration: ShapeDecoration(
                            color: Colors.white.withOpacity(0),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(width: 1, color: Colors.white),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 12,
                        top: 7,
                        child: SizedBox(
                          width: 170,
                          height: 23.81,
                          child: Text(
                            'estherjohn@gmail.com',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w300,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 273,
                top: 76,
                child: Container(
                  width: 73,
                  height: 23,
                  decoration: ShapeDecoration(
                    color: Colors.white.withOpacity(0),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Colors.white),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
             
              Positioned(
                left: 23,
                top: 450,
                child: Container(
                  width: 314,
                  height: 178,
                  child: Stack(
                    children: [
                      
                      Positioned(
                        left: 10.73,
                        top: 0,
                        child: SizedBox(
                          width: 42.91,
                          height: 17.16,
                          child: Text(
                            'Posts',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 21.45,
                        top: 34.31,
                        child: Container(
                          width: 292.55,
                          height: 87.93,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(width: 1),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ),
                      // SizedBox(
                      //   height: 20,
                      // ),
                      Positioned(
                        left: 37.06,
                        top: 46.47,
                        child: Container(
                          width: 107.27,
                          height: 64.34,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                'https://images.unsplash.com/photo-1508138221679-760a23a2285b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
                              ),
                              fit: BoxFit.fill,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 154.07,
                        top: 47.18,
                        child: SizedBox(
                          width: 159.93,
                          height: 65.33,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: Text(
                              'Culpa aliquam consequuntur veritatis at consequuntur praesentium beatae ',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 20.48,
                        top: 127.96,
                        child: Container(
                          width: 293.52,
                          height: 50.04,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(width: 1),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 37.06,
                        top: 140.11,
                        child: SizedBox(
                          width: 271.09,
                          height: 75.73,
                          child: Text(
                            'Culpa aliquam consequuntur veritatis at consequuntur praesentium beatae ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 4.87,
                        top: 25.73,
                        child: Container(
                          width: 309.12,
                          height: 230,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1,
                                strokeAlign: BorderSide.strokeAlignCenter,
                                color: Color(0xFF6E4532),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 4.87,
                        top: 30.02,
                        child: Transform(
                          transform: Matrix4.identity()
                            ..translate(0.0, 0.0)
                            ..rotateZ(1.57),
                          child: Container(
                            width: 147.98,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  width: 1,
                                  strokeAlign: BorderSide.strokeAlignCenter,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 40.03,
                        child: Container(
                          width: 9.75,
                          height: 7.15,
                          decoration: ShapeDecoration(
                            color: Color(0xFF50A9E2),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 132.96,
                        child: Container(
                          width: 9.75,
                          height: 7.15,
                          decoration: ShapeDecoration(
                            color: Color(0xFF50A9E2),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 103,
                top: 253,
                child: Container(
                  width: 26.27,
                  height: 26,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 5.47, vertical: 5.42),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: Color(0xFF50A9E2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  child: GestureDetector(child: Icon(Icons.add,color: Colors.white, size: 18,),
                  onTap: () {
                    // make it to navigate to postpage it is the plus sign in the users profile picture
                  },
                  )
                ),
              ),
             
             
            ],
          ),
        ),
      ],
    );
  }
}

