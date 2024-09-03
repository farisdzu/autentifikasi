import 'package:authentication/pages/forgot_password_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

import '../icons.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isObscure = true;

  ///

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Login',
            style: TextStyle(

                /// textnya auto roboto karena sudah di set roboto semu pada line 35
                fontSize: 30,
                fontWeight: FontWeight.bold)),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 90, right: 38, left: 38),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Enter your phone number',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
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

            //   --------------------------------------

            SizedBox(
              height: 25,
            ),

            Text(
              'Enter your password',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              obscureText: isObscure,

              ///biar text jadi kayak pasword titik titik pwnya
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 38),
                  // Mengatur border dengan sudut melengkung radius 25 untuk keadaan default (saat tidak fokus)
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  // Mengatur border dengan sudut melengkung yang sama, tetapi warna abu-abu untuk keadaan saat fokus
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  hintText: '***********',
                  hintStyle: TextStyle(color: Colors.grey.shade500),
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isObscure = !isObscure;
                        });
                      },
                      icon: Icon(
                        isObscure ? Icons.visibility_off : Icons.visibility,
                        size: 18,
                      ))),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ForgotPaswordPage()),
                    );
                  },
                  style: TextButton.styleFrom(
                    splashFactory: NoSplash.splashFactory,
                  ),
                  child: Text(
                    'Forgot Password',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,

              /// biar buttonnya meyesuaikan leber layar
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(vertical: 20),

                    /// memberikan warna pada text
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17)),
                  ),
                  child: Text(
                    'login',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
                  )),
            ),
            SizedBox(
              height: 13,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Don\'t Have an acount?',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.normal),
                ),
                TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        splashFactory: NoSplash.splashFactory),
                    // agar tidak ada
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    )),
              ],
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  'Or',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff696969)),
                ),
              ),
            ),
            OutlinedButton(
                style: OutlinedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 48, vertical: 20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17))),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.string(google),
                    SizedBox(
                      width: 5,
                    ),
                    Text('Continue With Google')
                  ],
                )),
            SizedBox(
              height: 20,
            ),
            OutlinedButton(
                style: OutlinedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 48, vertical: 20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17))),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.string(apple),
                    SizedBox(
                      width: 5,
                    ),
                    Text('Continue With Apple Id')
                  ],
                )),
            const Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Text(
                  'or',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff696969),
                  ),
                ),
              ),
            ),

            Align(
              child: GestureDetector(
                  onTap: () {},
                  child: const Text(
                    'continue as guest',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff909090),
                        decoration: TextDecoration.underline),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
