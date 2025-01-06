import 'dart:math';

class foodMenu {
  final String name;
  final String price;
  final String image;
  final String description;

  static final List<foodMenu> foodList = [
    foodMenu(
      name: "Spaghetti Carbonara",
      price: "12",
      image: "carbonara.jpg",
      description: "Creamy spaghetti with bacon and parmesan cheese.",
    ),
    foodMenu(
      name: "Margherita Pizza",
      price: "15",
      image: "pizza.jpg",
      description: "Classic pizza with tomato sauce, mozzarella, and basil.",
    ),
    foodMenu(
      name: "Caesar Salad",
      price: "20",
      image: "salad.jpg",
      description: "Fresh lettuce, croutons, parmesan, and Caesar dressing.",
    ),
    foodMenu(
      name: "Grilled Salmon",
      price: "25",
      image: "salmon.jpg",
      description: "Perfectly grilled salmon with lemon and herbs.",
    ),
    foodMenu(
      name: "Chicken Alfredo",
      price: "18",
      image: "alfredo.jpg",
      description: "Rich pasta with grilled chicken and creamy Alfredo sauce.",
    ),
    foodMenu(
      name: "Beef Burger",
      price: "10",
      image: "burger.jpg",
      description: "Juicy beef patty with lettuce, tomato, and cheese.",
    ),
    foodMenu(
      name: "Vegan Wrap",
      price: "12",
      image: "wrap.jpg",
      description: "Fresh vegetables wrapped in a tortilla with hummus.",
    ),
    foodMenu(
      name: "Fish Tacos",
      price: "14",
      image: "tacos.jpg",
      description: "Grilled fish with slaw and creamy sauce in soft tortillas.",
    ),
    foodMenu(
      name: "Peking Duck",
      price: "30",
      image: "duck.jpg",
      description: "Crispy duck served with pancakes and hoisin sauce.",
    ),
    foodMenu(
      name: "Vegetable Stir-Fry",
      price: "16",
      image: "stirfry.jpg",
      description: "A mix of fresh vegetables stir-fried in a savory sauce.",
    ),
    foodMenu(
      name: "Margarita Cocktail",
      price: "8",
      image: "margarita.jpg",
      description: "Classic cocktail made with tequila, lime, and triple sec.",
    ),
    foodMenu(
      name: "Spring Rolls",
      price: "7",
      image: "springrolls.jpg",
      description: "Crispy fried rolls with vegetables and shrimp.",
    ),
    foodMenu(
      name: "Pasta Primavera",
      price: "17",
      image: "pasta.jpg",
      description: "Pasta with a mix of fresh, sautéed vegetables.",
    ),
    foodMenu(
      name: "Lamb Curry",
      price: "22",
      image: "curry.jpg",
      description: "Spicy and aromatic lamb cooked in a rich curry sauce.",
    ),
    foodMenu(
      name: "Cheeseboard",
      price: "20",
      image: "cheese.jpg",
      description:
          "A selection of fine cheeses served with crackers and fruits.",
    ),
    foodMenu(
      name: "Lobster Bisque",
      price: "28",
      image: "bisque.jpg",
      description: "A creamy, rich soup made from lobster and seafood stock.",
    ),
    foodMenu(
      name: "Tuna Poke Bowl",
      price: "18",
      image: "poke.jpg",
      description: "Fresh tuna served with rice, avocado, and poke sauce.",
    ),
    foodMenu(
      name: "Ramen",
      price: "12",
      image: "ramen.jpg",
      description: "Japanese noodle soup with broth, vegetables, and pork.",
    ),
    foodMenu(
      name: "Grilled Veggie Skewers",
      price: "15",
      image: "veggieskewer.jpg",
      description: "Grilled vegetables skewered with herbs and spices.",
    ),
    foodMenu(
      name: "Chicken Tenders",
      price: "11",
      image: "tenders.jpg",
      description: "Crispy breaded chicken served with dipping sauce.",
    ),
    foodMenu(
      name: "Shrimp Scampi",
      price: "24",
      image: "scampi.jpg",
      description: "Shrimp cooked in garlic butter sauce with pasta.",
    ),
    foodMenu(
      name: "Tom Yum Soup",
      price: "10",
      image: "tomyum.jpg",
      description: "Spicy Thai soup with shrimp, mushrooms, and lemongrass.",
    ),
  ];

  // Mark the constructor as const if the values don't change
  const foodMenu({
    required this.name,
    required this.price,
    required this.image,
    required this.description,
  });

  // Static method to get a random food item from foodList
  static foodMenu getRandomFood() {
    Random random = Random();
    int randomIndex = random.nextInt(foodList.length);
    return foodList[randomIndex];
  }

  // Convert the FoodMenu object to a Map
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'price': price,
      'image': image,
      'description': description,
    };
  }

  // Convert a Map to a FoodMenu object
  factory foodMenu.fromMap(Map<String, dynamic> map) {
    return foodMenu(
      name: map['name'] ?? '',
      price: map['price'] ?? '',
      image: map['image'] ?? '',
      description: map['description'] ?? '',
    );
  }
}
