import 'package:flutter/material.dart';

import 'variaveis_globais.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int currentSelectedItem = 0;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: 140,
        margin: const EdgeInsets.only(top: 10),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: Menu.length,
          itemBuilder: (context, index) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    currentSelectedItem = index;
                  });
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(Menu[index]["title"]),
                      duration: const Duration(seconds: 2),
                    ),
                  );
                },
                child: Container(
                  height: 90,
                  width: 90,
                  margin: EdgeInsets.only(left: index == 0 ? 20 : 0, right: 20),
                  child: Card(
                    color: index == currentSelectedItem
                        ? Colors.black.withOpacity(0.7)
                        : Colors.white,
                    elevation: 3,
                    margin: const EdgeInsets.all(10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    child: Icon(
                      Icons.fastfood,
                      color: index == currentSelectedItem
                          ? Colors.white
                          : Colors.black.withOpacity(0.7),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 90,
                child: Text(
                  Menu[index]["title"],
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: index == currentSelectedItem
                        ? Colors.black
                        : Colors.black.withOpacity(0.7),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
