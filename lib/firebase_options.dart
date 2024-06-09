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
    apiKey: 'AIzaSyDmYPTPvAkeTWmYbFAhn7U7lnakEFVz934',
    appId: '1:130260348394:web:9f11b4ce82a094d0f8d693',
    messagingSenderId: '130260348394',
    projectId: 'shoevault-55198',
    authDomain: 'shoevault-55198.firebaseapp.com',
    storageBucket: 'shoevault-55198.appspot.com',
    measurementId: 'G-BLKY5SWVQC',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCi3wJz_eAcPepoK5dSx_n-BAZmx4r0MbI',
    appId: '1:130260348394:android:2e1979ac48d83f30f8d693',
    messagingSenderId: '130260348394',
    projectId: 'shoevault-55198',
    storageBucket: 'shoevault-55198.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAyhJc5o7cPT6uXhMYa9SB1cHQgic8k0mY',
    appId: '1:130260348394:ios:c6ba8e653fa547e1f8d693',
    messagingSenderId: '130260348394',
    projectId: 'shoevault-55198',
    storageBucket: 'shoevault-55198.appspot.com',
    iosBundleId: 'com.example.taskTrack',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAyhJc5o7cPT6uXhMYa9SB1cHQgic8k0mY',
    appId: '1:130260348394:ios:c6ba8e653fa547e1f8d693',
    messagingSenderId: '130260348394',
    projectId: 'shoevault-55198',
    storageBucket: 'shoevault-55198.appspot.com',
    iosBundleId: 'com.example.taskTrack',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDmYPTPvAkeTWmYbFAhn7U7lnakEFVz934',
    appId: '1:130260348394:web:8b649bad245a594bf8d693',
    messagingSenderId: '130260348394',
    projectId: 'shoevault-55198',
    authDomain: 'shoevault-55198.firebaseapp.com',
    storageBucket: 'shoevault-55198.appspot.com',
    measurementId: 'G-P4NG0F2JM8',
  );

}