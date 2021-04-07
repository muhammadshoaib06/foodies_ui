class FoodInfo {
  final int position;
  final String name;
  final String description;
  final String images;

  FoodInfo(this.position, {this.name, this.description, this.images});
}

List<FoodInfo> foodInfo = [
  FoodInfo(1,
      name: 'BURGER',
    description: 'Burger Special Offer - 20% Off',
    images: 'assets/images/burger.jpg'
  ),

  FoodInfo(2,
      name: 'PASTA',
      description: '20% Off',
      images: 'assets/images/pasta.png'
  ),

  FoodInfo(3,
      name: 'RICE',
      description: '20% Off',
      images: 'assets/images/rice.png'
  ),

  FoodInfo(4,
      name: 'PIZZA',
      description: '20% Off',
      images: 'assets/images/pizza.jpg'
  ),

  FoodInfo(5,
      name: 'SANDWICH',
      description: '20% Off',
      images: 'assets/images/sandwich.png'
  ),

  FoodInfo(6,
      name: 'SOUPS',
      description: '20% Off',
      images: 'assets/images/soups.jpg'
  ),

  FoodInfo(7,
      name: 'WINGS',
      description: '20% Off',
      images: 'assets/images/wings.png'
  ),
];