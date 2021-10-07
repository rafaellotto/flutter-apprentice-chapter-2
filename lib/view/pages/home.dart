import 'package:flutter/material.dart';
import 'package:recipes/models/recipe.dart';
import 'package:recipes/view/widgets/recipe_card.dart';

class Home extends StatefulWidget {
  const Home({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: SafeArea(
        child: ListView.builder(
          itemCount: Recipe.all.length,
          itemBuilder: (context, int index) {
            return RecipeCard(recipe: Recipe.all[index]);
          },
        ),
      ),
    );
  }
}
