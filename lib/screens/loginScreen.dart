import 'package:fashion_app/screens/screensExports.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreenPage extends StatefulWidget {
  const LoginScreenPage({Key? key}) : super(key: key);

  @override
  State<LoginScreenPage> createState() => _LoginScreenPageState();
}

class _LoginScreenPageState extends State<LoginScreenPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/img.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              Container(
                color: Colors.grey.withOpacity(0.5),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'BELLEMODA',
                    style: GoogleFonts.tenorSans(
                      fontSize: 32,
                      fontWeight: FontWeight.w400,
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 33.0,
              ),
              Align(
                alignment: AlignmentDirectional.center,
                child: SizedBox(
                  width: 400,
                  height: 350,
                  child: Column(
                    children: [
                      _buildfield(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildfield() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildInputField(),
          _button(),
        ],
      ),
    );
  }

  Widget _buildInputField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _inPutField1(),
        _inPutField2(),
      ],
    );
  }

  Widget _inPutField1() {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Email',
          hintStyle: TextStyle(
            color: Color(0xFFFFFFFF),
          ),
        ),
      ),
    );
  }

  Widget _inPutField2() {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Password',
          hintStyle: TextStyle(
            color: Color(0xFFFFFFFF),
          ),
        ),
      ),
    );
  }

  Widget _button() {
    return Column(
      children: [
        _primaryButton(),
        _textButton(),
      ],
    );
  }

  Widget _primaryButton() {
    return SizedBox(
      width: 330,
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const HomePageScreen(),
            ),
          );
        },
        child: Text(
          'Sign In',
          style: GoogleFonts.inter(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: const Color(0xFFFFFCFC),
          ),
        ),
      ),
    );
  }

  Widget _textButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Dont have an account?',
          style: GoogleFonts.inter(
            fontSize: 11,
            fontWeight: FontWeight.w600,
            color: const Color(0xFF1A0E0E),
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const RegisterScreen(),
              ),
            );
          },
          child: Text(
            'Create Account',
            style: GoogleFonts.inter(
              fontSize: 11,
              fontWeight: FontWeight.w600,
              color: const Color(0xFFFFFFFF),
            ),
          ),
        ),
      ],
    );
  }
}
