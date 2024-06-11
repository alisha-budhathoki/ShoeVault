import 'package:shoe_vault/data/models/shoes/shoe.dart';

abstract class ShoeService {
  Future<List<Shoe>> fetchShoes();
}
