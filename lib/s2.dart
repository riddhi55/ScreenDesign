import 'package:circular_chart_flutter/circular_chart_flutter.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<AnimatedCircularChartState> _chartKey =
    new GlobalKey<AnimatedCircularChartState>();
    final GlobalKey<AnimatedCircularChartState> _chartKey1 =
    new GlobalKey<AnimatedCircularChartState>();
    return Scaffold(
      backgroundColor: Colors.purple.shade100,
      // backgroundColor: Color.fromRGBO(216, 191, 216, 450),
      body: Padding(
        padding: EdgeInsets.all(24.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    margin: EdgeInsets.only(top: 25),
                    child: CircleAvatar(
                      child: Icon(
                        Icons.search_outlined,
                        color: Colors.white,
                      ),
                      backgroundColor: Colors.black,
                    )),
                Container(
                    margin: EdgeInsets.only(top: 25),
                    child: Icon(
                      Icons.menu_outlined,
                      size: 30,
                    ))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: EdgeInsets.all(15),
                  margin: EdgeInsets.only(top: 20),
                  // height: 230,
                  // width: 180,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: new AnimatedCircularChart(
                          key: _chartKey,
                          size: Size(100, 100),
                          initialChartData: <CircularStackEntry>[
                            new CircularStackEntry(
                              <CircularSegmentEntry>[
                                new CircularSegmentEntry(
                                  42,
                                  Colors.purpleAccent,
                                  rankKey: 'completed',
                                ),
                                new CircularSegmentEntry(
                                  58,
                                  Colors.purple.shade100,
                                  rankKey: 'remaining',
                                ),
                              ],
                              rankKey: 'progress',
                            ),
                          ],
                          chartType: CircularChartType.Radial,
                          percentageValues: true,
                          holeLabel: '58%',
                          labelStyle: new TextStyle(
                            color: Colors.blueGrey[600],
                            fontWeight: FontWeight.bold,
                            fontSize: 24.0,
                          ),
                        ),

                      ),
                      Container(
                        margin: EdgeInsets.only(top: 22),
                        child: Text(
                          'DIS Invest',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.grey,
                              fontSize: 15),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 7),
                        child: Text(
                          '₹6,000',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                              fontSize: 27),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 7),
                        child: Text(
                          'Virtual Assistent',
                          style:
                          TextStyle(color: Colors.grey, fontSize: 13),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  margin: EdgeInsets.only(top: 20),
                  // height: 230,
                  // width: 180,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: new AnimatedCircularChart(
                          key: _chartKey1,
                          size: Size(100, 100),
                          initialChartData: <CircularStackEntry>[
                            new CircularStackEntry(
                              <CircularSegmentEntry>[
                                new CircularSegmentEntry(
                                  23,
                                  Colors.deepOrangeAccent,
                                  rankKey: 'completed',
                                ),
                                new CircularSegmentEntry(
                                  77,
                                  Colors.orange.shade50,
                                  rankKey: 'remaining',
                                ),
                              ],
                              rankKey: 'progress',
                            ),
                          ],
                          chartType: CircularChartType.Radial,
                          percentageValues: true,
                          holeLabel: '23%',
                          labelStyle: new TextStyle(
                            color: Colors.blueGrey.shade900,
                            fontWeight: FontWeight.bold,
                            fontSize: 24.0,
                          ),
                        ),
                        // child: CircleAvatar(
                        //   backgroundColor: Colors.deepPurpleAccent,
                        //   radius: 35,
                        //   child: Text(
                        //     '58%',
                        //     style: TextStyle(
                        //         fontSize: 20,
                        //         fontWeight: FontWeight.bold,
                        //         color: Colors.white),
                        //   ),
                        // ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 22),
                        child: Text(
                          'AAPL Tech',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.grey,
                              fontSize: 15),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 7),
                        child: Text(
                          '₹4,350',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                              fontSize: 27),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 7),
                        child: Text(
                          '1 month left',
                          style:
                          TextStyle(color: Colors.grey, fontSize: 13),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 25,),
            Row(
              children: [
                Container(

                  child: Text(
                    'Latest',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(width: 10,),
                Expanded(
                  child: Container(
                    width: double.maxFinite,
                    child: Divider(
                      indent: 0,
                      endIndent: 5,
                      color: Colors.black,
                      height: 20,
                      thickness: 2,

                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(

                  child: CircleAvatar(
                    backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRvnCAL58JHR2UOR_kIDLd0YICJKqBVMtIjeTfJ6nUk7iZhrVuVGaB90bsmsJ04gRvLAk&usqp=CAU'),
                    radius: 30,
                  ),
                ),
                SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(

                      child: Text(
                        'Bhavesh Mehta',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(

                      child: Text(
                        'Today',
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 25,),
                Container(

                  padding: EdgeInsets.all(10),
                  color: Colors.black,
                  child: Icon(
                    Icons.airplane_ticket,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 12, left: 18),
                  child: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.black,
                    size: 30,
                  ),
                )
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(

                  child: CircleAvatar(
                    backgroundImage: NetworkImage('https://images.pexels.com/photos/3756679/pexels-photo-3756679.jpeg?auto=compress&cs=tinysrgb&w=1600'),
                    radius: 30,
                  ),
                ),
                SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(

                      child: Text(
                        'Riddhi Mehta',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(

                      child: Text(
                        '12 nov 2018',
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 25,),
                Container(

                  padding: EdgeInsets.all(10),
                  color: Colors.black,
                  child: Icon(
                    Icons.access_alarm,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 12, left: 18),
                  child: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.black,
                    size: 30,
                  ),
                )
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(

                  child: CircleAvatar(
                    backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlfyVxO8zH2ODuR6WeVcloHAkb51-KS2rFhg&usqp=CAU'),
                    radius: 30,
                  ),
                ),
                SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(

                      child: Text(
                        'Bharat Mehta',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(

                      child: Text(
                        '27 aug 2019',
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 25,),
                Container(

                  padding: EdgeInsets.all(10),
                  color: Colors.black,
                  child: Icon(
                    Icons.add_a_photo_rounded,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 12, left: 18),
                  child: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.black,
                    size: 30,
                  ),
                )
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(

                  child: CircleAvatar(
                    backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSttNLsnXTX0s2-ARH0QUI5Fhim5SXBl8irlA&usqp=CAU'),
                    radius: 30,
                  ),
                ),
                SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(

                      child: Text(
                        'Pummy Mehta',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(

                      child: Text(
                        '12 dec 2019',
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 25,),
                Container(

                  padding: EdgeInsets.all(10),
                  color: Colors.black,
                  child: Icon(
                    Icons.message_rounded,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 12, left: 18),
                  child: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.black,
                    size: 30,
                  ),
                )
              ],
            ),
            SizedBox(height: 20,),
            Container(
              height: 50,
              width: 500,
              margin: EdgeInsets.only(top: 30),
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Continue',
                  style:
                  TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                style: ElevatedButton.styleFrom(

                    shape: ContinuousRectangleBorder()),
              ),
            )
          ],
        ),
      ),
    );
  }
}
