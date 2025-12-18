import 'package:receipes/model/ingredient.dart';

class Recipe {
  final String imageUrl;
  final String imgLabel;
  final String detail;
  final List<Ingredient> ingredients;

  Recipe({
    required this.imageUrl,
    required this.imgLabel,
    required this.detail,
    required this.ingredients,
  });

  static List<Recipe> samples = [
    Recipe(
      imageUrl: 'assets/1.webp',
      imgLabel: 'Pad Thai',
      detail: 'Classic Thai stir-fried rice noodle dish with sweet and sour flavor.',
      ingredients: [
        Ingredient(name: 'Rice noodles', quantity: 200, unit: 'g'),
        Ingredient(name: 'Eggs', quantity: 2, unit: 'pcs'),
        Ingredient(name: 'Shrimp', quantity: 100, unit: 'g'),
        Ingredient(name: 'Bean sprouts', quantity: 1, unit: 'cup'),
        Ingredient(name: 'Pad Thai sauce', quantity: 3, unit: 'tbsp'),
      ],
    ),
    Recipe(
      imageUrl: 'assets/2.webp',
      imgLabel: 'Pumpkin Curry',
      detail: 'Thai red curry with pumpkin in rich coconut milk.',
      ingredients: [
        Ingredient(name: 'Pumpkin', quantity: 300, unit: 'g'),
        Ingredient(name: 'Red curry paste', quantity: 2, unit: 'tbsp'),
        Ingredient(name: 'Coconut milk', quantity: 400, unit: 'ml'),
        Ingredient(name: 'Basil leaves', quantity: 1, unit: 'cup'),
      ],
    ),
    Recipe(
      imageUrl: 'assets/3.webp',
      imgLabel: 'Thai Green Curry',
      detail: 'Spicy and aromatic green curry with chicken.',
      ingredients: [
        Ingredient(name: 'Chicken', quantity: 250, unit: 'g'),
        Ingredient(name: 'Green curry paste', quantity: 2, unit: 'tbsp'),
        Ingredient(name: 'Coconut milk', quantity: 400, unit: 'ml'),
        Ingredient(name: 'Eggplant', quantity: 1, unit: 'cup'),
      ],
    ),
    Recipe(
      imageUrl: 'assets/4.webp',
      imgLabel: 'Crying Tiger Salad',
      detail: 'Spicy grilled beef salad with lime and chili.',
      ingredients: [
        Ingredient(name: 'Grilled beef', quantity: 200, unit: 'g'),
        Ingredient(name: 'Chili powder', quantity: 1, unit: 'tsp'),
        Ingredient(name: 'Lime juice', quantity: 2, unit: 'tbsp'),
        Ingredient(name: 'Fish sauce', quantity: 1, unit: 'tbsp'),
      ],
    ),
    Recipe(
      imageUrl: 'assets/5.webp',
      imgLabel: 'Larb Moo',
      detail: 'Traditional Thai spicy minced pork salad.',
      ingredients: [
        Ingredient(name: 'Minced pork', quantity: 250, unit: 'g'),
        Ingredient(name: 'Lime juice', quantity: 2, unit: 'tbsp'),
        Ingredient(name: 'Chili flakes', quantity: 1, unit: 'tsp'),
        Ingredient(name: 'Mint leaves', quantity: 1, unit: 'cup'),
      ],
    ),
  ];
}
