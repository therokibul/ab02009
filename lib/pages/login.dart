import 'package:ab02009/pages/home.dart';
import 'package:ab02009/widgets/appbar.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);

  final phoneController = TextEditingController();
  final otpController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'ZeroSun',
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Login / Singup',
              textScaleFactor: 2,
            ),
            SizedBox(
              height: 25,
            ),
            TextField(
              controller: phoneController,
              decoration: InputDecoration(
                hintText: 'Enter Your Phone Number',
                // prefix: Text('+88'),
                prefixText: '+88',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            MaterialButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('Enter OTP'),
                        actions: [
                          Expanded(
                            child: TextField(
                              controller: otpController,
                              decoration: InputDecoration(
                                hintText: 'Enter OTP',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          MaterialButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Home()));
                            },
                            color: Colors.black,
                            child: Text(
                              'SEND',
                              style: TextStyle(color: Colors.white),
                            ),
                          )
                        ],
                      );
                    });
              },
              color: Colors.black,
              child: Text(
                'VERIFy',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
