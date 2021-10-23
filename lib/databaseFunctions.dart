import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

create(String collName, docName, name, animal, int age) async {
  await FirebaseFirestore.instance
      .collection(collName)
      .doc(docName)
      .set({'name': name, 'animal': animal, 'age': age});
  print('Database Updated');
}

update(String collName, docName, field, var newFieldValue) async {
  await FirebaseFirestore.instance
      .collection(collName)
      .doc(docName)
      .update({field: newFieldValue});
  print('Fields Updated');
}

delete(String collName, docName) async {
  await FirebaseFirestore.instance.collection(collName).doc(docName).delete();
  print('Document Deleted');
}
