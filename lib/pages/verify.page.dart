import 'package:authentication/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VerifyPage extends StatelessWidget {
  const VerifyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Verify',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 66, right: 38, left: 38),
          child: ListView(
            children: [
              SvgPicture.string(verify),
              SizedBox(
                height: 106,
              ),


              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Enter OTP',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  Text(
                    'An 4 digit has been send',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: Color(0xff696969)),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    '0821-1300-4533',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 48,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 66,
                    child: TextField(
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide: const BorderSide(
                                color: Color(0xffd1d1d1), width: 1)),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(color: Color(0xff000000)),
                        ),
                        counterText: '',
                      ),
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      maxLength: 1,
                      // untuk jumlah inputnya
                      textAlign: TextAlign.center,
                    ),
                  ),

                  SizedBox(
                    width: 66,
                    child: TextField(
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide: const BorderSide(
                                color: Color(0xffd1d1d1), width: 1)),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(color: Color(0xff000000)),
                        ),
                        counterText: '',
                      ),
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      maxLength: 1,
                      // untuk jumlah inputnya
                      textAlign: TextAlign.center,
                    ),
                  ),

                  SizedBox(
                    width: 66,
                    child: TextField(
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide: const BorderSide(
                                color: Color(0xffd1d1d1), width: 1)),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(color: Color(0xff000000)),
                        ),
                        counterText: '',
                      ),
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      maxLength: 1,
                      // untuk jumlah inputnya
                      textAlign: TextAlign.center,
                    ),
                  ),

                  SizedBox(
                    width: 66,
                    child: TextField(
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide: const BorderSide(
                                color: Color(0xffd1d1d1), width: 1)),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(color: Color(0xff000000)),
                        ),
                        counterText: '',
                      ),
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      maxLength: 1,
                      // untuk jumlah inputnya
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
              SizedBox(height: 23,),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
                      padding: const EdgeInsets.symmetric(vertical: 25)
                    ),
                    child: Text('verify')),
              )
            ],
          ),
        ),
      ),
    );
  }
}
