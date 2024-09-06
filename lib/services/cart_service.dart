import '../models/cart.dart';
import '../models/product.dart';

class CartService {
  final Cart cart = Cart();

  void addToCart(Product product) {
    cart.addProduct(product);
  }

  void removeFromCart(Product product) {
    cart.removeProduct(product);
  }

  List<CartItem> getCartItems() {
    return cart.items;
  }

  double getTotalPrice() {
    return cart.totalPrice;
  }
}
