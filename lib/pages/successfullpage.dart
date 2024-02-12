import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'home.dart';
import 'settings.dart';
import 'package:sustain_x/pages/notification.dart';

class Successfullpage extends StatelessWidget {
  const Successfullpage({Key? key, required this.index}) : super(key: key);

  final int index;

  //TextEditingController myController()=> _ToDoPageState();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                // Background text with stroke
                Center(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 100.0, 0.0, 0.0),
                    child: Text(
                      'Pickup Scheduled',
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 1
                          ..color = Colors.black,
                      ),
                    ),
                  ),
                ),
                // Foreground text
                Center(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 100.0, 0.0, 0.0),
                    child: Text(
                      'Pickup Scheduled',
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF1BE417),
                      ),
                    ),
                  ),
                ),

                Center(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 150.0, 0.0, 0.0),
                    child: Text(
                      'Successfully!',
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 1
                          ..color = Colors.black,
                      ),
                    ),
                  ),
                ),
                // Foreground text
                Center(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 150.0, 0.0, 0.0),
                    child: Text(
                      'Successfully!',
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF1BE417),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 200.0, 0.0, 0.0),
                  child: Lottie.asset(
                    'assets/animations/done_animation.json',
                    width: 490,
                    // height: 490,

                    repeat: false,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Container(
          child: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.menu),
                label: 'Menu',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.message_outlined),
                label: 'Notification',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings_outlined),
                label: 'Settings',
              ),
            ],
            currentIndex: 0,
            onTap: (int index) {
              switch (index) {
                case 0:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Home(
                        index: 0,
                      ),
                    ),
                  );
                  break;
                case 1:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Notifications(
                              index: 1,
                            )),
                  );
                  break;
                case 2:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Settings(
                        index: 2,
                      ),
                    ),
                  );
                  break;
              }
            },
            elevation: 0.0,
            backgroundColor: Colors.transparent,
            selectedItemColor: Colors.green,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(17.0),
            border: Border.all(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
