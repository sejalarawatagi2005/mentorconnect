// THIS FILE IS A PLACEHOLDER.
// You must run `flutterfire configure` to generate the real configuration for your project.

import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web; // ✅ FIXED (no more error)
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
          'DefaultFirebaseOptions are not configured for linux.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  // ✅ WEB CONFIG (ADDED)
  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBHgGxI-15aNmiKlEJTcbIRp6XikXdROLE',
    appId: '1:287345545661:web:6be53c4dd62c5e789e82d4',
    messagingSenderId: '287345545661',
    projectId: 'mentorconnect-78623',
    authDomain: 'mentorconnect-78623.firebaseapp.com',
    storageBucket: 'mentorconnect-78623.firebasestorage.app',
    measurementId: 'G-3VR93KDYYG',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCfvuStGyOU9CTjYLIxJkj6zxXCZw5PdlI',
    appId: '1:287345545661:android:2034c87bc902ffe69e82d4',
    messagingSenderId: '287345545661',
    projectId: 'mentorconnect-78623',
    storageBucket: 'mentorconnect-78623.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBjGK4CF59wLimd3wF5Y2dgt_vu23UZoRU',
    appId: '1:287345545661:ios:3ec7f616666c008f9e82d4',
    messagingSenderId: '287345545661',
    projectId: 'mentorconnect-78623',
    storageBucket: 'mentorconnect-78623.firebasestorage.app',
    iosBundleId: 'com.example.myapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBjGK4CF59wLimd3wF5Y2dgt_vu23UZoRU',
    appId: '1:287345545661:ios:3ec7f616666c008f9e82d4',
    messagingSenderId: '287345545661',
    projectId: 'mentorconnect-78623',
    storageBucket: 'mentorconnect-78623.firebasestorage.app',
    iosBundleId: 'com.example.myapp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBHgGxI-15aNmiKlEJTcbIRp6XikXdROLE',
    appId: '1:287345545661:web:6be53c4dd62c5e789e82d4',
    messagingSenderId: '287345545661',
    projectId: 'mentorconnect-78623',
    authDomain: 'mentorconnect-78623.firebaseapp.com',
    storageBucket: 'mentorconnect-78623.firebasestorage.app',
    measurementId: 'G-3VR93KDYYG',
  );
}
