import 'package:flutter/material.dart';

class StockTile extends StatelessWidget {
  final String name;
  final String price;
  final String change;
  final VoidCallback onTap;

  const StockTile({
    super.key,
    required this.name,
    required this.price,
    required this.change,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final isPositive = change.contains("+");

    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: const Color(0xFF1A1F2B),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(name, style: const TextStyle(fontSize: 16)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(price),
                Text(
                  change,
                  style: TextStyle(
                    color: isPositive ? Colors.green : Colors.red,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}