import 'package:chat_app/screens/forgot_password.dart';
import 'package:chat_app/screens/landing_page.dart';
import 'package:chat_app/screens/login_page.dart';
import 'package:chat_app/screens/reset_password.dart';
import 'package:chat_app/screens/sign_up.dart';
import 'package:chat_app/screens/verify_otp.dart';
import 'package:chat_app/utilities/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(const ChatApp());
}

class ChatApp extends StatefulWidget {
  const ChatApp({super.key});

  @override
  State<ChatApp> createState() => _ChatAppState();
}

class _ChatAppState extends State<ChatApp> {
  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: Consumer<ThemeProvider>(
        builder: (context, themeProvider, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Chat App',
            theme: themeProvider.currentTheme,
            
            routes: {
              '/' :(context) => const LandingPage(),
              '/login' :(context) => const LoginPage(),
              '/forgot_password' :(context) => const ForgetPassword(),
              '/verify_otp' :(context) => const VerifyOTP(),
              '/reset_password' :(context) => const ResetPassword(),
              '/sign_up' :(context) => const SignUp(),
            },
          );
        }
      ),
    );
  }
}