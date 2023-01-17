import 'package:fashion_app/screens/screensExports.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/componentsExports.dart';

class LoginScreenPage extends StatefulWidget {
  const LoginScreenPage({Key? key}) : super(key: key);

  @override
  State<LoginScreenPage> createState() => _LoginScreenPageState();
}

class _LoginScreenPageState extends State<LoginScreenPage> {
  final _userNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: _emailController.text.trim(),
      password: _passwordController.text.trim(),
    );
  }

  @override
  void dispose() {
    _userNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

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
              Align(
                alignment: AlignmentDirectional.center,
                child: SizedBox(
                  width: 400,
                  height: 400,
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
        _userNameInPutField1(),
        _inPutField1(),
        _inPutField2(),
      ],
    );
  }

  Widget _userNameInPutField1() {
    return Container(
      margin: const EdgeInsets.all(10),
      child: TextField(
        controller: _userNameController,
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'User Name',
          hintStyle: TextStyle(
            color: Color(0xFFFFFFFF),
          ),
        ),
      ),
    );
  }

  Widget _inPutField1() {
    return Container(
      margin: const EdgeInsets.all(10),
      child: TextField(
        controller: _emailController,
        decoration: const InputDecoration(
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
    return Container(
      margin: const EdgeInsets.all(10),
      child: TextField(
        controller: _passwordController,
        obscureText: false,
        decoration: const InputDecoration(
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
      width: 350,
      child: ElevatedButton(
        onPressed: signIn,
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
