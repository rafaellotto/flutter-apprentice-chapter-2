import 'package:recipes/models/ingredient.dart';
import 'package:recipes/models/recipe.dart';

class RecipeRepository {
  static List<Recipe> get samples => [
        Recipe(
          label: 'Spaghetti and Meatballs',
          imageUrl: 'assets/2126711929_ef763de2b3_w.jpg',
          servings: 4,
          ingredients: [
            Ingredient(quantity: 1, measure: 'box', name: 'Spaghetti'),
            Ingredient(quantity: 4, measure: '', name: 'Frozen meatballs'),
            Ingredient(quantity: 0.5, measure: 'jar', name: 'Sauce'),
          ],
        ),
        Recipe(
          label: 'Tomato Soup',
          imageUrl: 'assets/27729023535_a57606c1be.jpg',
          servings: 2,
          ingredients: [
            Ingredient(quantity: 1, measure: 'can', name: 'Tomato soup'),
          ],
        ),
        Recipe(
          label: 'Grilled Cheese',
          imageUrl: 'assets/3187380632_5056654a19_b.jpg',
          servings: 1,
          ingredients: [
            Ingredient(quantity: 2, measure: 'slices', name: 'Cheese'),
            Ingredient(quantity: 2, measure: 'slices', name: 'Bread'),
          ],
        ),
        Recipe(
          label: 'Chocolate Chip Cookies',
          imageUrl: 'assets/15992102771_b92f4cc00a_b.jpg',
          servings: 24,
          ingredients: [
            Ingredient(quantity: 4, measure: 'cups', name: 'Flour'),
            Ingredient(quantity: 2, measure: 'cups', name: 'Sugar'),
            Ingredient(quantity: 0.5, measure: 'cups', name: 'Chocolate chips'),
          ],
        ),
        Recipe(
          label: 'Taco Salad',
          imageUrl: 'assets/8533381643_a31a99e8a6_c.jpg',
          servings: 1,
          ingredients: [
            Ingredient(quantity: 4, measure: 'oz', name: 'Nachos'),
            Ingredient(quantity: 3, measure: 'oz', name: 'Taco meat'),
            Ingredient(quantity: 0.5, measure: 'cup', name: 'Cheese'),
            Ingredient(
                quantity: 0.25, measure: 'cup', name: 'Chopped tomatoes'),
          ],
        ),
        Recipe(
          label: 'Hawaiian Pizza',
          imageUrl: 'assets/15452035777_294cefced5_c.jpg',
          servings: 4,
          ingredients: [
            Ingredient(quantity: 1, measure: 'item', name: 'Pizza'),
            Ingredient(quantity: 1, measure: 'cup', name: 'Pineapple'),
            Ingredient(quantity: 8, measure: 'oz', name: 'Ham'),
          ],
        ),
      ];
}
