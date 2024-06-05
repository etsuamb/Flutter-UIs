import 'package:flutter/material.dart';

class screenFour extends StatelessWidget {
  const screenFour({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Color(0xFFD1D0CE),
      child: Padding(
        padding: const EdgeInsets.only(top: 150),
        child: Column(
          children: [
            Container(
                height: 350,
                width: 500,
                child: Image.asset('Images/ai.jpg')),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Integrated with AI for robust content\n filtering, ensuring a safe user experience.',
                style: TextStyle(fontSize: 17),
              ),
            )
          ],
        ),
      ),
    );
  }
}
