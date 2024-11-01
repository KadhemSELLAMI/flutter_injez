import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color.fromARGB(255, 250, 252, 255),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          'Personal Data',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Column(
            children: [
              // SizedBox(height: 20),
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  ClipRRect(
                    borderRadius:
                        BorderRadius.circular(12), // Square with radius
                    child: Image.asset(
                      'assets/profile.jpg',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 5,
                    right: 5,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: const EdgeInsets.all(4),
                      child: const Icon(
                        Icons.camera_alt,
                        color: Colors.white,
                        size: 18,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const InputField(
                  label: 'Your Name', initialValue: 'William John Malik'),
              const InputField(
                  label: 'Date of Birth', initialValue: '24 December 1999'),
              const InputField(
                  label: 'Your Job', initialValue: 'Successor Designer'),
              const InputField(
                  label: 'Monthly Income',
                  initialValue: '\$500 - \$3000 / year'),
              const SizedBox(height: 20),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Gender",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 89, 115, 140),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(10, 10, 60, 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                              color: Colors.grey[300]!,
                              width: 1), // Light gray border
                        ),
                        child: Row(
                          children: [
                            Radio(
                              value: "Male",
                              groupValue: 'Gender',
                              onChanged: (value) {},
                            ),
                            const Text("Male"),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(10, 10, 60, 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                              color: Colors.grey[300]!,
                              width: 1), // Light gray border
                        ),
                        child: Row(
                          children: [
                            Radio(
                              value: "Male",
                              groupValue: 'Gender',
                              onChanged: (value) {},
                            ),
                            const Text("Male"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Text('Gender', style: TextStyle(fontWeight: FontWeight.bold)),
              //     Row(
              //       children: [
              //         GenderOption(label: 'Male'),
              //         SizedBox(width: 10),
              //         GenderOption(label: 'Female'),
              //       ],
              //     ),
              //   ],
              // ),
              const SizedBox(height: 20), // Spacer replacement
              ElevatedButton(
                onPressed: () {
                  // Registration button action here
                },
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    foregroundColor: const Color(0xFF5A6F9E),
                    backgroundColor: const Color.fromARGB(255, 183, 209, 255)),
                child: const Text(
                  'Update',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class InputField extends StatelessWidget {
  final String label;
  final String initialValue;

  const InputField({
    super.key,
    required this.label,
    required this.initialValue,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 89, 115, 140),
          ),
        ),
        const SizedBox(height: 8),
        TextFormField(
          initialValue: initialValue,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                  color: Colors.grey[300]!, width: 1), // Light gray border
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                  color: Colors.grey[300]!,
                  width: 1), // Light gray border when not focused
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                  color: Colors.grey[500]!,
                  width: 1.5), // Slightly darker gray when focused
            ),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}

class GenderOption extends StatelessWidget {
  final String label;

  const GenderOption({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio(value: label, groupValue: 'Gender', onChanged: (value) {}),
        Text(label),
      ],
    );
  }
}
