import 'package:firebase_auth/firebase_auth.dart';
import 'package:roadrunners/src/models/Personal_data_model.dart';
import 'package:roadrunners/src/services/database.dart';

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

Future SignInWithEmailPass(String Email, String Pass)async
{
  try{
    UserCredential result= await _auth.signInWithEmailAndPassword(email: Email, password: Pass);
    User user=result.user;
    return user;

  }catch(e){
    return null;
  }
}

Future SignUp(String Email, String Pass, String Name, String Username)async
{
  try{
    UserCredential result= await _auth.createUserWithEmailAndPassword(email: Email, password: Pass);
    User user= result.user;
    await DataBase_Services(uid: user.uid).updatePersonalData(Personal_Data_Model(" ", Name, Username, "Update Email","Update Contact", "Update Address", "**** **** **** ****"," ","MM","YY"," "));
    return user;

  }catch(e){
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