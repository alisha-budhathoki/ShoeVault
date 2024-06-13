import 'package:shoe_vault/data/models/shoes/shoe_response.dart';

abstract class ShoeService {
  Future<List<ShoeResponse>> fetchShoes();
  Future<ShoeResponse?> fetchShoeById(String id);
}
