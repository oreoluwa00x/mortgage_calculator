import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double _currentSliderPrimaryValue = 0.2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 230, 190),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 90,
                    height: 40,
                    child: Image.asset(
                      "assets/mortage_calculator.png",
                      width: 90,
                      height: 40,
                    ),
                  ),
                  Icon(Icons.dark_mode),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Home Price",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color(0xFF8d7959),
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Container(
                    height: 50,
                    margin: EdgeInsets.only(top: 8),
                    decoration: BoxDecoration(
                      color: Color(0xFFddbd8a),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Image.asset(
                            "assets/dollar.png",
                            width: 25,
                            height: 25,
                          ),
                        ),
                        Text(
                          "150,000",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromARGB(255, 87, 75, 55),
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Slider(
              value: _currentSliderPrimaryValue,
              onChanged: (double value) {
                setState(() {
                  _currentSliderPrimaryValue = value;
                });
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$0",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color(0xFF8d7959),
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    "\$999,999",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color(0xFF8d7959),
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Down Payment",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color(0xFF8d7959),
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Container(
                    height: 50,
                    margin: EdgeInsets.only(top: 8),
                    decoration: BoxDecoration(
                      color: Color(0xFFddbd8a),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Image.asset(
                            "assets/dollar.png",
                            width: 25,
                            height: 25,
                          ),
                        ),
                        Text(
                          "18,000",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromARGB(255, 87, 75, 55),
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Slider(
              value: _currentSliderPrimaryValue,
              onChanged: (double value) {
                setState(() {
                  _currentSliderPrimaryValue = value;
                });
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$0",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color(0xFF8d7959),
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    "\$999,999",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color(0xFF8d7959),
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Interest Rate",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color(0xFF8d7959),
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Container(
                    height: 50,
                    margin: EdgeInsets.only(top: 8),
                    decoration: BoxDecoration(
                      color: Color(0xFFddbd8a),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Container(
                            width: 25,
                            height: 25,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xff8d7959),
                              border: Border.all(
                                color: Color(0xffddbd8a),
                                width: 1,
                              ),
                            ),
                            child: ClipOval(
                              child: Text(
                                "%",
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          "7.5",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromARGB(255, 87, 75, 55),
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Loan Term",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color(0xFF8d7959),
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "Years",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color(0xFF8d7959),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 45,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Color(0xFF8d7959),
                      borderRadius: BorderRadius.circular(13),
                    ),
                    child: Center(
                      child: Text(
                        "30",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),

                  Container(
                    width: 45,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Color(0xFFddbd8a),
                      borderRadius: BorderRadius.circular(13),
                    ),
                    child: Center(
                      child: Text(
                        "20",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF8d7959),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 45,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Color(0xFFddbd8a),
                      borderRadius: BorderRadius.circular(13),
                    ),
                    child: Center(
                      child: Text(
                        "15",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF8d7959),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 45,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Color(0xFFddbd8a),
                      borderRadius: BorderRadius.circular(13),
                    ),
                    child: Center(
                      child: Text(
                        "10",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF8d7959),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Start Date",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color(0xFF8d7959),
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF8d7959),
                  foregroundColor: Colors.white,
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(10),
                  ),
                ),
                onPressed: () {},
                child: Text('Calculate'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
