import 'package:flutter/material.dart';
import 'package:sustain_x/pages/settings.dart';
import 'home.dart';

class Notifications extends StatelessWidget {
  final int index;

  const Notifications({Key? key, required this.index}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 0.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 0.0, horizontal: 0),
                child: Text(
                  'Notifications',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28.0,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Notification(
                  data:
                      'Make your home trash free,\nGrab this opportunity now!!'),
              SizedBox(height: 10),
              Notification(data: 'Go Green'),
            ],
          ),
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
            currentIndex: 1,
            onTap: (int index) {
              switch (index) {
                case 0:
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Home(
                              index: 0,
                            )),
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
                            )),
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

class Notification extends StatelessWidget {
  final String data;

  const Notification({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.black, width: 1), // Stroke
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.8),
                spreadRadius: 2,
                blurRadius: 2,
                offset: Offset(0, 1.5), // changes position of shadow
              ),
            ],
          ),
          padding: EdgeInsets.all(08),
          child: Row(
            children: [
              // Icon(Icons.notifications, color: Colors.green),
              SizedBox(
                width: 10,
              ),
              Text(
                '$data',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Expanded(child: SizedBox(width: double.infinity)),
              IconButton(
                icon: const Icon(
                  Icons.notifications,
                  color: Colors.green,
                  size: 25,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
