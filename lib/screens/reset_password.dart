import 'package:chat_app/utilities/theme_data.dart';
import 'package:flutter/material.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {

  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
  bool _passwordVisible = false;
  bool _confirmPasswordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const Icon(Icons.lock_open, size: 150.0),
            const Text('Reset Password', 
                      style: TextStyle(
                        fontSize: 25.0,
                        )
                      ),
            SizedBox(
              width: ScreenSize().getScreenWidth(context) * 0.8,
              child: const Text('New password must be different from previously used passwords.', textAlign: TextAlign.center,)
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
                  child: const Text('New Password'),
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
                  controller: _passwordController,
                  obscureText: !_passwordVisible,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    border: InputBorder.none,
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _passwordVisible = !_passwordVisible;
                        });
                      },     
                      icon: Icon(!_passwordVisible? Icons.visibility : Icons.visibility_off))
                  ),    
                ),
              ),
            ),

            SizedBox(height: ScreenSize().getScreenHeight(context)*0.02,),

            Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(
                    ScreenSize().getScreenWidth(context) * 0.1,
                    0,
                    ScreenSize().getScreenWidth(context) * 0.1,
                    ScreenSize().getScreenHeight(context) * 0.001,
                    ),
                  child: const Text('Confirm Password'),
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
                  controller: _confirmPasswordController,
                  obscureText: !_confirmPasswordVisible,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    border: InputBorder.none,
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _confirmPasswordVisible = !_confirmPasswordVisible;
                        });
                      },     
                      icon: Icon(!_confirmPasswordVisible? Icons.visibility : Icons.visibility_off))
                  ),
                ),
              ),
            ),

            SizedBox(height: ScreenSize().getScreenHeight(context)*0.02,),

            SizedBox(
              width: ScreenSize().getScreenWidth(context) * 0.8,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: const Text('Reset Password'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}