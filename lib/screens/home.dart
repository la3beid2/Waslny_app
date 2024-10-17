import 'package:flutter/material.dart';
import 'package:waslny/screens/notifications.dart';
import 'package:waslny/screens/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Directionality(
        textDirection: TextDirection.rtl, // اجعل الاتجاه من اليمين إلى اليسار
        child: HomeScreen(),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70.0), // ارتفاع AppBar
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white, // لون خلفية AppBar
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1), // لون الظل
                spreadRadius: 1, // انتشار الظل
                blurRadius: 5, // درجة ضبابية الظل
                offset: const Offset(0, 2), // موضع الظل
              ),
            ],
          ),
          child: AppBar(
            title: const Padding(
              padding: EdgeInsets.only(top: 15.0), // إزاحة المحتوى إلى الأسفل
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "  : توصيل إلى  ",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'SomarSans',
                        fontSize: 12),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "شارع عمر المختار",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'SomarSans',
                            fontSize: 15),
                      ),
                      Icon(Icons.location_on, color: Colors.blue),
                    ],
                  ),
                ],
              ),
            ),

            // إزاحة leading IconButton إلى الأسفل لمساواته مع النص
            leading: Padding(
              padding: const EdgeInsets.only(top: 15.0), // نفس الإزاحة مثل النص
              child: IconButton(
                icon: const Icon(Icons.notifications_active,
                    color: Colors.orange),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Notifications()),
                  );
                },
              ),
            ),

            // إزاحة actions IconButton إلى الأسفل لمساواته مع النص
            actions: [
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                // نفس الإزاحة مثل النص
                child: IconButton(
                  icon: const Icon(Icons.person, color: Colors.orange),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProfilePage()),
                    );
                  },
                ),
              ),
            ],
            backgroundColor: Colors.transparent,
            // اجعل خلفية AppBar شفافة
            elevation: 0, // إلغاء ارتفاع AppBar الافتراضي
          ),
        ),
      ),

      backgroundColor: Colors.white, // تعيين خلفية التطبيق باللون الأبيض
      body: SingleChildScrollView(
        child: Column(
          children: [
            // شريط البحث
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                textDirection: TextDirection.rtl,
                // اجعل الكتابة من اليمين لليسار
                decoration: InputDecoration(
                  hintText: 'أخبرنا عن وجهتك؟',
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),

            Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  height: 200,
                  width: 380,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    elevation: 5,
                    clipBehavior: Clip.antiAlias,
                    // لمنع الصورة من الخروج عن حدود البطاقة
                    child: Image.asset(
                      'assets/images/car1.png',
                      fit: BoxFit.cover, // جعل الصورة تملأ البطاقة بالكامل
                    ),
                  ),
                ),
              ),
            ),

            // المسافة لخلق مسافة بين الشعار والأزرار
            const SizedBox(height: 20),

            // زرين كبيرين
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 50),
                      backgroundColor: Colors.grey[200],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Align(
                      alignment: Alignment(0.6, 0.6), // النص على اليمين
                      child: Text('في طريقك',
                          style: TextStyle(fontFamily: 'SomarSans')),
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 50),
                      backgroundColor: Colors.grey[200],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Align(
                      alignment: Alignment(0.6, 0.6), // النص على اليمين
                      child: Text('رحلة بجوي',
                          style: TextStyle(fontFamily: 'SomarSans')),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      // شريط التنقل السفلي
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'الرئيسية',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: 'طلباتي',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet),
            label: 'المحفظة',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_offer),
            label: 'عروض',
          ),
        ],
        currentIndex: 0,
        selectedItemColor: Colors.blue,
        onTap: (index) {
          // التعامل مع النقر على أيقونة التنقل
        },
      ),
    );
  }
}
