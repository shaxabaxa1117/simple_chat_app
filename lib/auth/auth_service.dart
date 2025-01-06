

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  
  //! sign in

  Future<UserCredential> signInWithEmailPassword(String email, dynamic password) async{

    try{

      UserCredential userCredential = await _auth.signInWithEmailAndPassword(email: email, password: password);

      return userCredential;


    } on FirebaseAuthException catch(e){
      throw Exception(e.code);
    }

  }



  //! sign out

  Future<void> signOut() async{
    return await _auth.signOut();
  }


//! sign up

Future<UserCredential> signUpWithEmailPassword(String email, dynamic password) async{

    try{

   final  userCredential = await _auth.createUserWithEmailAndPassword(email: email, password: password);

   return userCredential;

    } on FirebaseAuthException catch(e){

      throw Exception(e.code);

    }

  


}

}