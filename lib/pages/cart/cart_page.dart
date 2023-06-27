import 'package:flutter/material.dart';
class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(4.0),
            child: const Card(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Total",
                      style:
                      TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 10),
                    Chip(
                      label: Text("676"),
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return Dismissible(
                  background: Container(
                    padding: const EdgeInsets.only(right: 20),
                    color: Theme.of(context).errorColor,
                    alignment: Alignment.centerRight,
                    child: const Icon(
                      Icons.delete,
                      color: Colors.white,
                    ),
                  ), key: const ValueKey('123'),
                    direction: DismissDirection.endToStart,
                    onDismissed: (direction) {
                      print ("remove succesfully");
                    },
                  child: const Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        child: FittedBox(
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                  "200.50 TMT"),
                            )),
                      ),
                      title: Text("Product title"),
                      subtitle: Text(
                          "Total: 1089.99 TMT"),
                      trailing: Text(
                          "2x"),
                    ),
                  ),
                );
              },
              itemCount: 3,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            width: double.infinity,
            child: MaterialButton(
              color: Colors.teal,
              child: const Text(
                "ORDER NOW",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
