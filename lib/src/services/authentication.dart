import 'package:firebase_auth/firebase_auth.dart';

class Authentication{

final FirebaseAuth _auth= FirebaseAuth.instance;

Stream <User> get user{
  return _auth.authStateChanges();
}

Future Sign_In()async{

 try{
   UserCredential result= await _auth.signInAnonymously();
   User user=result.user;
   return user;
 }
 catch(e){
   return null;
 }

}

Future Sign_Out() async{

  try{
    return await _auth.signOut();
  }catch(e){
    return null;
  }
}

    }