class Clothes {
  String title;
  String subtitle;
  String price;
  String imageUrl;
  String  size;
  String detailUrl;
  String description;

  Clothes(
    this.title,
    this.subtitle,
    this.price,
    this.imageUrl,
    this.detailUrl,
      this.size,
      this.description,
  );
  static List<Clothes> generateClothes() {
    return [
      Clothes('Western Wear', 'Dress', "999", 'assets/images/women.jpeg',
          'detailUrl','L','This Bohemian beach dress was designed to be your go-to summer dress because it will keep you cozy and stylish all day long. It is loose enough to be comfortable without seeming baggy, and it is snug enough to be captivating.'),
      Clothes('Men Coat', ' Jacket', "999", 'assets/images/jacket1.jpeg',
          'detailUrl','M','This Bohemian beach dress was designed to be your go-to summer dress because it will keep you cozy and stylish all day long. It is loose enough to be comfortable without seeming baggy, and it is snug enough to be captivating.'),
      Clothes('Flare Dress',' Kids Wear', "499", 'assets/images/kid1.jpeg',
          'detailUrl','XL','This Bohemian beach dress was designed to be your go-to summer dress because it will keep you cozy and stylish all day long. It is loose enough to be comfortable without seeming baggy, and it is snug enough to be captivating.'),
      Clothes('Gucci Oversized', 'Hoodie', "799", 'assets/images/hoodie.jpeg',
          'ddthystyer','S','This Bohemian beach dress was designed to be your go-to summer dress because it will keep you cozy and stylish all day long. It is loose enough to be comfortable without seeming baggy, and it is snug enough to be captivating.'),
    ];
  }
}
