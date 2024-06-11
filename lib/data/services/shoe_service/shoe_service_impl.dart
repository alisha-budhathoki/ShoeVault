import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shoe_vault/data/models/shoes/shoe.dart';
import 'package:shoe_vault/data/services/shoe_service/shoe_service.dart';

class ShoeServiceImpl implements ShoeService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  Future<List<Shoe>> fetchShoes() async {
    try {
      final querySnapshot = await _firestore.collection('shoes').get();
      return querySnapshot.docs.map((doc) {
        return Shoe.fromJson(doc.data()).copyWith(id: doc.id);
      }).toList();
    } catch (e) {
      throw Exception('Error fetching shoes: $e');
    }
  }
}
