import 'package:chetanapi/models/Meal.dart';
import 'package:chetanapi/pages/description.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';




class MyHomepage extends StatefulWidget {
  const MyHomepage({Key? key}) : super(key: key);

  @override
  State<MyHomepage> createState() => _MyHomepage();
}

class _MyHomepage extends State<MyHomepage> {
  Future<Meal> fetchData() async {
    final response = await http.get(Uri.parse(
        'https://www.themealdb.com/api/json/v1/1/search.php?s=Arrabiata'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      return Meal.fromJson(data);
    } else {
      return Meal.fromJson(data);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recipe'),
      ),
      body: Column(children: [
        Expanded(
          child: FutureBuilder<Meal>(
            future: fetchData(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                  itemCount: snapshot.data!.meals!.length,
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                    decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.redAccent,
                      width: 2,
                    ),),
                            child: ListTile(
                              leading: CircleAvatar(
                                backgroundImage: NetworkImage(snapshot.data!.meals![index].strMealThumb.toString()),
                              ),
                              title: Text(snapshot
                                  .data!.meals![index].strMeal
                                  .toString()),
                              subtitle: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(snapshot
                                        .data!.meals![index].strCategory
                                        .toString()),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(snapshot
                                        .data!.meals![index].strArea
                                        .toString()),
                                  ),
                                ],
                              ),

                              onTap: () {

                                Get.to(Description());
                              },
                            ),
                          ),
                        )
                      ],
                    );
                  },
                );
              } else {
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
      ]),
    );
  }
}
