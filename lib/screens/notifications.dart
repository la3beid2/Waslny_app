import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    // قائمة بيانات الإشعارات
    final List<Map<String, String>> notifications = [
      {
        "title": "السائق أحمد الأبيض  في طريقه إليك",
        "date": "20 أغسطس, 2024",
      },
      {
        "title": "السائق أحمد الأبيض  في طريقه إليك",
        "date": "20 أغسطس, 2024",
      },
      {
        "title": "السائق أحمد الأبيض  في طريقه إليك",
        "date": "20 أغسطس, 2024",
      },
      {
        "title": "السائق أحمد الأبيض  في طريقه إليك",
        "date": "20 أغسطس, 2024",
      },
      {
        "title": "السائق أحمد الأبيض  في طريقه إليك",
        "date": "20 أغسطس, 2024",
      },
    ];

    return Scaffold(
      backgroundColor: Colors.white,
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
              padding: EdgeInsets.only(top: 15.0),
              child: Text(
                "الإشعارات",
                style: TextStyle(
                  fontFamily: 'SomarSans',
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
            centerTitle: true,
            automaticallyImplyLeading: false,

            actions: [
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: IconButton(
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0xFF3FA2F6),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
            ],
            backgroundColor: Colors.transparent,
            elevation: 0,

          ),
        ),
      ),

      body: ListView.builder(
        padding: const EdgeInsets.all(20.0),
        itemCount: notifications.length, // عدد الإشعارات في القائمة
        itemBuilder: (context, index) {
          return PostCard(
            title: notifications[index]["title"]!,
            date: notifications[index]["date"]!,
          );
        },
      ),
    );
  }
}

class PostCard extends StatelessWidget {
  final String title;
  final String date;

  const PostCard({
    super.key,
    required this.title,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      color: Colors.grey[200],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 223, 233, 241),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.notifications,
                  color: Color(0xFF3FA2F6),
                  size: 30,
                ),
              ),
              const SizedBox(width: 16.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontFamily: 'SomarSans',
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      date,
                      style: const TextStyle(
                        fontFamily: 'SomarSans',
                        fontSize: 8,
                        color: Color.fromARGB(255, 137, 136, 133),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
