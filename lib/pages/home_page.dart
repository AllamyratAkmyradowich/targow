import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.08,
            width: MediaQuery.of(context).size.width,
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color(0xAc01f1f1),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
                hintText: "Search for products",
                prefixIcon: const Icon(Icons.search),
                prefixIconColor: Colors.black,
              ),
            ),
          ),
        ),
        SizedBox(
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Arzanlasyk',
                  style: TextStyle(
                      fontSize: 22,
                      fontStyle: FontStyle.italic,
                      color: Colors.blueGrey),
                ),
                Row(
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Hemmesi ',
                          style: TextStyle(
                              fontSize: 22,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold,
                              color: Colors.indigo),
                        )),
                    const Icon(
                      Icons.chevron_right,
                      size: 30,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.2,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) {
                return Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    Card(
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        color: const Color(0xff10fff0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSQIwMCtR9HsDW33lPjNYUrDTAjd2k8VrxfQ&usqp=CAU',
                                fit: BoxFit.cover),
                            const Text("product name")
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container (
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: Colors.red,
                        ),
                        height: 25,
                        width: 55,
                        child: const Text ('-15%',textAlign: TextAlign.center,style: TextStyle(color:Color(0xffffffff),fontSize: 18.0,fontWeight: FontWeight.bold),),
                      ),
                    ),
                  ],
                );
              }),
        ),
        SingleChildScrollView(
          child: Column(
            children: List.generate(5, (index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.15,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(14.0),
                      ),
                      width: MediaQuery.of(context).size.width,
                      child:   Row(
                          children: <Widget>[
                            Expanded (
                              flex:3,
                              child : Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXIzNi0zi7uvfIrsv7qH2Ez2dii6n-U8zP9g&usqp=CAU',fit: BoxFit.cover,)
                            ),
                            const Expanded(
                              flex :5,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text ("Name Product"),
                                  Text ("Description product"),
                                  Text ("Price Product (20.50 TMT) ")
                                  ],
                              ),)
                          ],
                        ),
                      ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Colors.green,
                      ),
                      height: 40,
                      width: 40,
                      child: const Icon(Icons.add),
                    ),
                  ],
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}
