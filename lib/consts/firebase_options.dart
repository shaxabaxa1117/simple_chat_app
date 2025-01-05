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
    apiKey: 'AIzaSyDH_LlOCvDxNN98G-ZdlW4nt9cTJSuUAJw',
    appId: '1:1080763366741:web:3ebd97469bca6a63a443dc',
    messagingSenderId: '1080763366741',
    projectId: 'simplechat-e97ba',
    authDomain: 'simplechat-e97ba.firebaseapp.com',
    storageBucket: 'simplechat-e97ba.firebasestorage.app',
    measurementId: 'G-JQ5B261PCN',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAV_-ezfSCnDKM1oMkHR1C34ffRxFVvJLM',
    appId: '1:1080763366741:android:7937c39fa6488f45a443dc',
    messagingSenderId: '1080763366741',
    projectId: 'simplechat-e97ba',
    storageBucket: 'simplechat-e97ba.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAtL6VrQcA1CxazfGfyy_JJyB_5h3_aYJw',
    appId: '1:1080763366741:ios:b91c3f981d2819afa443dc',
    messagingSenderId: '1080763366741',
    projectId: 'simplechat-e97ba',
    storageBucket: 'simplechat-e97ba.firebasestorage.app',
    iosBundleId: 'com.example.simpleChatApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAtL6VrQcA1CxazfGfyy_JJyB_5h3_aYJw',
    appId: '1:1080763366741:ios:b91c3f981d2819afa443dc',
    messagingSenderId: '1080763366741',
    projectId: 'simplechat-e97ba',
    storageBucket: 'simplechat-e97ba.firebasestorage.app',
    iosBundleId: 'com.example.simpleChatApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDH_LlOCvDxNN98G-ZdlW4nt9cTJSuUAJw',
    appId: '1:1080763366741:web:553a69f96a1b90bea443dc',
    messagingSenderId: '1080763366741',
    projectId: 'simplechat-e97ba',
    authDomain: 'simplechat-e97ba.firebaseapp.com',
    storageBucket: 'simplechat-e97ba.firebasestorage.app',
    measurementId: 'G-89WVB5XLJL',
  );
}
