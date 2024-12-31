// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDmMGMAOtQeci8k_OX86x9Hxhr1RGMArq8',
    appId: '1:528653262845:web:ab0612ff404ba8780e4394',
    messagingSenderId: '528653262845',
    projectId: 'mws-teori-ta',
    authDomain: 'mws-teori-ta.firebaseapp.com',
    storageBucket: 'mws-teori-ta.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDhEgUWn8-3r6P6RgTYATAYBv0dGltFbfE',
    appId: '1:528653262845:android:0e7177844d858cdd0e4394',
    messagingSenderId: '528653262845',
    projectId: 'mws-teori-ta',
    storageBucket: 'mws-teori-ta.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCBbSYLwz6vaiLBvZ09nQvaUlcORO2Xwds',
    appId: '1:528653262845:ios:556d1526a2c425280e4394',
    messagingSenderId: '528653262845',
    projectId: 'mws-teori-ta',
    storageBucket: 'mws-teori-ta.firebasestorage.app',
    iosBundleId: 'com.example.mwsTeoriTa',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCBbSYLwz6vaiLBvZ09nQvaUlcORO2Xwds',
    appId: '1:528653262845:ios:556d1526a2c425280e4394',
    messagingSenderId: '528653262845',
    projectId: 'mws-teori-ta',
    storageBucket: 'mws-teori-ta.firebasestorage.app',
    iosBundleId: 'com.example.mwsTeoriTa',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDmMGMAOtQeci8k_OX86x9Hxhr1RGMArq8',
    appId: '1:528653262845:web:bd5ad141f5a8a8380e4394',
    messagingSenderId: '528653262845',
    projectId: 'mws-teori-ta',
    authDomain: 'mws-teori-ta.firebaseapp.com',
    storageBucket: 'mws-teori-ta.firebasestorage.app',
  );
}
