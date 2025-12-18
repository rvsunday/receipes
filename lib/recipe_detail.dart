import 'package:flutter/material.dart';
import 'package:receipes/model/recipe.dart';

class RecipeDetail extends StatefulWidget {
  final Recipe recipe;

  const RecipeDetail({super.key, required this.recipe});

  @override
  State<RecipeDetail> createState() => _RecipeDetailState();
}

class _RecipeDetailState extends State<RecipeDetail> {
  int sliderValue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Recipe Detail')),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          // IMAGE CARD
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Image.asset(widget.recipe.imageUrl),
            ),
          ),

          const SizedBox(height: 12),

          // DETAIL + INGREDIENT + SLIDER
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${widget.recipe.imgLabel} Details',
                    style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),

                  const SizedBox(height: 12),

                  Text(
                    widget.recipe.detail,
                    style: const TextStyle(fontSize: 20),
                  ),

                  const SizedBox(height: 16),

                  const Text(
                    'Ingredients',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 8),

                  ...widget.recipe.ingredients.map((ingredient) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: Text(
                        '${ingredient.quantity * sliderValue} '
                        '${ingredient.unit} '
                        '${ingredient.name}',
                        style: const TextStyle(fontSize: 16),
                      ),
                    );
                  }),

                  const SizedBox(height: 12),

                  Slider(
                    min: 1,
                    max: 10,
                    divisions: 9,
                    label: '$sliderValue servings',
                    value: sliderValue.toDouble(),
                    onChanged: (value) {
                      setState(() {
                        sliderValue = value.toInt();
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}