import 'package:flutter/material.dart';
import '../../component/input.dart';
import '../../component/button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text('Forgot Password')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            InputField(
              hintText: 'Enter your email',
              controller: emailController,
            ),
            const SizedBox(height: 20),
            CustomButton(
              text: 'Reset Password',
              onPressed: () async {
                try {
                  await FirebaseAuth.instance
                      .sendPasswordResetEmail(email: emailController.text);
                  Get.snackbar('Success', 'Password reset email sent');
                } catch (e) {
                  Get.snackbar('Error', e.toString());
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
