// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

import 'package:haburguer_app/main.dart';
import '../../screens/app/burger_page.dart';

class hamburguerList extends StatefulWidget {
  final int items;
  final List<double> prices;
  final List<String> names;
  final List<String> images;
  final List<String> description;

  const hamburguerList({
    super.key,
    required this.items,
    required this.prices,
    required this.names,
    required this.images,
    required this.description,
  });

  @override
  State<hamburguerList> createState() => _hamburguerListState();
}

class _hamburguerListState extends State<hamburguerList> {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: 240,
        margin: const EdgeInsets.only(top: 10),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: widget.items,
          itemBuilder: (context, index) {
            String name = widget.names[index % widget.names.length];
            String image = widget.images[index % widget.images.length];
            double price = widget.prices[index % widget.prices.length];
            String description =
                widget.description[index % widget.description.length];
            return Stack(
              children: [
                Container(
                  height: 240,
                  width: 250,
                  margin: EdgeInsets.only(
                      left: 20, right: index == widget.items - 1 ? 20 : 0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => BurgerPage(
                          name: name,
                          image: image,
                          description: description,
                          price: price,
                        ),
                      ));
                    },
                    child: Card(
                      color: principal,
                      elevation: 3,
                      margin: const EdgeInsets.all(10),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(45),
                          bottomRight: Radius.circular(15),
                          topLeft: Radius.circular(45),
                          topRight: Radius.circular(45),
                        ),
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 20, left: 10, right: 10),
                        child: Column(
                          children: [
                            Text(
                              name,
                              textAlign: TextAlign.center,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            const Spacer(),
                            Row(
                              children: [
                                const Spacer(),
                                Text(
                                  "R\$ ${price.toStringAsFixed(2)}",
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Spacer(),
                                SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: const Icon(
                                      Icons.add,
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.center,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => BurgerPage(
                            name: name,
                            image: image,
                            description: description,
                            price: price,
                          ),
                        ));
                      },
                      child: Container(
                        height: 120,
                        width: 200,
                        margin: const EdgeInsets.only(left: 20),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            image,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
