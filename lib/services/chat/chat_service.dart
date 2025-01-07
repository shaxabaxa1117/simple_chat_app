import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:simple_chat_app/models/message.dart';

class ChatService {
//! instance of firestore

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

//! get users stream

  Stream<List<Map<String, dynamic>>> getUsersStream() {
    return _firestore.collection("Users").snapshots().map((snapshot) {
      return snapshot.docs.map((doc) {
        //? go through each induvidual usert
        final user = doc.data();

        return user;
      }).toList();
    });
  }

  Future<void> sendMessage(String receiverID, String message) async {
  //! Current user info
  final String currentUserID = _auth.currentUser!.uid;
  final String currentUserEmail = _auth.currentUser!.email!;

  //! Create new message
  Message newMessage = Message(
    senderID: currentUserID,
    senderEmail: currentUserEmail,
    receiverID: receiverID,
    message: message,
    timestamp: null, // Установим значение позже
  );

  List<String> ids = [currentUserID, receiverID];
  ids.sort();
  String chatroomId = ids.join('_');

  //! Adding to database
  await _firestore
      .collection('chat_rooms')
      .doc(chatroomId)
      .collection('messages')
      .add({
    ...newMessage.toMap(),
    'timestamp': FieldValue.serverTimestamp(), // Используем серверное время
  });
}





Stream<QuerySnapshot> getMessage(String userID, String otherUserID) {
  List<String> ids = [userID, otherUserID];
  ids.sort(); 
  String chatroomId = ids.join('_');

  return _firestore
      .collection('chat_rooms')
      .doc(chatroomId)
      .collection('messages')
      .orderBy('timestamp', descending: false)
      .snapshots();
}

}
