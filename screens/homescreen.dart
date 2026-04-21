import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0E1117),
      appBar: AppBar(
        backgroundColor: const Color(0xFF0E1117),
        elevation: 0,
        title: const Text("InvestX", style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Total Portfolio",
                style: TextStyle(color: Colors.grey)),
            const SizedBox(height: 6),
            const Text("₹1,24,500",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),

            const SizedBox(height: 10),
            Row(
              children: const [
                Icon(Icons.arrow_upward, color: Colors.green, size: 18),
                SizedBox(width: 4),
                Text("+2.45% Today",
                    style: TextStyle(color: Colors.green)),
              ],
            ),

            const SizedBox(height: 30),

            const Text("Your Stocks",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),

            const SizedBox(height: 12),

            Expanded(
              child: ListView(
                children: const [
                  StockTile(name: "AAPL", price: "₹15,200", change: "+1.2%"),
                  StockTile(name: "TSLA", price: "₹9,800", change: "-0.5%"),
                  StockTile(name: "GOOGL", price: "₹22,100", change: "+3.1%"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class StockTile extends StatelessWidget {
  final String name;
  final String price;
  final String change;

  const StockTile({
    super.key,
    required this.name,
    required this.price,
    required this.change,
  });

  @override
  Widget build(BuildContext context) {
    final isPositive = change.contains("+");

    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: const Color(0xFF1A1F2B),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(name,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(price),
              Text(
                change,
                style: TextStyle(
                    color: isPositive ? Colors.green : Colors.red),
              )
            ],
          )
        ],
      ),
    );
  }
}