import 'package:flutter/material.dart';

import 'clipper.dart';

void main() {
  runApp(const ProfileEdit());
}

class ProfileEdit extends StatelessWidget {
  const ProfileEdit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(
          children: [
            Profile(),
          ],
        ),
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
                  height: 290,
                  color: const Color(0xFF50A9E2),
                ),
              ),
              Positioned(
                left: 36,
                top: 220,
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: const ShapeDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://images.unsplash.com/photo-1508138221679-760a23a2285b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
                      ),
                      fit: BoxFit.fill,
                    ),
                    shape: CircleBorder(
                      side: BorderSide(width: 7, color: Colors.white),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0xFF96D8CC),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 35,
                top: 35,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: const Icon(Icons.arrow_back,
                          color: Colors.white, size: 30),
                    ),
                    const SizedBox(width: 50),
                    const Text(
                      'Editing',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 23,
                      ),
                    ),
                    const SizedBox(width: 120),
                    GestureDetector(
                      onTap: () {},
                      child:
                          const Icon(Icons.info_outline, color: Colors.white),
                    ),
                    const SizedBox(width: 10),
                    GestureDetector(
                      onTap: () {},
                      child: const Icon(Icons.arrow_forward_sharp,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 30,
                top: 105,
                child: SizedBox(
                  width: 209,
                  height: 37,
                  child: const Text(
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
                top: 95,
                left: 200,
                child: GestureDetector(
                  onTap: () {},
                  child: const Icon(Icons.edit_outlined,
                      color: Colors.white, size: 30),
                ),
              ),
              Positioned(
                left: 300,
                top: 105,
                child: SizedBox(
                  width: 86,
                  height: 19,
                  child: const Text(
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
                top: 357,
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
                                  width: 1, color: const Color(0xFF50A9E2)),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 17.56,
                        top: 12,
                        child: SizedBox(
                          width: 281.88,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              const SizedBox(height: 10),
                              const Text(
                                'Description',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  fontFamily: 'Roboto',
                                  color: Colors.black,
                                  height: 0.14,
                                  letterSpacing: 1,
                                ),
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nec pretium urna. Curabitur tristique commodo tortor',
                                style: TextStyle(
                                  height: 1.5,
                                  fontSize: 12,
                                  fontFamily: 'Roboto',
                                  color: Color(0xFF8F92A1),
                                  letterSpacing: 1,
                                ),
                              ),
                              const SizedBox(height: 16),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 290,
                        top: 5,
                        child: GestureDetector(
                          onTap: () {},
                          child: const Icon(Icons.edit_outlined,
                              color: Colors.red, size: 26),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 24,
                top: 150,
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
                          decoration:  ShapeDecoration(
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
                        child: const SizedBox(
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
                left: 290,
                top: 102,
                child: Container(
                  width: 73,
                  height: 23,
                  decoration:  ShapeDecoration(
                    color: Colors.white.withOpacity(0),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Colors.white),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 103,
                top: 290,
                child: Container(
                  width: 26.27,
                  height: 26,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 5.47, vertical: 5.42),
                  clipBehavior: Clip.antiAlias,
                  decoration:  ShapeDecoration(
                    color: Color(0xFF50A9E2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  child: GestureDetector(
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 18,
                    ),
                    onTap: () {
                      // make it to navigate to postpage it is the plus sign in the users profile picture
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
