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
          child: Center(
            child: Stack(
              children: [
                Container(
                  child: _buildfield(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildfield() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // _inPutField(),
        _button(),
      ],
    );
  }

  Widget _inPutField() {
    return Column(
      children: [
        Row(
          children: const [
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Email'),
            )
          ],
        ),
        Row(
          children: const [
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Email'),
            )
          ],
        ),
      ],
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
    return ElevatedButton(
      onPressed: () {},
      child: const Text('cvggg'),
    );
  }

  Widget _textButton() {
    return Row(
      children: [
        const Text('Dont have an account?'),
        TextButton(
          onPressed: () {},
          child: const Text('Register'),
        ),
      ],
    );
  }
}
