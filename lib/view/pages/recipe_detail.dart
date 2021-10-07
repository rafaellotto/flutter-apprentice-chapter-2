import 'package:flutter/material.dart';
import 'package:recipes/models/ingredient.dart';
import 'package:recipes/models/recipe.dart';

class RecipeDetails extends StatefulWidget {
  final Recipe recipe;

  const RecipeDetails({
    Key? key,
    required this.recipe,
  }) : super(key: key);

  @override
  State<RecipeDetails> createState() => _RecipeDetailsState();
}

class _RecipeDetailsState extends State<RecipeDetails> {
  int _sliderValue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recipe.label),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 300,
              // center images smaller than the screen width
              width: double.infinity,
              child: Image(
                image: AssetImage(widget.recipe.imageUrl),
              ),
            ),
            const SizedBox(height: 4.0),
            Text(
              widget.recipe.label,
              style: const TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 8.0),
            Text(
                'Ingredients for ${_sliderValue * widget.recipe.servings} serving(s)'),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(7.0),
                itemCount: widget.recipe.ingredients.length,
                itemBuilder: (BuildContext context, int index) {
                  final ingredient = widget.recipe.ingredients[index];
                  double ingredientQuantity =
                      ingredient.quantity * _sliderValue;

                  return ListTile(
                    tileColor: Colors.grey[200],
                    title: Text(ingredient.name),
                    trailing: Text(
                        '${ingredientQuantity.toString()} ${ingredient.measure}'),
                  );
                },
              ),
            ),
            Slider(
                min: 1,
                max: 10,
                divisions: 10,
                activeColor: Colors.red,
                inactiveColor: Colors.grey[300],
                value: _sliderValue.toDouble(),
                onChanged: (newValue) {
                  setState(() {
                    _sliderValue = newValue.round();
                  });
                }),
          ],
        ),
      ),
    );
  }
}
