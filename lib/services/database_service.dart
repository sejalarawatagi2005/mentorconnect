import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../models/user_profile.dart';

class DatabaseService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  final String _uid = FirebaseAuth.instance.currentUser?.uid ?? '';

  // Save Quiz Results
  Future<void> saveUserProfile(UserProfile profile) async {
    if (_uid.isEmpty) return;

    try {
      await _db.collection('users').doc(_uid).collection('quiz_results').add({
        ...profile.toMap(),
        'timestamp': FieldValue.serverTimestamp(),
      });
    } catch (e) {
      print('Firestore Error: $e');
      rethrow;
    }
  }

  // Get Latest Results
  Stream<QuerySnapshot> getLatestResults() {
    return _db
        .collection('users')
        .doc(_uid)
        .collection('quiz_results')
        .orderBy('timestamp', descending: true)
        .snapshots();
  }
}
