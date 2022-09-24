

class CatalogItem {
  final String id;
  final String product;
  final String description;
  final String imageUrl;
  final String color;
  final int price;

  CatalogItem(
      {required this.color,
      required this.description,
      required this.id,
      required this.imageUrl,
      required this.price,
      required this.product});
}
