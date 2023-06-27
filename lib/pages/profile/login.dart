import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.25,
          width: MediaQuery.of(context).size.width * 0.60,
          child: Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0UyLYQq_jTM30toyu62ceCpd3e91fZlqTTA&usqp=CAU'),
        ),
        SingleChildScrollView(
          child: Container(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.3),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 35, right: 35),
                  child: Column(
                    children: [
                      TextField(
                        style: const TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                            filled: true,
                            hintText: "Ulanyjy ady",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      TextField(
                        style: const TextStyle(),
                        obscureText: true,
                        decoration: InputDecoration(
                            filled: true,
                            hintText: "Acar sozi",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Ulagama girin',
                            style: TextStyle(
                                fontSize: 27, fontWeight: FontWeight.w700),
                          ),
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: const Color(0xff4fff5b),
                            child: IconButton(
                                color: Colors.black,
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.arrow_forward,
                                )),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Acar sozuni unutdym',
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Color(0xff4c505b),
                                  fontSize: 18,
                                ),
                              )),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
