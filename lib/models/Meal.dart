/// meals : [{"idMeal":"52771","strMeal":"Spicy Arrabiata Penne","strDrinkAlternate":null,"strCategory":"Vegetarian","strArea":"Italian","strInstructions":"Bring a large pot of water to a boil. Add kosher salt to the boiling water, then add the pasta. Cook according to the package instructions, about 9 minutes.\r\nIn a large skillet over medium-high heat, add the olive oil and heat until the oil starts to shimmer. Add the garlic and cook, stirring, until fragrant, 1 to 2 minutes. Add the chopped tomatoes, red chile flakes, Italian seasoning and salt and pepper to taste. Bring to a boil and cook for 5 minutes. Remove from the heat and add the chopped basil.\r\nDrain the pasta and add it to the sauce. Garnish with Parmigiano-Reggiano flakes and more basil and serve warm.","strMealThumb":"https://www.themealdb.com/images/media/meals/ustsqw1468250014.jpg","strTags":"Pasta,Curry","strYoutube":"https://www.youtube.com/watch?v=1IszT_guI08","strIngredient1":"penne rigate","strIngredient2":"olive oil","strIngredient3":"garlic","strIngredient4":"chopped tomatoes","strIngredient5":"red chile flakes","strIngredient6":"italian seasoning","strIngredient7":"basil","strIngredient8":"Parmigiano-Reggiano","strIngredient9":"","strIngredient10":"","strIngredient11":"","strIngredient12":"","strIngredient13":"","strIngredient14":"","strIngredient15":"","strIngredient16":null,"strIngredient17":null,"strIngredient18":null,"strIngredient19":null,"strIngredient20":null,"strMeasure1":"1 pound","strMeasure2":"1/4 cup","strMeasure3":"3 cloves","strMeasure4":"1 tin ","strMeasure5":"1/2 teaspoon","strMeasure6":"1/2 teaspoon","strMeasure7":"6 leaves","strMeasure8":"spinkling","strMeasure9":"","strMeasure10":"","strMeasure11":"","strMeasure12":"","strMeasure13":"","strMeasure14":"","strMeasure15":"","strMeasure16":null,"strMeasure17":null,"strMeasure18":null,"strMeasure19":null,"strMeasure20":null,"strSource":null,"strImageSource":null,"strCreativeCommonsConfirmed":null,"dateModified":null}]

class Meal {
  Meal({
      this.meals,});

  Meal.fromJson(dynamic json) {
    if (json['meals'] != null) {
      meals = [];
      json['meals'].forEach((v) {
        meals?.add(Meals.fromJson(v));
      });
    }
  }
  List<Meals>? meals;
Meal copyWith({  List<Meals>? meals,
}) => Meal(  meals: meals ?? this.meals,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (meals != null) {
      map['meals'] = meals?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// idMeal : "52771"
/// strMeal : "Spicy Arrabiata Penne"
/// strDrinkAlternate : null
/// strCategory : "Vegetarian"
/// strArea : "Italian"
/// strInstructions : "Bring a large pot of water to a boil. Add kosher salt to the boiling water, then add the pasta. Cook according to the package instructions, about 9 minutes.\r\nIn a large skillet over medium-high heat, add the olive oil and heat until the oil starts to shimmer. Add the garlic and cook, stirring, until fragrant, 1 to 2 minutes. Add the chopped tomatoes, red chile flakes, Italian seasoning and salt and pepper to taste. Bring to a boil and cook for 5 minutes. Remove from the heat and add the chopped basil.\r\nDrain the pasta and add it to the sauce. Garnish with Parmigiano-Reggiano flakes and more basil and serve warm."
/// strMealThumb : "https://www.themealdb.com/images/media/meals/ustsqw1468250014.jpg"
/// strTags : "Pasta,Curry"
/// strYoutube : "https://www.youtube.com/watch?v=1IszT_guI08"
/// strIngredient1 : "penne rigate"
/// strIngredient2 : "olive oil"
/// strIngredient3 : "garlic"
/// strIngredient4 : "chopped tomatoes"
/// strIngredient5 : "red chile flakes"
/// strIngredient6 : "italian seasoning"
/// strIngredient7 : "basil"
/// strIngredient8 : "Parmigiano-Reggiano"
/// strIngredient9 : ""
/// strIngredient10 : ""
/// strIngredient11 : ""
/// strIngredient12 : ""
/// strIngredient13 : ""
/// strIngredient14 : ""
/// strIngredient15 : ""
/// strIngredient16 : null
/// strIngredient17 : null
/// strIngredient18 : null
/// strIngredient19 : null
/// strIngredient20 : null
/// strMeasure1 : "1 pound"
/// strMeasure2 : "1/4 cup"
/// strMeasure3 : "3 cloves"
/// strMeasure4 : "1 tin "
/// strMeasure5 : "1/2 teaspoon"
/// strMeasure6 : "1/2 teaspoon"
/// strMeasure7 : "6 leaves"
/// strMeasure8 : "spinkling"
/// strMeasure9 : ""
/// strMeasure10 : ""
/// strMeasure11 : ""
/// strMeasure12 : ""
/// strMeasure13 : ""
/// strMeasure14 : ""
/// strMeasure15 : ""
/// strMeasure16 : null
/// strMeasure17 : null
/// strMeasure18 : null
/// strMeasure19 : null
/// strMeasure20 : null
/// strSource : null
/// strImageSource : null
/// strCreativeCommonsConfirmed : null
/// dateModified : null

class Meals {
  Meals({
      this.idMeal, 
      this.strMeal, 
      this.strDrinkAlternate, 
      this.strCategory, 
      this.strArea, 
      this.strInstructions, 
      this.strMealThumb, 
      this.strTags, 
      this.strYoutube, 
      this.strIngredient1, 
      this.strIngredient2, 
      this.strIngredient3, 
      this.strIngredient4, 
      this.strIngredient5, 
      this.strIngredient6, 
      this.strIngredient7, 
      this.strIngredient8, 
      this.strIngredient9, 
      this.strIngredient10, 
      this.strIngredient11, 
      this.strIngredient12, 
      this.strIngredient13, 
      this.strIngredient14, 
      this.strIngredient15, 
      this.strIngredient16, 
      this.strIngredient17, 
      this.strIngredient18, 
      this.strIngredient19, 
      this.strIngredient20, 
      this.strMeasure1, 
      this.strMeasure2, 
      this.strMeasure3, 
      this.strMeasure4, 
      this.strMeasure5, 
      this.strMeasure6, 
      this.strMeasure7, 
      this.strMeasure8, 
      this.strMeasure9, 
      this.strMeasure10, 
      this.strMeasure11, 
      this.strMeasure12, 
      this.strMeasure13, 
      this.strMeasure14, 
      this.strMeasure15, 
      this.strMeasure16, 
      this.strMeasure17, 
      this.strMeasure18, 
      this.strMeasure19, 
      this.strMeasure20, 
      this.strSource, 
      this.strImageSource, 
      this.strCreativeCommonsConfirmed, 
      this.dateModified,});

  Meals.fromJson(dynamic json) {
    idMeal = json['idMeal'];
    strMeal = json['strMeal'];
    strDrinkAlternate = json['strDrinkAlternate'];
    strCategory = json['strCategory'];
    strArea = json['strArea'];
    strInstructions = json['strInstructions'];
    strMealThumb = json['strMealThumb'];
    strTags = json['strTags'];
    strYoutube = json['strYoutube'];
    strIngredient1 = json['strIngredient1'];
    strIngredient2 = json['strIngredient2'];
    strIngredient3 = json['strIngredient3'];
    strIngredient4 = json['strIngredient4'];
    strIngredient5 = json['strIngredient5'];
    strIngredient6 = json['strIngredient6'];
    strIngredient7 = json['strIngredient7'];
    strIngredient8 = json['strIngredient8'];
    strIngredient9 = json['strIngredient9'];
    strIngredient10 = json['strIngredient10'];
    strIngredient11 = json['strIngredient11'];
    strIngredient12 = json['strIngredient12'];
    strIngredient13 = json['strIngredient13'];
    strIngredient14 = json['strIngredient14'];
    strIngredient15 = json['strIngredient15'];
    strIngredient16 = json['strIngredient16'];
    strIngredient17 = json['strIngredient17'];
    strIngredient18 = json['strIngredient18'];
    strIngredient19 = json['strIngredient19'];
    strIngredient20 = json['strIngredient20'];
    strMeasure1 = json['strMeasure1'];
    strMeasure2 = json['strMeasure2'];
    strMeasure3 = json['strMeasure3'];
    strMeasure4 = json['strMeasure4'];
    strMeasure5 = json['strMeasure5'];
    strMeasure6 = json['strMeasure6'];
    strMeasure7 = json['strMeasure7'];
    strMeasure8 = json['strMeasure8'];
    strMeasure9 = json['strMeasure9'];
    strMeasure10 = json['strMeasure10'];
    strMeasure11 = json['strMeasure11'];
    strMeasure12 = json['strMeasure12'];
    strMeasure13 = json['strMeasure13'];
    strMeasure14 = json['strMeasure14'];
    strMeasure15 = json['strMeasure15'];
    strMeasure16 = json['strMeasure16'];
    strMeasure17 = json['strMeasure17'];
    strMeasure18 = json['strMeasure18'];
    strMeasure19 = json['strMeasure19'];
    strMeasure20 = json['strMeasure20'];
    strSource = json['strSource'];
    strImageSource = json['strImageSource'];
    strCreativeCommonsConfirmed = json['strCreativeCommonsConfirmed'];
    dateModified = json['dateModified'];
  }
  String? idMeal;
  String? strMeal;
  dynamic strDrinkAlternate;
  String? strCategory;
  String? strArea;
  String? strInstructions;
  String? strMealThumb;
  String? strTags;
  String? strYoutube;
  String? strIngredient1;
  String? strIngredient2;
  String? strIngredient3;
  String? strIngredient4;
  String? strIngredient5;
  String? strIngredient6;
  String? strIngredient7;
  String? strIngredient8;
  String? strIngredient9;
  String? strIngredient10;
  String? strIngredient11;
  String? strIngredient12;
  String? strIngredient13;
  String? strIngredient14;
  String? strIngredient15;
  dynamic strIngredient16;
  dynamic strIngredient17;
  dynamic strIngredient18;
  dynamic strIngredient19;
  dynamic strIngredient20;
  String? strMeasure1;
  String? strMeasure2;
  String? strMeasure3;
  String? strMeasure4;
  String? strMeasure5;
  String? strMeasure6;
  String? strMeasure7;
  String? strMeasure8;
  String? strMeasure9;
  String? strMeasure10;
  String? strMeasure11;
  String? strMeasure12;
  String? strMeasure13;
  String? strMeasure14;
  String? strMeasure15;
  dynamic strMeasure16;
  dynamic strMeasure17;
  dynamic strMeasure18;
  dynamic strMeasure19;
  dynamic strMeasure20;
  dynamic strSource;
  dynamic strImageSource;
  dynamic strCreativeCommonsConfirmed;
  dynamic dateModified;
Meals copyWith({  String? idMeal,
  String? strMeal,
  dynamic strDrinkAlternate,
  String? strCategory,
  String? strArea,
  String? strInstructions,
  String? strMealThumb,
  String? strTags,
  String? strYoutube,
  String? strIngredient1,
  String? strIngredient2,
  String? strIngredient3,
  String? strIngredient4,
  String? strIngredient5,
  String? strIngredient6,
  String? strIngredient7,
  String? strIngredient8,
  String? strIngredient9,
  String? strIngredient10,
  String? strIngredient11,
  String? strIngredient12,
  String? strIngredient13,
  String? strIngredient14,
  String? strIngredient15,
  dynamic strIngredient16,
  dynamic strIngredient17,
  dynamic strIngredient18,
  dynamic strIngredient19,
  dynamic strIngredient20,
  String? strMeasure1,
  String? strMeasure2,
  String? strMeasure3,
  String? strMeasure4,
  String? strMeasure5,
  String? strMeasure6,
  String? strMeasure7,
  String? strMeasure8,
  String? strMeasure9,
  String? strMeasure10,
  String? strMeasure11,
  String? strMeasure12,
  String? strMeasure13,
  String? strMeasure14,
  String? strMeasure15,
  dynamic strMeasure16,
  dynamic strMeasure17,
  dynamic strMeasure18,
  dynamic strMeasure19,
  dynamic strMeasure20,
  dynamic strSource,
  dynamic strImageSource,
  dynamic strCreativeCommonsConfirmed,
  dynamic dateModified,
}) => Meals(  idMeal: idMeal ?? this.idMeal,
  strMeal: strMeal ?? this.strMeal,
  strDrinkAlternate: strDrinkAlternate ?? this.strDrinkAlternate,
  strCategory: strCategory ?? this.strCategory,
  strArea: strArea ?? this.strArea,
  strInstructions: strInstructions ?? this.strInstructions,
  strMealThumb: strMealThumb ?? this.strMealThumb,
  strTags: strTags ?? this.strTags,
  strYoutube: strYoutube ?? this.strYoutube,
  strIngredient1: strIngredient1 ?? this.strIngredient1,
  strIngredient2: strIngredient2 ?? this.strIngredient2,
  strIngredient3: strIngredient3 ?? this.strIngredient3,
  strIngredient4: strIngredient4 ?? this.strIngredient4,
  strIngredient5: strIngredient5 ?? this.strIngredient5,
  strIngredient6: strIngredient6 ?? this.strIngredient6,
  strIngredient7: strIngredient7 ?? this.strIngredient7,
  strIngredient8: strIngredient8 ?? this.strIngredient8,
  strIngredient9: strIngredient9 ?? this.strIngredient9,
  strIngredient10: strIngredient10 ?? this.strIngredient10,
  strIngredient11: strIngredient11 ?? this.strIngredient11,
  strIngredient12: strIngredient12 ?? this.strIngredient12,
  strIngredient13: strIngredient13 ?? this.strIngredient13,
  strIngredient14: strIngredient14 ?? this.strIngredient14,
  strIngredient15: strIngredient15 ?? this.strIngredient15,
  strIngredient16: strIngredient16 ?? this.strIngredient16,
  strIngredient17: strIngredient17 ?? this.strIngredient17,
  strIngredient18: strIngredient18 ?? this.strIngredient18,
  strIngredient19: strIngredient19 ?? this.strIngredient19,
  strIngredient20: strIngredient20 ?? this.strIngredient20,
  strMeasure1: strMeasure1 ?? this.strMeasure1,
  strMeasure2: strMeasure2 ?? this.strMeasure2,
  strMeasure3: strMeasure3 ?? this.strMeasure3,
  strMeasure4: strMeasure4 ?? this.strMeasure4,
  strMeasure5: strMeasure5 ?? this.strMeasure5,
  strMeasure6: strMeasure6 ?? this.strMeasure6,
  strMeasure7: strMeasure7 ?? this.strMeasure7,
  strMeasure8: strMeasure8 ?? this.strMeasure8,
  strMeasure9: strMeasure9 ?? this.strMeasure9,
  strMeasure10: strMeasure10 ?? this.strMeasure10,
  strMeasure11: strMeasure11 ?? this.strMeasure11,
  strMeasure12: strMeasure12 ?? this.strMeasure12,
  strMeasure13: strMeasure13 ?? this.strMeasure13,
  strMeasure14: strMeasure14 ?? this.strMeasure14,
  strMeasure15: strMeasure15 ?? this.strMeasure15,
  strMeasure16: strMeasure16 ?? this.strMeasure16,
  strMeasure17: strMeasure17 ?? this.strMeasure17,
  strMeasure18: strMeasure18 ?? this.strMeasure18,
  strMeasure19: strMeasure19 ?? this.strMeasure19,
  strMeasure20: strMeasure20 ?? this.strMeasure20,
  strSource: strSource ?? this.strSource,
  strImageSource: strImageSource ?? this.strImageSource,
  strCreativeCommonsConfirmed: strCreativeCommonsConfirmed ?? this.strCreativeCommonsConfirmed,
  dateModified: dateModified ?? this.dateModified,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['idMeal'] = idMeal;
    map['strMeal'] = strMeal;
    map['strDrinkAlternate'] = strDrinkAlternate;
    map['strCategory'] = strCategory;
    map['strArea'] = strArea;
    map['strInstructions'] = strInstructions;
    map['strMealThumb'] = strMealThumb;
    map['strTags'] = strTags;
    map['strYoutube'] = strYoutube;
    map['strIngredient1'] = strIngredient1;
    map['strIngredient2'] = strIngredient2;
    map['strIngredient3'] = strIngredient3;
    map['strIngredient4'] = strIngredient4;
    map['strIngredient5'] = strIngredient5;
    map['strIngredient6'] = strIngredient6;
    map['strIngredient7'] = strIngredient7;
    map['strIngredient8'] = strIngredient8;
    map['strIngredient9'] = strIngredient9;
    map['strIngredient10'] = strIngredient10;
    map['strIngredient11'] = strIngredient11;
    map['strIngredient12'] = strIngredient12;
    map['strIngredient13'] = strIngredient13;
    map['strIngredient14'] = strIngredient14;
    map['strIngredient15'] = strIngredient15;
    map['strIngredient16'] = strIngredient16;
    map['strIngredient17'] = strIngredient17;
    map['strIngredient18'] = strIngredient18;
    map['strIngredient19'] = strIngredient19;
    map['strIngredient20'] = strIngredient20;
    map['strMeasure1'] = strMeasure1;
    map['strMeasure2'] = strMeasure2;
    map['strMeasure3'] = strMeasure3;
    map['strMeasure4'] = strMeasure4;
    map['strMeasure5'] = strMeasure5;
    map['strMeasure6'] = strMeasure6;
    map['strMeasure7'] = strMeasure7;
    map['strMeasure8'] = strMeasure8;
    map['strMeasure9'] = strMeasure9;
    map['strMeasure10'] = strMeasure10;
    map['strMeasure11'] = strMeasure11;
    map['strMeasure12'] = strMeasure12;
    map['strMeasure13'] = strMeasure13;
    map['strMeasure14'] = strMeasure14;
    map['strMeasure15'] = strMeasure15;
    map['strMeasure16'] = strMeasure16;
    map['strMeasure17'] = strMeasure17;
    map['strMeasure18'] = strMeasure18;
    map['strMeasure19'] = strMeasure19;
    map['strMeasure20'] = strMeasure20;
    map['strSource'] = strSource;
    map['strImageSource'] = strImageSource;
    map['strCreativeCommonsConfirmed'] = strCreativeCommonsConfirmed;
    map['dateModified'] = dateModified;
    return map;
  }

}