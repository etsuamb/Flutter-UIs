import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class screenOne extends StatelessWidget {
  const screenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF1F655A),
      child: Padding(
        padding: const EdgeInsets.only(top: 200),
        child: Column(
          children: [
            Container(
              height: 300,
              width: 500,
              child: Image.asset('Images/collaborate.jpg')),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Fostering a Supportive Community for\n University Student Mental Well-being.',
  
                style: TextStyle(fontSize: 17,
                color: Colors.white
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
