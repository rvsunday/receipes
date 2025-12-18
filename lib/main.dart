import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:receipes/model/recipe.dart';
import 'package:receipes/recipe_detail.dart';

void main() {
  runApp(const RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipe Calculator',
      theme: ThemeData(
        textTheme: GoogleFonts.pacificoTextTheme(),
        scaffoldBackgroundColor: const Color.fromARGB(255, 240, 169, 169),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 240, 120, 120),
          centerTitle: true,
        ),
      ),
      home: const MyHomePage(title: 'Recipe Calculator'),
    );
  }
}

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
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                // Handle tap event if needed
                print('You taped on${Recipe.samples[index].imgLabel}');
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return RecipeDetail(recipe: Recipe.samples[index]);
                }));
              },
              child: buildRecipeCard(Recipe.samples[index]),
            );
          },
          itemCount: Recipe.samples.length,
        ),
      ),
    );
  }
}

Widget buildRecipeCard(Recipe recipe) {
  return Card(
    elevation: 2.0,
    color: Colors.white,
    shape: BeveledRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          Text(
            recipe.imgLabel,
            style: GoogleFonts.pacifico(fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8.0),
          Image(image: AssetImage(recipe.imageUrl)),
        ],
      ),
    ),
  );
}
