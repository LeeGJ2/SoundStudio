import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sound_studio/screens/home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          double screenHeight = constraints.maxHeight;
          double screenWidth = constraints.maxWidth;

          return Column(
            children: [
              SizedBox(
                height: screenHeight * 0.15,
              ),
              Center(
                child: Text(
                  'SOUND STUDIO',
                  style: GoogleFonts.bebasNeue(
                    fontSize: 50,
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.1,
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: screenWidth * 0.2, right: screenWidth * 0.2),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: '이메일',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.02,
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: screenWidth * 0.2, right: screenWidth * 0.2),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: '비밀번호',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.02,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ));
                },
                child: Text(
                  '로그인',
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 18,
                      color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  minimumSize: Size(screenWidth * 0.61, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.02,
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    '회원가입',
                    style: TextStyle(color: Colors.black),
                  )),
              SizedBox(height: screenHeight * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  socialLoginButton('assets/google_login_icon.png',
                      screenWidth * 0.07, screenWidth * 0.07),
                  SizedBox(
                    width: screenWidth * 0.02,
                  ),
                  socialLoginButton('assets/kakao_login_icon.png',
                      screenWidth * 0.07, screenWidth * 0.07),
                  SizedBox(
                    width: screenWidth * 0.02,
                  ),
                  socialLoginButton('assets/naver_login_icon.png',
                      screenWidth * 0.07, screenWidth * 0.07),
                ],
              )
            ],
          );
        },
      ),
    );
  }

  Widget socialLoginButton(
          String imageURL, double buttonWidth, double buttonHeight) =>
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          // 카카오 로그인을 위한 메소드
          onTap: () {
            // 버튼을 눌렀을 때 실행되는 함수
          },
          child: Ink(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imageURL),
                fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.circular(3), // 둥근 모서리 설정
            ),
            width: buttonWidth, // 이미지의 가로 크기
            height: buttonHeight, // 이미지의 세로 크기
          ),
        ),
      );
}
