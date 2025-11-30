import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double homePrice = 0.2;
  double downPayment = 0.2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 230, 190),
      appBar: AppBar(
        title: const Text("Mortgage Calculator"),
        backgroundColor: const Color(0xFF8d7959),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MoneyInput(title: "Home Price", value: "150,000"),
            Slider(
              value: homePrice,
              onChanged: (v) {
                setState(() {
                  homePrice = v;
                });
              },
            ),
            const SizedBox(height: 20),
            MoneyInput(title: "Down Payment", value: "18,000"),
            Slider(
              value: downPayment,
              onChanged: (v) {
                setState(() {
                  downPayment = v;
                });
              },
            ),
            const SizedBox(height: 20),
            InterestRateInput(value: "7.5"),
            const SizedBox(height: 20),
            const LoanTermRow(),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(50),
                backgroundColor: const Color(0xFF8d7959),
              ),
              child: const Text(
                "Calculate",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MoneyInput extends StatelessWidget {
  final String title;
  final String value;

  const MoneyInput({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Color(0xFF8d7959),
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
        ),
        Container(
          height: 50,
          margin: const EdgeInsets.only(top: 8),
          padding: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            color: const Color(0xFFddbd8a),
            borderRadius: BorderRadius.circular(15),
          ),
          alignment: Alignment.centerLeft,
          child: Text(
            value,
            style: const TextStyle(
              color: Color.fromARGB(255, 87, 75, 55),
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}

class InterestRateInput extends StatelessWidget {
  final String value;

  const InterestRateInput({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Interest Rate",
          style: TextStyle(
            color: Color(0xFF8d7959),
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
        ),
        Container(
          height: 50,
          margin: const EdgeInsets.only(top: 8),
          padding: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            color: const Color(0xFFddbd8a),
            borderRadius: BorderRadius.circular(15),
          ),
          alignment: Alignment.centerLeft,
          child: Text(
            "$value %",
            style: const TextStyle(
              color: Color.fromARGB(255, 87, 75, 55),
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}

class LoanTermRow extends StatelessWidget {
  const LoanTermRow({super.key});

  @override
  Widget build(BuildContext context) {
    final terms = ["30", "20", "15", "10"];
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: terms.map((term) {
        return Container(
          width: 45,
          height: 30,
          decoration: BoxDecoration(
            color: term == "30" ? const Color(0xFF8d7959) : const Color(0xFFddbd8a),
            borderRadius: BorderRadius.circular(13),
          ),
          alignment: Alignment.center,
          child: Text(
            term,
            style: TextStyle(
              color: term == "30" ? Colors.white : const Color(0xFF8d7959),
              fontWeight: FontWeight.w600,
            ),
          ),
        );
      }).toList(),
    );
  }
}
