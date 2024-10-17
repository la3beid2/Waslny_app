import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Invite extends StatelessWidget {
  const Invite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "دعوة صديق",
          style: TextStyle(
            fontFamily: 'SomarSans',
            color: Color.fromARGB(255, 0, 0, 0),
          ),
        ),
        centerTitle: true,
        leading: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: const Icon(Icons.share),
              color: const Color(0xFF3FA2F6),
              onPressed: () {
                // Handle share button press
              },
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_forward_ios),
            color: const Color(0xFF3FA2F6),
            onPressed: () {
              // Handle settings button press
            },
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 50),
          const Center(
            child: Text(
              "قم بدعوة أصدقائك وعائلتك إلى بيادجو وأحصل على 1 دينار",
              style: TextStyle(
                fontFamily: 'SomarSans',
                fontSize: 11,
              ),
            ),
          ),
          const Center(
            child: Text(
              "لكل عملية تسجيل بالكود الخاص بك",
              style: TextStyle(
                fontFamily: 'SomarSans',
                fontSize: 11,
              ),
            ),
          ),
          const SizedBox(height: 40),
          Center(
            child: Container(
              padding: const EdgeInsets.all(16.0),
              width: 300, // Adjust width as needed
              decoration: BoxDecoration(
                color: const Color(0xFFE6E6E6),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                    child: Center(
                      child: SelectableText(
                        "XSC305HJY1",
                        style: TextStyle(
                          fontFamily: 'SomarSans',
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.copy),
                    color: const Color(0xFF3FA2F6),
                    onPressed: () {
                      Clipboard.setData(
                          const ClipboardData(text: "XSC305HJY1"));
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Center(
                            child: Text(
                              'تم النسخ إلى الحافظة!',
                              style: TextStyle(
                                fontFamily: 'SomarSans',
                                fontSize: 14,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          const Text(
            "https://www.waslny.ly/share/XSC305HJY1",
            style: TextStyle(
              fontFamily: 'SomarSans',
              fontSize: 8,
              color: Color.fromARGB(255, 148, 146, 146),
            ),
          ),
          const SizedBox(height: 100),
          const Center(
            child: Text(
              "هل تمت دعوتك من قبل صديق؟ قم بإدخال الكود الخاص به",
              style: TextStyle(
                fontFamily: 'SomarSans',
                fontSize: 11,
              ),
            ),
          ),
          const Center(
            child: Text(
              "ليحصل على 1 دينار هدية.",
              style: TextStyle(
                fontFamily: 'SomarSans',
                fontSize: 11,
              ),
            ),
          ),
          const SizedBox(height: 40),
          Center(
            child: Container(
              width: 300, // Smaller width for the TextField
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: TextField(
                  textAlign: TextAlign.center, // Center the hint text
                  decoration: InputDecoration(
                    hintText: 'أدخل كود الدعوة',
                    hintStyle: const TextStyle(
                      fontFamily: 'SomarSans',
                      color: Color.fromARGB(255, 200, 204, 208),
                    ),
                    filled: true,
                    fillColor: const Color(0xFFE6E6E6),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
