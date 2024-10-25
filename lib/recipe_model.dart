// To parse this JSON data, do
//
//     final recipesModelApi = recipesModelApiFromJson(jsonString);

import 'dart:convert';

RecipesModelApi recipesModelApiFromJson(String str) => RecipesModelApi.fromJson(json.decode(str));


class RecipesModelApi {
    List<Recipe> recipes;

    RecipesModelApi({
        required this.recipes,
    });

    factory RecipesModelApi.fromJson(Map<String, dynamic> json) => RecipesModelApi(
        recipes: List<Recipe>.from(json["recipes"].map((x) => Recipe.fromJson(x))),
    );

   
}

class Recipe {
    int id;
    String name;
    List<String> ingredients;
    List<String> instructions;
    String cuisine;
    String image;
    
    Recipe({
        required this.id,
        required this.name,
        required this.ingredients,
        required this.instructions,
      
        required this.cuisine,
       
        required this.image,
       
    });

    factory Recipe.fromJson(Map<String, dynamic> json) => Recipe(
        id: json["id"],
        name: json["name"],
        ingredients: List<String>.from(json["ingredients"].map((x) => x)),
        instructions: List<String>.from(json["instructions"].map((x) => x)),
       
        cuisine: json["cuisine"],
        
        image: json["image"],
        
    );

}