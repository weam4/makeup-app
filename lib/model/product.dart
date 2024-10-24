class Product {
  const Product(
      {required this.id,
      required this.category,
      required this.title,
      required this.imageUrl,
      required this.price,
      required this.quantity});
  final String id;
  final List<String> category;
  final String title;
  final String imageUrl;
  final String price;
  final int quantity;
}
