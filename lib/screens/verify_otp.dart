import 'package:chat_app/utilities/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class VerifyOTP extends StatefulWidget {
  const VerifyOTP({super.key});

  @override
  State<VerifyOTP> createState() => _VerifyOTPState();
}

class _VerifyOTPState extends State<VerifyOTP> {

  final List<TextEditingController> _otpControllers = List.generate(4, (_) => TextEditingController());
  int _verificationCode = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const Icon(Icons.mail, size: 150.0),
            const Text('Verify OTP', 
                      style: TextStyle(
                        fontSize: 25.0,
                        )
                      ),
            SizedBox(
              width: ScreenSize().getScreenWidth(context) * 0.8,
              child: const Text('Please enter the 4 digit code sent to your email.', textAlign: TextAlign.center,)
              ),
              
            SizedBox(height: ScreenSize().getScreenHeight(context) * 0.06,),
            
            SizedBox(
              width: ScreenSize().getScreenWidth(context) * 0.8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: ScreenSize().getScreenWidth(context) * 0.12,
                    height: ScreenSize().getScreenWidth(context) * 0.12,
                    decoration: BoxDecoration(
                      color: Theme.of(context).cardColor,
                      border: Border.all(
                        color: Theme.of(context).primaryColor,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: TextFormField(
                      controller: _otpControllers[0],
                      textAlign: TextAlign.center,
                      decoration: const InputDecoration(
                        border: InputBorder.none
                      ),
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                    ),
                  ),

                  Container(
                    width: ScreenSize().getScreenWidth(context) * 0.12,
                    height: ScreenSize().getScreenWidth(context) * 0.12,
                    decoration: BoxDecoration(
                      color: Theme.of(context).cardColor,
                      border: Border.all(
                        color: Theme.of(context).primaryColor,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: TextFormField(
                      controller: _otpControllers[1],
                      textAlign: TextAlign.center,
                      decoration: const InputDecoration(
                        border: InputBorder.none
                      ),
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                    ),
                  ),

                  Container(
                    width: ScreenSize().getScreenWidth(context) * 0.12,
                    height: ScreenSize().getScreenWidth(context) * 0.12,
                    decoration: BoxDecoration(
                      color: Theme.of(context).cardColor,
                      border: Border.all(
                        color: Theme.of(context).primaryColor,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: TextFormField(
                      controller: _otpControllers[2],
                      textAlign: TextAlign.center,
                      decoration: const InputDecoration(
                        border: InputBorder.none
                      ),
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                    ),
                  ),

                  Container(
                    width: ScreenSize().getScreenWidth(context) * 0.12,
                    height: ScreenSize().getScreenWidth(context) * 0.12,
                    decoration: BoxDecoration(
                      color: Theme.of(context).cardColor,
                      border: Border.all(
                        color: Theme.of(context).primaryColor,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: TextFormField(
                      controller: _otpControllers[3],
                      textAlign: TextAlign.center,
                      decoration: const InputDecoration(
                        border: InputBorder.none
                      ),
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: ScreenSize().getScreenHeight(context)*0.02,),

            SizedBox(
              width: ScreenSize().getScreenWidth(context) * 0.8,
              child: ElevatedButton(
                onPressed: () {
                  String code = _otpControllers.map((controller) => controller.text).join();
                  setState(() {
                    if (code.length == 4) _verificationCode = int.parse(code);
                  });
                  print(_verificationCode);

                  if (_verificationCode == 1234) {
                    Navigator.pushNamed(context, '/reset_password');
                  }
                  else{
                    // show error message
                  }
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: const Text('Verify OTP'),
              ),
            ),

            // SizedBox(height: ScreenSize().getScreenHeight(context)*0.02,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Didn\'t recieve the code?'),
                TextButton(
                  onPressed: (){
                    // resend otp function
                  }, 
                  child: Text('Resend')),
              ],
            ),
            
            
          ],
        ),
      ),
    );
  }
}