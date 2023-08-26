class CartItem {
  final String id;
  final String name;
  final double price;
  double quantit;
  final String imagePath;
  CartItem({
    required this.id,
    required this.name,
    required this.price,
    required this.quantit,
    required this.imagePath,
  });
}

final List<CartItem> cartItems = [
  CartItem(
    id: 'Цена: 340c за шт',
    name: 'Драконий фрукт',
    price: 250,
    quantit: 2,
    imagePath: 'assets/images/dracon.png',
  ),
  CartItem(
    id: 'Цена: 340c за шт',
    name: 'Яблоко золотая радуга',
    price: 112,
    quantit: 2,
    imagePath: 'assets/images/apple.png',
  ),
  CartItem(
    id: 'Цена: 340c за шт',
    name: 'Морковь Нантская',
    price: 112,
    quantit: 2,
    imagePath: 'assets/images/morkov.png',
  ),
  CartItem(
    id: 'Цена: 340c за шт',
    name: 'Апельсины',
    price: 112,
    quantit: 2,
    imagePath: 'assets/images/apelsin.png',
  )
];
