import 'package:flutter/material.dart';
import 'package:targow/pages/category/category_details.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: GestureDetector(
        onTap: (){
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const CategoryDetails()));
        },
        child: GridView.builder(
          physics: const BouncingScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
              crossAxisCount: 2,
              childAspectRatio: 0.8),
          itemCount: 8,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                  color:Color(0xff3fffee),
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(11.0),bottomRight: Radius.circular(11.0)),
              ),
              child: Column(
                children: [
                  Expanded (
                    flex:8,
                      child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIi63lMeoBDqn6euG8gjpEwv1XO9dWAj8FWEJuTZrX3REWwuJKm3U4Tk1HS287A38S7L4&usqp=CAU')),
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        Expanded (
                            flex:7,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 4.0,right: 2.0),
                              child: Text('Title category',style: TextStyle(fontWeight: FontWeight.bold),),
                            )),
                        Expanded (
                            flex: 3,
                            child: Card (child: Text ('1123 items',textAlign: TextAlign.center,style: TextStyle(fontStyle: FontStyle.italic),),)),
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
