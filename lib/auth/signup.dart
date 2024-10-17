import 'package:flutter/material.dart';
import 'package:waslny/auth/login.dart';
import 'package:waslny/screens/home.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _isChecked = false; // State for the checkbox

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
              Icons.arrow_back_ios,
              color: Colors.amber,
            ),
            onPressed: () {
              Navigator.pop(context);
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
                    "تسجيل جديد",
                    style: TextStyle(
                        fontFamily: 'SomarSans',
                        color: Color(0xFF3FA2F6),
                        fontSize: 25),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    "الرجاء ادخال اسم مستخدم ورقم الهاتف وكلمة المرور لإنشاء حساب في خدمة وصلني، في حال لديكم حساب بالفعل إضغط على لدي حساب بالفعل لتسجيل الدخول",
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
                "إسم المستخدم",
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
                decoration: InputDecoration(
                  hintText: 'أدخل إسمك الثلاثي',
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
            const SizedBox(height: 20.0),
            const Align(
              alignment: Alignment.centerRight,
              child: Text(
                "كلمة المرور",
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
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'أدخل كلمة مرور جديدة',
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
            const SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.end, // Align to the end
              children: [
                const Text(
                  'أوافق على الشروط والأحكام',
                  style: TextStyle(
                    fontFamily: 'SomarSans',
                    fontSize: 12,
                    color: Color(0xFF3FA2F6),
                  ),
                ),
                Checkbox(
                  value: _isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      _isChecked = value ?? false; // Update the checkbox state
                    });
                  },
                  activeColor: const Color(0xFF3FA2F6),
                ),
              ],
            ),
            const SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );

              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF3FA2F6),
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: const Text(
                'تسجيل',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontFamily: 'SomarSans',
                ),
              ),
            ),
            const SizedBox(height: 10.0),
            Center(
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Login()),
                      );

                    },
                    child: const Text(
                      "لدي حساب من قبل",
                      style: TextStyle(
                        color: Colors.amber,
                        fontWeight: FontWeight.bold,
                        fontSize: 12.0,
                        fontFamily: 'SomarSans',
                      ),
                    )))
          ],
        ),
      ),
    );
  }
}
