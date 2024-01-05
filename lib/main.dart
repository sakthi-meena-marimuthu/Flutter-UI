import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF292B2C),
        title: const Icon(
          Icons.bar_chart_rounded,
          color: Colors.white,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(6),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                border: Border.all(
                  color: Colors.white38,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: Image.network(
                      'data:image/jpeg;base64,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'),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Color(0xFF292B2C),
        ),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(10, 40, 10, 20),
              child: const Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Hello Sakthi',
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              )),
                          Text('Welcome Back !',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w300,
                                color: Colors.white,
                              )),
                        ]),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 30),
                          child: Icon(
                            Icons.menu_open,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xffdffafb),
                            borderRadius: BorderRadius.circular(35.0),
                          ),
                          height: 170,
                          margin: const EdgeInsets.all(10),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.settings_accessibility),
                              Text('230K',
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold)),
                              Text('sales',
                                  style: TextStyle(
                                    fontSize: 15,
                                  )),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xffe5e1d7),
                            borderRadius: BorderRadius.circular(35.0),
                          ),
                          height: 200,
                          margin: const EdgeInsets.all(10),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.person),
                              Text('8.549K',
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold)),
                              Text('customers',
                                  style: TextStyle(
                                    fontSize: 15,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xFFFAF6F6),
                            borderRadius: BorderRadius.circular(35.0),
                          ),
                          height: 220,
                          margin: const EdgeInsets.all(10),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.settings_accessibility),
                              Text('1.423K',
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold)),
                              Text('Products',
                                  style: TextStyle(
                                    fontSize: 15,
                                  )),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xfffbdeff),
                            borderRadius: BorderRadius.circular(35),
                          ),
                          height: 200,
                          margin: const EdgeInsets.all(10),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.person),
                              Text('\$9745',
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold)),
                              Text('Revenue',
                                  style: TextStyle(
                                    fontSize: 15,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          const BottomNavigationBarItem(
            backgroundColor: Color(0xFF292B2C),
            icon: Icon(
              Icons.camera_alt_outlined,
            ),
            label: '',
          ),
          const BottomNavigationBarItem(
            backgroundColor: Color(0xFF292B2C),
            icon: Icon(
              Icons.movie_creation_outlined,
            ),
            label: '',
          ),
          const BottomNavigationBarItem(
            backgroundColor: Color(0xFF292B2C),
            icon: Icon(
              Icons.stacked_bar_chart_outlined,
            ),
            label: '',
          ),
          const BottomNavigationBarItem(
            backgroundColor: Color(0xFF292B2C),
            icon: Icon(
              Icons.person_2_outlined,
            ),
            label: '',
          ),
        ],
        selectedItemColor: Color(0xFF292B2C),
        selectedIconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
    );
  }
}
