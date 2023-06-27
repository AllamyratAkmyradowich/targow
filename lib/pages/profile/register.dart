import 'package:flutter/material.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({super.key});

  @override
  State<MyRegister> createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.25,
          width: MediaQuery.of(context).size.height * 0.50,
          child: Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIGU9iGuz86kb-lml6it40RC8q7Gu1v3WhsQ&usqp=CAU'),
        ),
        Container (
          child: Text ("Hos  geldiniz!", textAlign: TextAlign.center,style: TextStyle(color: Colors.teal, fontSize: 25, fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),)
        ),
        SingleChildScrollView(
          child: Container(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.28),
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
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                color: Colors.black,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                color: Colors.black,
                              ),
                            ),
                            hintText: "Ulanyjy ady",
                            hintStyle: const TextStyle(color: Colors.black),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      TextField(
                        style: const TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                color: Colors.black,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                color: Colors.black,
                              ),
                            ),
                            hintText: "Telefon Belgisi",
                            hintStyle: const TextStyle(color: Colors.black),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                        keyboardType: TextInputType.phone,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      TextField(
                        style: const TextStyle(color: Colors.black),
                        obscureText: true,
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                color: Colors.black,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                color: Colors.black,
                              ),
                            ),
                            hintText: "Acar sozi",
                            hintStyle: const TextStyle(color: Colors.black),
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
                            'Agza bolun!',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 27,
                                fontWeight: FontWeight.w700),
                          ),
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: const Color(0xff0ff101),
                            child: IconButton(
                                color: Colors.black,
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.arrow_forward,
                                )),
                          )
                        ],
                      ),
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
