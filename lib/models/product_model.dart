class ProductModel {
  String name;
  String price;
  String image;
  ProductModel({
    this.image =
        'https://upload.wikimedia.org/wikipedia/commons/thumb/2/24/LEGO_logo.svg/960px-LEGO_logo.svg.png?_=20231016092137',
    required this.price,
    required this.name,
  });
}
