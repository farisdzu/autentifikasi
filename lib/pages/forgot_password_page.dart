import 'package:authentication/pages/login_page.dart';
import 'package:authentication/pages/verify.page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

import '../icons.dart';

class ForgotPaswordPage extends StatelessWidget {
  const ForgotPaswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 38),
          child: IconButton(
            onPressed: () {
              Navigator.pop(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ));
            },
            icon: Icon(Icons.arrow_back_ios),
          ),
        ),
        title: Text(
          'Forgot',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 77),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                SvgPicture.string(forgot),
                SizedBox(
                  height: 72,
                ),
                Text(
                  'Forgot Password?',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
                Text(
                  textAlign: TextAlign.center,
                  'Don’t worry! it happens. Please enter phone\n number associated with your account',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: Color(0xff696969)),
                ),
                SizedBox(
                  height: 41,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Enter Phone Number',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],

                  /// agar neriman angka doang
                  decoration: InputDecoration(
                      // Mengatur border dengan sudut melengkung radius 25 untuk keadaan default (saat tidak fokus)
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      // Mengatur border dengan sudut melengkung yang sama, tetapi warna abu-abu untuk keadaan saat fokus
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      prefixIcon: const Padding(
                        padding: EdgeInsets.only(left: 30),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text('+62'),
                            Icon(Icons.keyboard_arrow_down),
                          ],
                        ),
                      ),
                      hintText: 'Phone Number',
                      hintStyle: TextStyle(color: Colors.grey.shade500),
                      suffixIcon: Icon(
                        Icons.check_circle,
                        size: 18,
                      )),
                ),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: double.infinity,

                  /// biar buttonnya meyesuaikan leber layar
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const VerifyPage(),
                            ));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                        padding: EdgeInsets.symmetric(vertical: 20),

                        /// memberikan warna pada text
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(17)),
                      ),
                      child: Text(
                        'Get OTP',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.normal),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
