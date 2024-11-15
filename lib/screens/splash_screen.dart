import 'package:flutter/material.dart';
import 'package:sound_studio/network/user_services.dart';
import 'package:sound_studio/screens/home_screen.dart';
import 'package:sound_studio/screens/login_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _checkAutoLogin();
  }

  Future<void> _checkAutoLogin() async {
    final isLoggedIn = await AuthService.autoLogin();

    if (isLoggedIn) {
      // 자동 로그인 성공 - 메인 화면으로 이동
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomeScreen(),
          ));
    } else {
      // 자동 로그인 실패 - 로그인 화면으로 이동
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LoginScreen(),
          ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
