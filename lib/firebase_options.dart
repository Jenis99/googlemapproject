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
    apiKey: 'AIzaSyDFjNLp0Yh5REzwzsJSVfNU-t39GhfPJn4',
    appId: '1:943462628113:web:d81ca4fdf399970428aab0',
    messagingSenderId: '943462628113',
    projectId: 'map-project-a7e08',
    authDomain: 'map-project-a7e08.firebaseapp.com',
    storageBucket: 'map-project-a7e08.appspot.com',
    measurementId: 'G-D5E6JX0DJR',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDGuq5DPflIcXsKTPEuKEpf5wwsRSYV9dg',
    appId: '1:943462628113:android:8abad418a9b1337128aab0',
    messagingSenderId: '943462628113',
    projectId: 'map-project-a7e08',
    storageBucket: 'map-project-a7e08.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCtQdYQbTijuGAan0twh2IRNPsMWpkPylI',
    appId: '1:943462628113:ios:1b0d20b52ee16f6028aab0',
    messagingSenderId: '943462628113',
    projectId: 'map-project-a7e08',
    storageBucket: 'map-project-a7e08.appspot.com',
    iosClientId: '943462628113-orvdout58jjnj1qek5eqhco74rokvbbe.apps.googleusercontent.com',
    iosBundleId: 'com.example.googlemapproject',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCtQdYQbTijuGAan0twh2IRNPsMWpkPylI',
    appId: '1:943462628113:ios:1b0d20b52ee16f6028aab0',
    messagingSenderId: '943462628113',
    projectId: 'map-project-a7e08',
    storageBucket: 'map-project-a7e08.appspot.com',
    iosClientId: '943462628113-orvdout58jjnj1qek5eqhco74rokvbbe.apps.googleusercontent.com',
    iosBundleId: 'com.example.googlemapproject',
  );
}
