import 'package:fashion_app/widgets/widgetsExports.dart';
import 'package:flutter/material.dart';

class LoginScreenPage extends StatelessWidget {
  const LoginScreenPage({Key? key}) : super(key: key);

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
                child: _buildfield(),
              ),
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
          title: 'Sign In',
          onPressed: () {},
        ),
      ],
    );
  }

  Widget _textButton() {
    return Row(
      children: [
        const Text('Dont have an account?'),
        SecondaryButton(
          title: 'Create account',
          onPressed: () {},
        ),
      ],
    );
  }
}
