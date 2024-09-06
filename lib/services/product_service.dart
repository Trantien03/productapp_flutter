import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/product.dart';

class ProductService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final String collectionName = 'products';

  Future<List<Product>> fetchProducts() async {
    try {
      // Fetch data from Firestore
      QuerySnapshot snapshot = await _firestore.collection(collectionName).get();

      // Convert Firestore documents to Product model instances
      return snapshot.docs.map((doc) {
        return Product.fromJson(doc.data() as Map<String, dynamic>);
      }).toList();
    } catch (e) {
      throw Exception('Failed to load products: $e');
    }
  }
}
