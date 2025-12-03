import 'package:flutter/material.dart';
void main() {
  runApp(const ReceipesApp());
}

/* -------------------- APP -------------------- */
class ReceipesApp extends StatelessWidget {
  const ReceipesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 114, 198, 231),
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Recipe Calculator'),
    );
  }
}

/* -------------------- MODEL -------------------- */
class Recipe {
  final String imageUrl;
  final String imgLabel;

  Recipe({required this.imageUrl, required this.imgLabel});

  static List<Recipe> samples = [
  Recipe(imageUrl: 'assets/1.webp', imgLabel: 'Pad Thai'),
  Recipe(imageUrl: 'assets/2.webp', imgLabel: 'Thai Pumpkin Curry'),
  Recipe(imageUrl: 'assets/3.webp', imgLabel: 'Thai Green Fish Curry'),
  Recipe(imageUrl: 'assets/4.webp', imgLabel: 'Crying Tiger Beef Salad'),
  Recipe(imageUrl: 'assets/5.webp', imgLabel: 'Thai-style Cauli Larb Salad'),
];

}

/* -------------------- HOME -------------------- */
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: SafeArea(
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return buildRecipeCard(Recipe.samples[index]);
          },
          itemCount: Recipe.samples.length,
        ),
      ),
    );
  }
}

/* -------------------- CARD -------------------- */
Widget buildRecipeCard(Recipe recipe) {
  return Card(
    margin: const EdgeInsets.all(10),
    child: Column(
      children: <Widget>[
        Image.asset(recipe.imageUrl, height: 200, fit: BoxFit.cover),
        const SizedBox(height: 8),
        Text(
          recipe.imgLabel,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
      ],
    ),
  );
}
