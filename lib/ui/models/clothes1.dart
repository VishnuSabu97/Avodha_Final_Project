class Clothes1 {
  String title;
  String subtitle;
  String price;
  String imageUrl;
  String detailUrl;
  String description;
  String size;

  Clothes1(
    this.title,
    this.subtitle,
    this.price,
    this.imageUrl,
    this.detailUrl,
    this.description,
    this.size,
  );

  static List<Clothes1> generateClothes() {
    return [
      Clothes1(
          'Women  Wear',
          'Dress',
          "1999",
          'assets/images/w1.jpeg',
          'detailUrl',
          'This Bohemian beach dress was designed to be your go-to summer dress because it will keep you cozy and stylish all day long. It is loose enough to be comfortable without seeming baggy, and it is snug enough to be captivating.',
          'M'),
      Clothes1(
          'Men Coat',
          ' Jacket',
          "999",
          'assets/images/jacket1.jpeg',
          'detailUrl',
          'This Bohemian beach dress was designed to be your go-to summer dress because it will keep you cozy and stylish all day long. It is loose enough to be comfortable without seeming baggy, and it is snug enough to be captivating.',
          'XL'),
      Clothes1(
          'Flare Dress',
          ' Kids Wear',
          "499",
          'assets/images/kid1.jpeg',
          'detailUrl',
          'This Bohemian beach dress was designed to be your go-to summer dress because it will keep you cozy and stylish all day long. It is loose enough to be comfortable without seeming baggy, and it is snug enough to be captivating.',
          'S'),
      Clothes1(
          'Gucci Oversized',
          'Hoodie',
          "799",
          'assets/images/hoodie.jpeg',
          'ddthystyer',
          'This Bohemian beach dress was designed to be your go-to summer dress because it will keep you cozy and stylish all day long. It is loose enough to be comfortable without seeming baggy, and it is snug enough to be captivating.',
          'L'),
    ];
  }
}
