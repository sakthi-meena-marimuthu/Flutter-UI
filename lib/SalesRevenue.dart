import 'package:flutter/material.dart';
import './revenueList.dart';
import 'package:percent_indicator/percent_indicator.dart';
import './MyAppBar.dart';

class SalesRevenue extends StatefulWidget {
  const SalesRevenue({Key? key}) : super(key: key);

  @override
  State<SalesRevenue> createState() => _SalesRevenueState();
}

class _SalesRevenueState extends State<SalesRevenue> {
  String time = 'Since last week';

  List<revenueList> revenueData = [
    revenueList(
        header: 'Sales',
        listIcon: Icons.swap_vert,
        iconBack: const Color(0xffdffafb),
        vals: '230K'),
    revenueList(
        header: 'Customers',
        listIcon: Icons.people_rounded,
        iconBack: const Color(0xffe5e1d7),
        vals: '8.549K'),
    revenueList(
        header: 'Products',
        listIcon: Icons.production_quantity_limits_rounded,
        iconBack: const Color(0xFFFAF6F6),
        vals: '1.423K'),
    revenueList(
        header: 'Revenue',
        listIcon: Icons.pie_chart_rounded,
        iconBack: const Color(0xfffbdeff),
        vals: '\$9745')
  ];

  void _amountOwed(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            backgroundColor: Color(0xFFCCE6F5),
            content: Column(mainAxisSize: MainAxisSize.min, children: [
              Align(
                alignment: Alignment.bottomRight,
                child: Icon(
                  Icons.more_vert,
                  size: 20,
                ),
              ),
              SizedBox(
                height: 70,
              ),
              Icon(Icons.add),
              SizedBox(
                height: 10,
              ),
              Text('Amount Owed',
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.w500)),
              SizedBox(
                height: 10,
              ),
              Text('\$933,879.45',
                  style: const TextStyle(
                      fontSize: 30, fontWeight: FontWeight.w700)),
              SizedBox(
                height: 10,
              ),
              Text('\$126,783.89',
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold)),
            ]),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF292B2C),
      appBar: const MyAppBar(),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
              margin: const EdgeInsets.fromLTRB(10, 20, 10, 10),
              decoration: BoxDecoration(
                color: const Color(0xFFCCE6F5),
                borderRadius: BorderRadius.circular(35),
              ),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: const Text('Current Value',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w600)),
                          ),
                          Container(
                            child: const Text('\$432190',
                                style: TextStyle(
                                    fontSize: 39, fontWeight: FontWeight.w600)),
                          ),
                          Container(
                            child: const Text(
                              '+\$150,102',
                              style: TextStyle(
                                  fontSize: 28, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(60, 20, 10, 10),
                        child: CircularPercentIndicator(
                          radius: 44.0,
                          //circularStrokeCap: CircularStrokeCap.butt,
                          lineWidth: 13.0,
                          animation: true,
                          percent: 0.42,
                          center: Text(
                            "+42%",
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15.0),
                          ),
                          circularStrokeCap: CircularStrokeCap.round,
                          progressColor: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                    Expanded(
                      flex: 5,
                      child: Container(
                        child: const Text(
                          'Sales in this Week',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        child: InkWell(
                          onTap: () {
                            _amountOwed(context);
                          },
                          child: Icon(Icons.arrow_upward),
                        ),
                      ),
                    ),
                  ]),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Column(children: <Widget>[
              Container(
                margin: const EdgeInsets.fromLTRB(10, 15, 10, 10),
                child: const Align(
                  alignment:
                      Alignment.centerLeft, // Adjust the alignment as needed
                  child: Text('Sales Revenue',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          color: Colors.white)),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 10, 15),
                  child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: revenueData.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          dense: true,
                          leading: CircleAvatar(
                            radius: 40,
                            backgroundColor: revenueData[index].iconBack,
                            child: Icon(
                              revenueData[index].listIcon,
                              color: Colors.black,
                              size: 33,
                            ),
                          ),
                          title: Text(revenueData[index].header,
                              style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                          trailing: Text(revenueData[index].vals,
                              style: const TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white)),
                          subtitle: Text(
                            time,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffc8c8c8),
                            ),
                          ),
                        );
                      }),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
