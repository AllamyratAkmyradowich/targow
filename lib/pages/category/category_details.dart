import 'package:flutter/material.dart';
class CategoryDetails extends StatefulWidget {
  const CategoryDetails({super.key});

  @override
  State<CategoryDetails> createState() => _CategoryDetailsState();
}

class _CategoryDetailsState extends State<CategoryDetails> {
  int selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details'),
      ),
      body: ListView(
        children: [
          SizedBox(
    height: 40,
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(5.0),
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(10, (index) =>
                  OutlinedButton (
                    onPressed: (){
                      setState(() {
                        selectedIndex=index;
                      });

                      print (selectedIndex);
                    },
                      child:Text ('title $index'),
                  ),

              ),
            ),
          )
          ),
          Center(child: Text ('$selectedIndex')),
        ],
      ),
    );
  }
}
