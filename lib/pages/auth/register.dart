import 'package:flutter/material.dart';
import '../../component/input.dart';
import '../../component/button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text('Register')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            InputField(
              hintText: 'Email',
              controller: emailController,
            ),
            const SizedBox(height: 10),
            InputField(
              hintText: 'Password',
              obscureText: true,
              controller: passwordController,
            ),
            const SizedBox(height: 20),
            CustomButton(
              text: 'Register',
              onPressed: () async {
                try {
                  await FirebaseAuth.instance.createUserWithEmailAndPassword(
                    email: emailController.text,
                    password: passwordController.text,
                  );
                  Get.snackbar('Success', 'Account created successfully');
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
