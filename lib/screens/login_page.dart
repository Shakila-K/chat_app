import 'package:chat_app/utilities/theme_data.dart';
import 'package:flutter/material.dart';

 class LoginPage extends StatefulWidget {
   const LoginPage({super.key});
 
   @override
   State<LoginPage> createState() => _LoginPageState();
 }
 
 class _LoginPageState extends State<LoginPage> {

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _rememberMe = false;
  
  bool _passwordVisible = false;

   @override
   Widget build(BuildContext context) {
     return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              const Icon(Icons.chat, size: 150.0),
              const Text('Sign In', 
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold
                        )
                      ),

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
                    controller: _usernameController,
                    decoration: const InputDecoration(
                      hintText: 'Enter email',
                      border: InputBorder.none,
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
                  child: const Text('Password'),
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
                    obscureText: !_passwordVisible,
                    controller: _passwordController,
                    decoration: InputDecoration(
                      hintText: 'Enter password',  
                      border: InputBorder.none,
                      suffixIcon: IconButton(
                        icon: Icon(!_passwordVisible? Icons.visibility : Icons.visibility_off,),
                        onPressed: (){
                          setState(() {
                            _passwordVisible = !_passwordVisible;
                          });
                        })
                    ),
                  ),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  SizedBox(width: ScreenSize().getScreenWidth(context)*0.1,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Checkbox(
                        value: _rememberMe, 
                        onChanged: (value) {
                          setState(() {
                            _rememberMe = value!;
                          });
                        },
                      ),
                      const Text('Remember Me?')
                    ],
                  ),

                  const Spacer(),

                  TextButton(
                    onPressed: (){
                      Navigator.pushNamed(context, '/forgot_password');
                    }, 
                    child: const Text('Forgot Password?'),
                    ),
                  
                  SizedBox(width: ScreenSize().getScreenWidth(context)*0.1,),
                ],
              ),
              Container(
                width: ScreenSize().getScreenWidth(context) * 0.8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: ElevatedButton(
                  onPressed: (){}, 
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  child: const Text('Sign In',),
                  ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text('Don\'t have an account?'),
                  TextButton(
                    onPressed: (){
                      Navigator.pushNamed(context, '/sign_up');
                    }, 
                    child: const Text('Sign Up'),
                    ),
                ],
              ),
            ],
          ),
        )
     );
   }
 }