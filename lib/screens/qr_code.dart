import 'package:flutter/material.dart';

class QrCode extends StatelessWidget {
  const QrCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_forward_ios),
            color: const Color(0xFF3FA2F6),
            onPressed: () {
              // Handle settings button press
              // You can navigate or perform any action here
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "الخاص بك QR رمز",
              style: TextStyle(
                fontFamily: 'SomarSans',
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: const Color(0xFFE6E6E6),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Text(
                  "QR Code Here", // Placeholder for QR code
                  style: TextStyle(
                    fontFamily: 'SomarSans',
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
