import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
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
            title: const Text(
              "الملف الشخصي",
              style: TextStyle(
                fontFamily: 'SomarSans',
                color: Colors.black,
                fontSize: 20,
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
            automaticallyImplyLeading: false,
            actions: [
              IconButton(
                icon: const Icon(Icons.arrow_forward_ios, color: Colors.blue),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 16.0),
            CircleAvatar(
              radius: 40,
              backgroundColor: Colors.grey[200],
              child: const Icon(Icons.person, size: 60, color: Colors.grey),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'أحمد الأبيض',
              style: TextStyle(
                fontFamily: 'SomarSans',
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              '+218 91 290 4606',
              style: TextStyle(
                fontFamily: 'SomarSans',
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 4.0),
            const Text(
              '100001',
              style: TextStyle(
                fontFamily: 'SomarSans',
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 16.0),

            // دمج البطاقة الخاصة بالبيانات الشخصية وعناويني
            _buildMergedMenuCard(
              items: [
                _MenuItem(
                  icon: Icons.person_outline,
                  title: 'البيانات الشخصية',
                  onTap: () {},
                ),
                _MenuItem(
                  icon: Icons.location_on_outlined,
                  title: 'عناويني',
                  onTap: () {},
                ),
              ],
              cardColor: Colors.white,
            ),

            // دمج البطاقة الخاصة بـ FAQs، دعوة صديق، تقييم التطبيق، وتغيير اللغة
            _buildMergedMenuCard(
              items: [
                _MenuItem(
                  icon: Icons.help_outline,
                  title: 'FAQs',
                  onTap: () {},
                ),
                _MenuItem(
                  icon: Icons.person_add_outlined,
                  title: 'دعوة أصدقاء',
                  onTap: () {},
                ),
                _MenuItem(
                  icon: Icons.star_border_outlined,
                  title: 'تقييم التطبيق',
                  onTap: () {},
                ),
                _MenuItem(
                  icon: Icons.language_outlined,
                  title: 'تغيير اللغة',
                  onTap: () {},
                ),
              ],
              cardColor: Colors.white,
            ),

            // البطاقة الخاصة بتسجيل الخروج
            _buildMenuCard(
              icon: Icons.logout_outlined,
              title: 'تسجيل خروج',
              onTap: () {},
              cardColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }

  // بطاقة تحتوي على أكثر من عنصر (دمج البيانات الشخصية وعناويني أو غيرها)
  Widget _buildMergedMenuCard({
    required List<_MenuItem> items,
    Color cardColor = Colors.white, // لون البطاقة الافتراضي
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 3,
        color: cardColor,
        child: Column(
          children: items
              .map((item) => InkWell(
                    onTap: item.onTap,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Icon(Icons.arrow_back_ios, color: Colors.grey),
                          // زيادة المسافة بين الأيقونة والنص
                          const SizedBox(
                              width: 16), // المسافة بين الأيقونة والنص
                          Expanded(
                            child: Text(
                              item.title,
                              textAlign: TextAlign.right,
                              style: const TextStyle(
                                fontFamily: 'SomarSans',
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Icon(item.icon, color: Colors.blue),
                        ],
                      ),
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }

  // عنصر فردي في القائمة
  Widget _buildMenuCard({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
    Color cardColor = Colors.white,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 3,
        color: cardColor,
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(Icons.arrow_back_ios, color: Colors.grey),

                const SizedBox(width: 50), // المسافة بين الأيقونة والنص
                Expanded(
                  child: Text(
                    title,
                    textAlign: TextAlign.right,
                    style: const TextStyle(
                      fontFamily: 'SomarSans',
                      fontSize: 16,
                    ),
                  ),
                ),
                Icon(icon, color: Colors.blue),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// تعريف نموذج الـ MenuItem
class _MenuItem {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  _MenuItem({
    required this.icon,
    required this.title,
    required this.onTap,
  });
}
