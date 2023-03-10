import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fashion_app/models/modelsExport.dart';
import 'package:fashion_app/screens/screensExports.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/componentsExports.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final user = UserDetails(
    fullname: controller.fullname.text.trim(),
    email: controller.email.text.trim(),
    password: controller.password.text.trim(),
    phoneNo: controller.phoneNo.text.trim(),
  );

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmpasswordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmpasswordController.dispose();
    super.dispose();
  }

  Future createAccount() async {
    if (passwordConfirmed()) {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );
    }
  }

  bool passwordConfirmed() {
    if (_passwordController.text.trim() ==
        _confirmpasswordController.text.trim()) {
      return true;
    } else {
      return false;
    }
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
                  width: 500,
                  height: 500,
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
        _inPutField3(),
      ],
    );
  }

  Widget _inPutField1() {
    return Container(
      margin: const EdgeInsets.all(10),
      child: const TextField(
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
    return Container(
      margin: const EdgeInsets.all(10),
      child: TextField(
        controller: _passwordController,
        obscureText: true,
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

  Widget _inPutField3() {
    return Container(
      margin: const EdgeInsets.all(10),
      child: TextField(
        controller: _confirmpasswordController,
        obscureText: true,
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Confirm Password',
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
        _textWidgets(),
      ],
    );
  }

  Widget _primaryButton() {
    return SizedBox(
      width: 330,
      child: ElevatedButton(
        onPressed: createAccount,
        child: Text(
          'Create Account',
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
          'Already have an account?',
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
                builder: (context) => const HomePageScreen(),
              ),
            );
          },
          child: Text(
            'Sign In',
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

  Widget _textWidgets() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'By clicking "Create Account" you agree to our',
              style: GoogleFonts.montserrat(
                fontSize: 13.00,
                fontWeight: FontWeight.w500,
                color: const Color(0xFFFFFFFF),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {},
              child: Text(
                'terms',
                style: GoogleFonts.montserrat(
                  fontSize: 13.00,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xFFFFFFFF),
                ),
              ),
            ),
            Text(
              'and',
              style: GoogleFonts.montserrat(
                fontSize: 13.00,
                fontWeight: FontWeight.w500,
                color: const Color(0xFFFFFFFF),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'privacy policy',
                style: GoogleFonts.montserrat(
                  fontSize: 13.00,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xFFFFFFFF),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
