import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import '../../component/input.dart';
import '../../component/button.dart';
import 'register.dart';
import 'forgot_password.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.lock, size: 100, color: Colors.purple),
            const SizedBox(height: 20),
            const Text(
              'Sign In',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
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
              text: 'Sign In',
              onPressed: () async {
                try {
                  await FirebaseAuth.instance.signInWithEmailAndPassword(
                    email: emailController.text,
                    password: passwordController.text,
                  );
                  Get.snackbar('Success', 'Logged in successfully');
                } catch (e) {
                  Get.snackbar('Error', e.toString());
                }
              },
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                // Forgot password logic
                Get.to(() => ForgotPasswordPage());
              },
              child: const Text(
                'Forgot Password',
                style: TextStyle(color: Colors.blue),
              ),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                Get.to(() => RegisterPage());
              },
              child: const Text(
                "Don't Have Account?",
                style: TextStyle(color: Colors.blue),
              ),
            ),
            const SizedBox(height: 10),
            const Text('Or sign up with'),
            const SizedBox(height: 10),
            CustomButton(
              text: 'Continue with Google',
              onPressed: () async {
                final GoogleSignInAccount? googleUser =
                    await GoogleSignIn().signIn();
                if (googleUser != null) {
                  final GoogleSignInAuthentication googleAuth =
                      await googleUser.authentication;
                  final credential = GoogleAuthProvider.credential(
                    accessToken: googleAuth.accessToken,
                    idToken: googleAuth.idToken,
                  );
                  await FirebaseAuth.instance.signInWithCredential(credential);
                  Get.snackbar('Success', 'Logged in with Google');
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
