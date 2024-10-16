import 'package:flutter/material.dart';
import 'package:waslny/auth/otp.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

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
                    "نسيت كلمة السر",
                    style: TextStyle(
                        fontFamily: 'SomarSans',
                        color: Color(0xFF3FA2F6),
                        fontSize: 25),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    "الرجاء ادخال رقم الهاتف لاستعادة كلمة المرور في حال كان لديكم حساب بالفعل",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'SomarSans',
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20.0),
            const Align(
              alignment: Alignment.centerRight,
              child: Text(
                "رقم الهاتف",
                style: TextStyle(
                  fontFamily: 'SomarSans',
                  color: Color(0xFF3FA2F6),
                ),
              ),
            ),
            const SizedBox(height: 10.0),
            Directionality(
              textDirection: TextDirection.rtl,
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'أدخل رقم هاتفك مثال(0915126556)',
                  hintStyle: const TextStyle(
                      fontFamily: 'SomarSans',
                      color: Color.fromARGB(255, 200, 204, 208)),
                  filled: true,
                  fillColor: const Color(0xFFE6E6E6),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
 
        
            
        
           
            const SizedBox(height: 50.0),
            ElevatedButton(
              onPressed: () {
                 Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const Otp()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF3FA2F6),
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: const Text(
                ' الإستمرار',
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
}
