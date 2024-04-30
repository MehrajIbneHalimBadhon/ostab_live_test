import 'package:flutter/material.dart';
import 'package:ostab_live_test/const/app_colors.dart';
import 'package:ostab_live_test/widget/custom_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ostad Live Test',
      theme: ThemeData(appBarTheme: const AppBarTheme(color: Colors.white)),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile',
          style: TextStyle(color: AppColors.vampireblackColor, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 10.0),
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/images/mehraj.jpeg'),
                ),
              ),
              customText('Mehraj Ibne Halim', 20, AppColors.vampireblackColor),
              SizedBox(height: 8),
              customText('mehrajibnehalim5313@gmail.com', 16, Colors.black45),
              SizedBox(height: 16),
              Wrap(
                children: [
                  customText(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum",
                      15,
                      AppColors.vampireblackColor)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
