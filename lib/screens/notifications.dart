import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "الإشعارات",
          style: TextStyle(
            fontFamily: 'SomarSans',
            color: Color.fromARGB(255, 0, 0, 0),
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        leadingWidth: 60,
        leading: Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Color(0xFF3FA2F6),
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            PostCard(
              title: "السائق أحمد الأبيض  في طريقه إليك",
              content: "",
              date: "20 أغسطس, 2024",
            ),
            PostCard(
              title: "السائق أحمد الأبيض  في طريقه إليك",
              content: "",
              date: "20 أغسطس, 2024",
            ),
            PostCard(
              title: "السائق أحمد الأبيض  في طريقه إليك",
              content: "",
              date: "20 أغسطس, 2024",
            ),
            PostCard(
              title: "السائق أحمد الأبيض  في طريقه إليك",
              content: "",
              date: "20 أغسطس, 2024",
            ),
            PostCard(
              title: "السائق أحمد الأبيض  في طريقه إليك",
              content: "",
              date: "20 أغسطس, 2024",
            ),
          ],
        ),
      ),
    );
  }
}

class PostCard extends StatelessWidget {
  final String title;
  final String content;
  final String date;

  const PostCard({
    super.key,
    required this.title,
    required this.content,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
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
              const SizedBox(
                width: 16.0,
              ),
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
                      content,
                      style: const TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 10,
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
