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
    apiKey: 'AIzaSyDyCrPrxKHWlI60wR8vl1UhfIQJy01tLRs',
    appId: '1:63494306211:web:a55b57aeca9cad8350c216',
    messagingSenderId: '63494306211',
    projectId: 'hackatonprojectfoodapp',
    authDomain: 'hackatonprojectfoodapp.firebaseapp.com',
    storageBucket: 'hackatonprojectfoodapp.appspot.com',
    measurementId: 'G-QS9N4HR0L9',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBDlQKffTpxDNbLjGwvC5cO95lCoVFkpr4',
    appId: '1:63494306211:android:b03ecf9801a4492b50c216',
    messagingSenderId: '63494306211',
    projectId: 'hackatonprojectfoodapp',
    storageBucket: 'hackatonprojectfoodapp.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCAn-1TEKHWZFkMnIsuOBlukP5ejwYvE3M',
    appId: '1:63494306211:ios:abe5d6301896bc1250c216',
    messagingSenderId: '63494306211',
    projectId: 'hackatonprojectfoodapp',
    storageBucket: 'hackatonprojectfoodapp.appspot.com',
    iosBundleId: 'com.example.hackatonFoodapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCAn-1TEKHWZFkMnIsuOBlukP5ejwYvE3M',
    appId: '1:63494306211:ios:abe5d6301896bc1250c216',
    messagingSenderId: '63494306211',
    projectId: 'hackatonprojectfoodapp',
    storageBucket: 'hackatonprojectfoodapp.appspot.com',
    iosBundleId: 'com.example.hackatonFoodapp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDyCrPrxKHWlI60wR8vl1UhfIQJy01tLRs',
    appId: '1:63494306211:web:b98f987194b86abb50c216',
    messagingSenderId: '63494306211',
    projectId: 'hackatonprojectfoodapp',
    authDomain: 'hackatonprojectfoodapp.firebaseapp.com',
    storageBucket: 'hackatonprojectfoodapp.appspot.com',
    measurementId: 'G-Q6GWM4DRFY',
  );
}
