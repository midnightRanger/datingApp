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
    apiKey: 'AIzaSyB3eoWF-YfjSt7a-zv9MmRpvExXVzQcOJs',
    appId: '1:57618646459:web:7cee9d0e9ecaf091fb309e',
    messagingSenderId: '57618646459',
    projectId: 'datingapp-aa38a',
    authDomain: 'datingapp-aa38a.firebaseapp.com',
    storageBucket: 'datingapp-aa38a.appspot.com',
    measurementId: 'G-2REZ9KZXXR',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBdwhw4z7ne0gfrlgiVNjMTak-RnBLZ5F8',
    appId: '1:57618646459:android:9392c02bbaa11c2efb309e',
    messagingSenderId: '57618646459',
    projectId: 'datingapp-aa38a',
    storageBucket: 'datingapp-aa38a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBSLl52GoaJB88JAwyP_8K-1-P6ziDwVkQ',
    appId: '1:57618646459:ios:23e6abcfc950e9a8fb309e',
    messagingSenderId: '57618646459',
    projectId: 'datingapp-aa38a',
    storageBucket: 'datingapp-aa38a.appspot.com',
    iosClientId: '57618646459-aruskqigo56vc9ksbh29ni2akamd4ag2.apps.googleusercontent.com',
    iosBundleId: 'com.example.datingApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBSLl52GoaJB88JAwyP_8K-1-P6ziDwVkQ',
    appId: '1:57618646459:ios:23e6abcfc950e9a8fb309e',
    messagingSenderId: '57618646459',
    projectId: 'datingapp-aa38a',
    storageBucket: 'datingapp-aa38a.appspot.com',
    iosClientId: '57618646459-aruskqigo56vc9ksbh29ni2akamd4ag2.apps.googleusercontent.com',
    iosBundleId: 'com.example.datingApp',
  );
}
