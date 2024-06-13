import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shoe_vault/data/models/shoes/shoe_response.dart';
import 'package:shoe_vault/data/services/shoe_service/shoe_service.dart';

class ShoeServiceImpl implements ShoeService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  Future<List<ShoeResponse>> fetchShoes() async {
    try {
      final querySnapshot = await _firestore.collection('Shoes').get();
      return querySnapshot.docs.map((doc) {
        return ShoeResponse.fromJson(doc.data()).copyWith(id: doc.id);
      }).toList();
    } catch (e) {
      throw Exception('Error fetching shoes: $e');
    }
  }

  @override
  Future<ShoeResponse?> fetchShoeById(String id) async {
    try {
      final docSnapshot = await _firestore.collection('Shoes').doc(id).get();
      if (docSnapshot.exists) {
        return ShoeResponse.fromJson(docSnapshot.data()!)
            .copyWith(id: docSnapshot.id);
      } else {
        return null;
      }
    } catch (e) {
      throw Exception('Error fetching shoe by id: $e');
    }
  }
}
