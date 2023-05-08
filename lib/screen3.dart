import 'package:flutter/material.dart';

class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  List girl = [
    {
      'name': 'girl1',
      'img':
          'https://i.pinimg.com/originals/3b/43/b3/3b43b30c604ba34fd74c460307777429.jpg',
      'age': '20',
      'message': 'i am good',
      'time': "5 min"
    },
    {
      'name': 'girl2',
      'img':
          'https://images.unsplash.com/photo-1521038199265-bc482db0f923?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YW1lcmljYW4lMjBnaXJsfGVufDB8fDB8fA%3D%3D&w=1000&q=80',
      'age': '22',
      'message': 'i am good',
      'time': '50 min'
    },
    {
      'name': 'girl3',
      'img':
          'https://images.unsplash.com/photo-1543113415-ba3b69906499?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MTZ8MTQwNDEyOXx8ZW58MHx8fHw%3D&w=1000&q=80',
      'age': '21',
      'message': 'i am good',
      'time': '2 days'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 35,
          ),
          Container(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              'MATCHES :',
              style: TextStyle(fontWeight: FontWeight.w500, color: Colors.grey),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...List.generate(
                    5,
                    (index) => Row(
                          children: [
                            ...List.generate(
                                girl.length,
                                (index) => Container(
                                      margin: EdgeInsets.only(left: 15),
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 50,
                                            width: 50,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                image: DecorationImage(
                                                    image: NetworkImage(
                                                        '${girl[index]['img']}'),
                                                    fit: BoxFit.cover)),
                                          ),
                                          Text(
                                            girl[index]['name'],
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            girl[index]['age'],
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          )
                                        ],
                                      ),
                                    ))
                          ],
                        ))
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            padding: EdgeInsets.symmetric(horizontal: 15),
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color.fromARGB(71, 158, 158, 158)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Search',
                  style: TextStyle(
                      color: Color.fromARGB(255, 136, 136, 136), fontSize: 16),
                ),
                Icon(
                  Icons.search,
                  color: Color.fromARGB(255, 136, 136, 136),
                )
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              'Chat :',
              style: TextStyle(fontWeight: FontWeight.w500, color: Colors.grey),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  ...List.generate(
                      5,
                      (index) => Column(
                            children: [
                              ...List.generate(
                                  girl.length,
                                  (index) => Container(
                                        margin: EdgeInsets.only(
                                            bottom: 10, left: 15, right: 15),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Container(
                                                  height: 50,
                                                  width: 50,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              50),
                                                      image: DecorationImage(
                                                          image: NetworkImage(
                                                              '${girl[index]['img']}'),
                                                          fit: BoxFit.cover)),
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Text(
                                                          '${girl[index]['name']}. ${girl[index]['age']} ',
                                                          style: TextStyle(
                                                              fontSize: 16,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                        Container(
                                                          height: 5,
                                                          width: 5,
                                                          decoration: BoxDecoration(
                                                              color: Colors.red,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10)),
                                                        )
                                                      ],
                                                    ),
                                                    Text(
                                                      girl[index]['message'],
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Color.fromARGB(
                                                              255,
                                                              134,
                                                              134,
                                                              134),
                                                          fontSize: 12),
                                                    )
                                                  ],
                                                )
                                              ],
                                            ),
                                            Text(
                                              girl[index]['time'],
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Color.fromARGB(
                                                      255, 134, 134, 134),
                                                  fontSize: 12),
                                            )
                                          ],
                                        ),
                                      ))
                            ],
                          ))
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          color: Color.fromARGB(70, 177, 177, 177),
        ),
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.home_outlined),
            Icon(Icons.favorite_outline),
            Icon(
              Icons.chat_bubble_outline,
              color: Color.fromARGB(255, 233, 30, 81),
            ),
            Icon(Icons.person_outline)
          ],
        ),
      ),
    );
  }
}
