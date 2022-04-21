import 'package:flutter/cupertino.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class BookService extends ChangeNotifier {
  final bookCollection = FirebaseFirestore.instance.collection('project');
  Future<QuerySnapshot> read() async {
    return bookCollection.get();
  }
}
