import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
          children: [
            //logo
            Padding(
              padding: const EdgeInsets.all(25.0) ,
              child: Image.asset(
                'lib/asset/nikelogo.png',
                height: 200,
                alignment: Alignment.center,
                ),
            ),

            const SizedBox(height: 50),
            //title
            const Text(
              'Just Do It',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black
              
              ),
            ),
            //subtitle
            const SizedBox(height: 40),
            //add padding
            const Padding(
              padding: EdgeInsets.all(25.0),
              child:Text(
                  'Make the most of now, find the shoes that fits you. Just Do It. ',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            const SizedBox(height: 50),
            //button
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/homepage'),
              child:
            SizedBox(
            child: Container(
            width: 200,
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(10)
              ),
              padding: const EdgeInsets.all(25),
              // child: Center(
                child: const Text(
                  'Get Started',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    
                ),
                textAlign: TextAlign.center,

              )
            )
            
            )
         )
      ],
      )
    );
  }
}