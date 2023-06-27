import 'package:flutter/material.dart';
import 'package:targow/pages/profile/login.dart';
import 'package:targow/pages/profile/register.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int selectedIndex =0;
  onTapIndex (int index) {
    selectedIndex =index;
    print (selectedIndex);
  }
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: 50,
            child: Row(
              children: List.generate(
                  2,
                  (index) => Expanded(
                      flex: 2,
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            selectedIndex =index;
                          });

                        },
                        child: Container(
                          padding: EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14.0),
                            color: selectedIndex==index  ? Colors.green : Colors.grey
                          ),
                          child: index == 0
                              ? Text("Ulgama girmek",textAlign: TextAlign.center,style: TextStyle(fontSize: 22))
                              : Text('Agza bolmak',textAlign: TextAlign.center,style: TextStyle(fontSize: 22)),
                        ),
                      ))),
            ),
          ),
        ),
        selectedIndex == 0 ? MyLogin() : MyRegister(),
      ],
    );
  }
}
