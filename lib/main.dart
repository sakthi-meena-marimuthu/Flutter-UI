import 'package:flutter/material.dart';
import './MyAppBar.dart';
import './SalesRevenue.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _bottomState = 0;
  String name = "Sakthi";
  final Map<String, double> dataList = {
    'sales': 230,
    'customers': 8.549,
    'revenue': 9745,
    'products': 1.423
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF292B2C),
      appBar: const MyAppBar(),
      body: Container(
        decoration: const BoxDecoration(
          color: Color(0xFF292B2C),
        ),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(10, 10, 10, 20),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 4,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Hello $name',
                              style: const TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              )),
                          const Text('Welcome Back !',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              )),
                        ]),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const SalesRevenue()));
                            },
                            child: const Icon(
                              Icons.list,
                              size: 40,
                              color: Colors.white,
                            ),
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
                          margin: const EdgeInsets.fromLTRB(20, 10, 20, 5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              const Icon(Icons.swap_vert),
                              Text('${dataList['sales']}' 'K',
                                  style: const TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold)),
                              const Text(
                                'Sales',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w600),
                              ),
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
                          margin: const EdgeInsets.fromLTRB(20, 10, 20, 5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              const Icon(Icons.people_rounded),
                              Text('${dataList['customers']}' 'K',
                                  style: const TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold)),
                              const Text('Customers',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
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
                          margin: const EdgeInsets.fromLTRB(20, 10, 20, 5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              const Icon(
                                  Icons.production_quantity_limits_rounded),
                              Text('${dataList['products']}' 'K',
                                  style: const TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold)),
                              const Text(
                                'Products',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w600),
                              ),
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
                          margin: const EdgeInsets.fromLTRB(20, 10, 20, 5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              const Icon(Icons.pie_chart_rounded),
                              Text('\$' '${dataList['revenue']}',
                                  style: const TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold)),
                              const Text(
                                'Revenue',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w600),
                              ),
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
        currentIndex: _bottomState,
        elevation: 0.0,
        onTap: (int index) {
          setState(() {
            _bottomState = index;
          });
        },
        items: [
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.payments_outlined,
            ),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.stacked_bar_chart_outlined,
            ),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.person_2_outlined,
            ),
            label: '',
          ),
        ],
        backgroundColor: const Color(0xFF292B2C),
        selectedItemColor: const Color(0xfff1fbff),
        unselectedItemColor: const Color(0xffa2b8c3),
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
