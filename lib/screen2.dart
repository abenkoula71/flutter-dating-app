import 'package:flutter/material.dart';
import 'package:github4/screen3.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1543113415-ba3b69906499?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MTZ8MTQwNDEyOXx8ZW58MHx8fHw%3D&w=1000&q=80'),
                fit: BoxFit.cover)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Center(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 2),
                height: 15,
                width: 60,
                decoration: BoxDecoration(
                    color: Color.fromARGB(181, 0, 0, 0),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 8,
                      width: 20,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(144, 255, 255, 255),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(144, 255, 255, 255),
                          borderRadius: BorderRadius.circular(20)),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'Peggi. 23 ',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        height: 5,
                        width: 5,
                        decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(10)),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.send_outlined,
                        color: Colors.white,
                      ),
                      Text(
                        '300ft From You',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                ...List.generate(
                    3,
                    (index) => Container(
                          margin: EdgeInsets.only(right: 5),
                          padding:
                              EdgeInsets.symmetric(horizontal: 7, vertical: 5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Color.fromARGB(177, 66, 66, 66)),
                          child: Text(
                            'Mancke',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ))
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text('INFO :',
                style: TextStyle(
                  fontSize: 14,
                  color: Color.fromARGB(255, 69, 69, 69),
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(
              height: 10,
            ),
            Text(
              'hey i am a good person hey i am a good person hey i am a good person hey i am a good person hey i am a good person hey i am a good person hey i am a good person  i live in alger ',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(192, 62, 62, 62),
                        borderRadius: BorderRadius.circular(12)),
                    height: 55,
                    child: Icon(
                      Icons.delete_outline,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const Screen3(),
                    ));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 233, 30, 91),
                          borderRadius: BorderRadius.circular(12)),
                      height: 55,
                      child: Icon(
                        Icons.favorite,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
