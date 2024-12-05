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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for android - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyC9PH5dK7Bmx27fU2YqX008z0dPwkVlcoc',
    appId: '1:837069958381:web:a761d83cc85e4b0b51f0e4',
    messagingSenderId: '837069958381',
    projectId: 'taskm-359c1',
    authDomain: 'taskm-359c1.firebaseapp.com',
    storageBucket: 'taskm-359c1.firebasestorage.app',
    measurementId: 'G-LFWCVXTBDX',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC4lkLON7GSPVlr9UNkCeDzDX-W17AWY5c',
    appId: '1:837069958381:ios:713ed5ab4703725651f0e4',
    messagingSenderId: '837069958381',
    projectId: 'taskm-359c1',
    storageBucket: 'taskm-359c1.firebasestorage.app',
    iosBundleId: 'com.example.taskHome',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC4lkLON7GSPVlr9UNkCeDzDX-W17AWY5c',
    appId: '1:837069958381:ios:713ed5ab4703725651f0e4',
    messagingSenderId: '837069958381',
    projectId: 'taskm-359c1',
    storageBucket: 'taskm-359c1.firebasestorage.app',
    iosBundleId: 'com.example.taskHome',
  );
}