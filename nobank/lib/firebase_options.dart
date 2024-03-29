// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyDZYu0g7FKUJI-28rnSRbqff5xntLn-D0A',
    appId: '1:69742715451:web:600b4d4a7e60f3eb25321e',
    messagingSenderId: '69742715451',
    projectId: 'nobank-bitrise',
    authDomain: 'nobank-bitrise.firebaseapp.com',
    storageBucket: 'nobank-bitrise.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA-RZgKFASYJQ9t3bE0_z4UadYZ3Qe4tX8',
    appId: '1:69742715451:android:23acc4e07180b14225321e',
    messagingSenderId: '69742715451',
    projectId: 'nobank-bitrise',
    storageBucket: 'nobank-bitrise.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAxiwgjGuWBjLgfzkkZWIjJ4lwjiQc5qCM',
    appId: '1:69742715451:ios:30592b6f4fb9d67025321e',
    messagingSenderId: '69742715451',
    projectId: 'nobank-bitrise',
    storageBucket: 'nobank-bitrise.appspot.com',
    iosClientId: '69742715451-jkv99glkg77btg9vq5lmiv0oav7o0kon.apps.googleusercontent.com',
    iosBundleId: 'com.example.nobank',
  );
}
