import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 250, 252, 255),
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      //   centerTitle: true,
      //   title: const Text(
      //     'Profile',
      //     style: TextStyle(
      //       color: Colors.black,
      //       fontWeight: FontWeight.bold,
      //     ),
      //   ),
      //   iconTheme: const IconThemeData(color: Colors.black),
      // ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 70, 20, 20),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius:
                      BorderRadius.circular(8), // Light radius for square shape
                  child: Image.asset(
                    'assets/profile.jpg',
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 15),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'William John Malik',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Aggressive Investor',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
            height: 1,
            color: Colors.grey[300], // Light grey color for the dividing line
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                ProfileOption(icon: Icons.person, title: 'Personal Data'),
                ProfileOption(icon: Icons.settings, title: 'Settings'),
                ProfileOption(
                    icon: Icons.document_scanner, title: 'E-Statement'),
                ProfileOption(
                    icon: Icons.card_giftcard, title: 'Referral Code'),
                Container(
                  margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
                  height: 1,
                  color: Colors
                      .grey[300], // Light grey color for the dividing line
                ),
                ProfileOption(icon: Icons.help_outline, title: 'FAQs'),
                ProfileOption(icon: Icons.book, title: 'Our Handbook'),
                ProfileOption(icon: Icons.people, title: 'Community'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              width: 300,
              height: 70,
              padding: const EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 204, 223, 255),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Text(
                  'Feel Free to Ask, We’re Ready to Help',
                  style: TextStyle(
                      color: Color(0xFF5A6F9E), fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 250, 252, 255),
        selectedItemColor: const Color(0xFF5A6F9E),
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.show_chart), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.mail), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
    );
  }
}

class ProfileOption extends StatelessWidget {
  final IconData icon;
  final String title;

  ProfileOption({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: const Color(0xFF5A6F9E)),
      title: Text(title),
      trailing:
          const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
      onTap: () {
        // Add navigation functionality here
      },
    );
  }
}
