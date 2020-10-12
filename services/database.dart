import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService{

  final String uid;
  DatabaseService({this.uid});

  //collection reference
  final CollectionReference stdCollection = Firestore.instance.collection('stds');

  Future updateUserData(String course, String name, int number ) async {
    return await stdCollection.document(uid).setData({
      'course': course,
      'name': name,
      'number': number,
    });
  }

}