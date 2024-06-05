import 'package:flutter/material.dart';

class screenThree extends StatelessWidget {
  const screenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(top: 150),
        child: Column(
          children: [
            Container(
                height: 350,
                width: 500,
                child: Image.asset('Images/private.jpg')),
                SizedBox(height: 20),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Respecting User Privacy and Offering\n the Option of Anonymous Identity.',
                style: TextStyle(fontSize: 17),
              ),
            )
          ],
        ),
      ),
    );
  }
}
