import 'package:flutter/material.dart';

class Otp extends StatefulWidget {
  const Otp({super.key});

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  final List<TextEditingController> _controllers =
      List.generate(6, (_) => TextEditingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leadingWidth: 60,
        leading: Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.amber,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/logo.png',
              height: 80,
            ),
            const SizedBox(height: 20.0),
            const Center(
              child: Column(
                children: [
                  Text(
                    "OTP التحقق من",
                    style: TextStyle(
                        fontFamily: 'SomarSans',
                        color: Color(0xFF3FA2F6),
                        fontSize: 25),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    "سنرسل لك  كلمة المرور لمرة واحدة على  رقم الهاتف المحمول هذا",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'SomarSans',
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "+218910926556",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'SomarSans',
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(6, (index) => _buildDigitInput(index)),
            ),
            const SizedBox(height: 20.0),
            Column(
              children: [
                const Align(
                  alignment: Alignment.center,
                  child: Text(
                    "00:29",
                    style: TextStyle(
                      fontFamily: 'SomarSans',
                      color: Color(0xFF3FA2F6),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
               
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'أرسله مرة أخرى',
                        style: TextStyle(
                          color: Color(0xFF3FA2F6),
                          fontFamily: 'SomarSans',
                          fontSize: 12
                        ),
                      ),
                    ),
                 const   Text(
                      "لم تستلم الرمز ؟",
                      style: TextStyle(
                        fontFamily: 'SomarSans',
                        color: Colors.black,
                        fontSize: 12
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 40.0),
            ElevatedButton(
              onPressed: () {
                // Handle OTP verification logic here
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF3FA2F6),
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: const Text(
                'الإستمرار',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontFamily: 'SomarSans',
                ),
              ),
            ),
            const SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }

  Widget _buildDigitInput(int index) {
    return SizedBox(
      width: 40, // Width of each input box
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: TextField(
          controller: _controllers[index],
          maxLength: 1, // Limit to one character
          keyboardType: TextInputType.number, // Numeric keyboard
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            counterText: '', // Hide the counter text
            filled: true,
            fillColor: const Color(0xFFE6E6E6),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: const BorderSide(color: Color(0xFF3FA2F6)), // Border color
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: const BorderSide(color: Color(0xFF3FA2F6)), // Border color when enabled
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: const BorderSide(color: Color(0xFF3FA2F6)), // Border color when focused
            ),
          ),
        ),
      ),
    );
  }
}