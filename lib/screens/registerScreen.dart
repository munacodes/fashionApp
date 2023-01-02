import 'package:fashion_app/widgets/widgetsExports.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

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
              // _buildfield(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildfield() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _inPutField(),
        _button(),
      ],
    );
  }

  Widget _inPutField() {
    return Column(
      children: [
        Container(
          child: Column(
            children: [
              Row(
                children: const [
                  InputField(
                    hint: 'Email',
                    iconData: Icon(Icons.email),
                  ),
                ],
              ),
              Row(
                children: const [
                  InputField(
                    hint: 'Password',
                    iconData: Icon(Icons.lock),
                  ),
                ],
              ),
              Row(
                children: const [
                  InputField(
                    hint: 'Confirm Password',
                    iconData: Icon(Icons.lock),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _button() {
    return Row(
      children: [
        _primaryButton(),
        _textButton(),
      ],
    );
  }

  Widget _primaryButton() {
    return Row(
      children: [
        PrimaryButton(
          title: 'Create account',
          onPressed: () {},
        ),
      ],
    );
  }

  Widget _textButton() {
    return Row(
      children: [
        const Text('Already have an account?'),
        SecondaryButton(
          title: 'Sign In',
          onPressed: () {},
        ),
      ],
    );
  }
}
