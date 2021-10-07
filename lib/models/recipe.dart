import 'package:recipes/models/ingredient.dart';
import 'package:recipes/repositories/recipe_repository.dart';

class Recipe {
  String label;
  String imageUrl;
  int servings;
  List<Ingredient> ingredients;

  Recipe({
    required this.label,
    required this.imageUrl,
    required this.servings,
    required this.ingredients,
  });

  static List<Recipe> all = RecipeRepository.samples;
}
