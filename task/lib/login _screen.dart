import 'package:flutter/material.dart';
import 'package:task/otp_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Welcome',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Log in to your account',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 100,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Country Code',
                                style: TextStyle(fontSize: 16),
                              ),
                              const SizedBox(height: 5),
                              TextFormField(
                                initialValue: '+91',
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Phone Number',
                                style: TextStyle(fontSize: 16),
                              ),
                              const SizedBox(height: 5),
                              TextFormField(
                                decoration: const InputDecoration(
                                  hintText: 'Enter your phone number',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "You'll receive an SMS verification that may apply message and data rates.",
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(35.0),
                    topRight: Radius.circular(35.0),
                  ),
                  child: Image.asset(
                    'assets/background.jpg',
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.8,
                          height: 50,
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const OtpScreen()), 
                              );
                            },
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                            child: const Text(
                              'Send OTP',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                          },
                          child: const Text(
                            'Skip this Process',
                            style: TextStyle(
                              color: Colors.black,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
