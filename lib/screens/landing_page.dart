import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/login');
      },
      child: const Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.chat, size: 150.0),
              Text('Chat App', style: TextStyle(fontSize: 30.0)),
            ],
          ),
        )
      ),
    );
  }
}


// class YourHomePage extends StatelessWidget {
//   const YourHomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Your App',),
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.brightness_6),
//             onPressed: () {
//               Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
//             },
//           ),
//         ],
//       ),
//       body: const YourContent(),
//     );
//   }
// }

// class YourContent extends StatelessWidget {
//   const YourContent({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return const Center(
//       child: Text('Your content goes here'),
//     );
//   }
// }