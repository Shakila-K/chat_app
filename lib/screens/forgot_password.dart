import 'package:chat_app/utilities/theme_data.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {

  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Align(
      //     alignment: Alignment.centerLeft,
      //     child: Text('Forget Password',
      //       style: TextStyle(
      //         fontSize: 18.0,
      //         fontWeight: FontWeight.bold,
      //       ),
      //   ),
      //   ),
      // ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const Icon(Icons.lock_reset, size: 150.0),
            const Text('Forgot Password?', 
                      style: TextStyle(
                        fontSize: 25.0,
                        )
                      ),
            SizedBox(
              width: ScreenSize().getScreenWidth(context) * 0.8,
              child: const Text('Please enter your email address to recieve a verification code.', textAlign: TextAlign.center,)
              ),
              
            SizedBox(height: ScreenSize().getScreenHeight(context) * 0.06,),
            
            Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(
                    ScreenSize().getScreenWidth(context) * 0.1,
                    0,
                    ScreenSize().getScreenWidth(context) * 0.1,
                    ScreenSize().getScreenHeight(context) * 0.001,
                    ),
                  child: const Text('Email'),
                )
                ),
              Container(
                width: ScreenSize().getScreenWidth(context) * 0.8,
                decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  border: Border.all(
                    color: Theme.of(context).primaryColor,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: ScreenSize().getScreenWidth(context) * 0.02),
                  child: TextField(
                    controller: _emailController,
                    decoration: const InputDecoration(
                      hintText: 'Enter email',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),

            SizedBox(height: ScreenSize().getScreenHeight(context)*0.02,),

            SizedBox(
              width: ScreenSize().getScreenWidth(context) * 0.8,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/verify_otp');
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: const Text('Send Verification Code'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}