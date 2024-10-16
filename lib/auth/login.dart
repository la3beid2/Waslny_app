import 'package:flutter/material.dart';
import 'package:waslny/auth/forget_password.dart';
import 'package:waslny/auth/signup.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                    "تسجيل الدخول",
                    style: TextStyle(
                        fontFamily: 'SomarSans',
                        color: Color(0xFF3FA2F6),
                        fontSize: 25),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    "الرجاء ادخال رقم الهاتف لتسجيل الدخول في حال كان لديكم حساب بالفعل, سيتم انشاء حساب برقم الهاتف تلقائياً في حال عدم العثور على حساب مسجل.",
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
                decoration: InputDecoration(
                  hintText: 'أدخل كلمة المرور كاملة',
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
            Row(
              mainAxisAlignment: MainAxisAlignment.end, // Align to the end
              children: [
                TextButton(
                  onPressed: () {
                     Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const ForgetPassword()));
                  },
                  child: const Text(
                    'نسيت كلمة المرور ؟',
                    style: TextStyle(
                      fontFamily: 'SomarSans',
                      fontSize: 12,
                      color: Color(0xFF3FA2F6),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 30.0),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF3FA2F6),
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: const Text(
                'تسجيل الدخول',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontFamily: 'SomarSans',
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            Center(
                child: TextButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => const SignUp()));
                    },
                    child: const Text(
                      "ليس لدي حساب من قبل",
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