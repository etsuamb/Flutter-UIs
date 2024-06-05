import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:splash_screen/first_page.dart';
import 'package:splash_screen/onboarding_screens/screen1.dart';
import 'package:splash_screen/onboarding_screens/screen2.dart';
import 'package:splash_screen/onboarding_screens/screen3.dart';
import 'package:splash_screen/onboarding_screens/screen4.dart';

void main() {
  runApp(onboardingScreen());
}

class onboardingScreen extends StatefulWidget {
  const onboardingScreen({super.key});

  @override
  State<onboardingScreen> createState() => _onboardingScreenState();
}

class _onboardingScreenState extends State<onboardingScreen> {
  PageController _controller = PageController();
  bool onLast = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            onPageChanged: (index) {
              setState(() {
                onLast = (index == 3);
              });
            },
            controller: _controller,
            children: [
              screenOne(),
              screenTwo(),
              screenThree(),
              screenFour(),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50,left: 270),
                child: GestureDetector(
                  child: Text('skip',
                  style: TextStyle(fontSize: 25,
                  fontWeight: FontWeight.bold
                  
                  ),
                  ),
                  onTap: () {
                    _controller.jumpTo(3);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 525),
                child: Container(
                    alignment: Alignment(0, 0),
                    child: SmoothPageIndicator(
                      controller: _controller,
                      count: 4,
                      effect: SwapEffect(
                        activeDotColor: Colors.purple,
                        dotColor: Colors.purple.shade100,
                        dotHeight: 18,
                        dotWidth: 18,
                        spacing: 16,
                      ),
                    )),
              ),
              SizedBox(height: 15),
                  onLast
                  ? Padding(
                    padding: const EdgeInsets.only(bottom:30),
                    child: Container(
                       height: 55,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.green.withOpacity(0.2),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                      child: MaterialButton(
                        splashColor: Colors.purple,
                          child: Text('Enter',style: TextStyle(fontSize: 23,
                          color: Colors.white
                          ),),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return FirstPage(); // this should return the first page of the real app this is just for demonestration
                            }));
                          },
                        ),
                    ),
                  )
                  : Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: Container(
                      height: 55,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                            BoxShadow(
                              color: Colors.green.withOpacity(0.3),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), 
                            ),
                          ],
                      ),
                      child: MaterialButton(
                        splashColor: Colors.black,
                          child: Text('Next',
                          style: TextStyle(fontSize: 23,
                          color: Colors.white
                          ),
                          ),
                         onPressed : () {
                            _controller.nextPage(
                              duration: Duration(microseconds: 500),
                              curve: Curves.easeIn,
                            );
                          },
                        ),
                    ),
                  ),
                  
            ],
          ),
        ],
      ),
    );
  }
}
