import 'package:flutter/material.dart';
import 'package:github4/screen2.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 450,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://static.vecteezy.com/system/resources/previews/012/707/349/original/simple-red-heart-hand-drawn-illustration-in-doodle-style-valentine-s-day-love-romance-transparent-clipart-png.png'))),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
              margin: EdgeInsets.only(bottom: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Embrace\nA New Way \nOf Dating',
                    style: TextStyle(fontSize: 42, fontWeight: FontWeight.w600),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 150),
                    child: Text(
                      'We comnine culling edeg faceture with your new girl frende We comnine culling edeg faceture with your new girl frende',
                      style: TextStyle(
                          fontSize: 12,
                          wordSpacing: 1.3,
                          letterSpacing: 1.05,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey.shade600),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const Screen2(),
                    ));
                    },
                    child: Container(
                      width: 120,
                      height: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromARGB(232, 246, 29, 72)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Get Started',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                          Icon(
                            Icons.arrow_outward,
                            color: Colors.white,
                            size: 20,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
