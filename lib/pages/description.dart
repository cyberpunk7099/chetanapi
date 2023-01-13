import 'dart:convert';

import 'package:chetanapi/models/Meal.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:chetanapi/pages/home.dart';



class Description extends StatefulWidget {
  const Description({Key? key}) : super(key: key);

  @override
  State<Description> createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  @override
  // void initState() {
  //   super.initState();
  //   fetchData();
  // }

  Future<Meal> fetchData() async{

    final response = await http.get(Uri.parse('https://www.themealdb.com/api/json/v1/1/search.php?s=Arrabiata'));
    var data = jsonDecode(response.body.toString());
    if(response.statusCode == 200){
      return Meal.fromJson(data);
    } else {
      return Meal.fromJson(data);
    }
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Text("Spicy Arrabiata Penne"),
      ),
      body: Column(
          children: [
            Expanded(
              child: FutureBuilder<Meal>(
                future: fetchData(),
                builder: (context , snapshot){
                  if(snapshot.hasData){
                    return ListView.builder(
                      itemCount: snapshot.data!.meals!.length,
                      itemBuilder: (context , index){
                        return SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.height * 0.5,
                                child: Image(
                                  image: NetworkImage(snapshot.data!.meals![index].strMealThumb.toString()),
                                ),
                              ),
                              const Text("Ingredients:-",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,

                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("${snapshot.data!.meals![index].strIngredient1}"
                                    " - ${snapshot.data!.meals![index].strMeasure1}"
                                    "\n${snapshot.data!.meals![index].strIngredient2}"
                                    " - ${snapshot.data!.meals![index].strMeasure2}"
                                    "\n${snapshot.data!.meals![index].strIngredient3}"
                                    " - ${snapshot.data!.meals![index].strMeasure3}"
                                    "\n${snapshot.data!.meals![index].strIngredient4}"
                                    " - ${snapshot.data!.meals![index].strMeasure4}"
                                    "\n${snapshot.data!.meals![index].strIngredient5}"
                                    " - ${snapshot.data!.meals![index].strMeasure5}"
                                    "\n${snapshot.data!.meals![index].strIngredient6}"
                                    " - ${snapshot.data!.meals![index].strMeasure6}"
                                    "\n${snapshot.data!.meals![index].strIngredient7}"
                                    " - ${snapshot.data!.meals![index].strMeasure7}"
                                    "\n${snapshot.data!.meals![index].strIngredient8}"
                                    " - ${snapshot.data!.meals![index].strMeasure8}"

                                  ,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                    //fontStyle: FontStyle.italic,
                                   // decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                              const Text("Instructions:-",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,

                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(snapshot.data!.meals![index].strInstructions.toString(),
                                  style: const TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,

                                  ),
                                ),
                              ),




                            ],
                          ),
                        );

                      },
                    );

                  }else {
                    return Center(
                      child: CircularProgressIndicator(
                        backgroundColor: Colors.grey[200],
                        valueColor: const AlwaysStoppedAnimation<Color>(Colors.blue),
                      ),
                    );
                  }

                },
              ),
            ),
          ]
      ),

    );
  }
}
