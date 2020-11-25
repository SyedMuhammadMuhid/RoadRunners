import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:roadrunners/src/models/Personal_data_model.dart';

class DataBase_Services{
  
  final CollectionReference Personal_data= FirebaseFirestore.instance.collection('profiles');
  String uid;
  DataBase_Services({this.uid});

  Future updatePersonalData(Personal_Data_Model P_Data)async{

    return await Personal_data.doc(uid).set({
      "imageLink": P_Data.imageLink,
      "name":P_Data.name,
      "userName": P_Data.userName,
      "email": P_Data.email,
      "contactInfo": P_Data.contactInfo,
      "address": P_Data.address,
      "accountNo":P_Data.accountNo,
      "cardHolder":P_Data.cardHolder,
      "expiryMonth":P_Data.expiryMonth,
      "expiryYear":P_Data.expiryYear,
      "cvv":P_Data.cvv
    });
  }

  Stream <QuerySnapshot> get Personal_data_stream{
    return  Personal_data.snapshots();
  }
}