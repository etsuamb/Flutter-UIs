import 'package:flutter/material.dart';

class screenTwo extends StatelessWidget {
  const screenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFEA4D4E),
      child: Padding(
        padding: const EdgeInsets.only(top: 150),
        child: Column(
          children: [
            Container(
                height: 350,
                width: 500,
                child: Image.asset('Images/psychologist.png')),
                SizedBox(height: 20),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Enlists Pioneering Volunteer Psychologists\n to Provide Mentorship Services.,',
                style: TextStyle(fontSize: 17,
                color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
