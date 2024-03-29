import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
    apiKey: 'AIzaSyBZle3Bow-gAe48e_JxYqkEx_vL0aC1GVM',
    appId: '1:949175962784:web:5694618d1cb9d4039e4dc5',
    messagingSenderId: '949175962784',
    projectId: 'reciperover-28351',
    authDomain: 'reciperover-28351.firebaseapp.com',
    storageBucket: 'reciperover-28351.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB0lZP2T0zYOYwJ9CXrRyQyGoT9kOnHUh4',
    appId: '1:949175962784:android:730622fb7609525c9e4dc5',
    messagingSenderId: '949175962784',
    projectId: 'reciperover-28351',
    storageBucket: 'reciperover-28351.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBjwcAfbkO1dHaJAy_c0I8P7vO54Bk5AcA',
    appId: '1:949175962784:ios:5462ccc30ef25a019e4dc5',
    messagingSenderId: '949175962784',
    projectId: 'reciperover-28351',
    storageBucket: 'reciperover-28351.appspot.com',
    iosBundleId: 'com.example.recipeRover',
  );
}
