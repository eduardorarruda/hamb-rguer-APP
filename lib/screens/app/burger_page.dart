// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:haburguer_app/main.dart';

import '../../component/app/variaveis_globais.dart';

class BurgerPage extends StatelessWidget {
  final String name;
  final String image;
  final String description;
  final double price;

  const BurgerPage({
    required this.name,
    required this.image,
    required this.description,
    required this.price,
    super.key,
  });

  void _addPedido(BuildContext context) {
    bool found = false;
    for (var pedido in pedidos) {
      if (pedido['name'] == name) {
        pedido['amount'] += 1;
        pedido['price'] += price;
        found = true;
        break;
      }
    }
    if (!found) {
      pedidos.add({'name': name, 'price': price, 'amount': 1});
    }
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('$name adicionado ao carrinho!'),
        duration: const Duration(seconds: 2),
      ),
    );
    print(pedidos);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
              child: Image.asset("assets/img/logo.png"),
            ),
            Expanded(
              child: Text(
                name,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                image,
                height: 400,
                width: 450,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                color: principal,
                borderRadius: BorderRadius.all(Radius.circular(40)),
              ),
              child: Column(
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: branco,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      description,
                      textAlign: TextAlign.start,
                      style: const TextStyle(fontSize: 18, color: branco),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "R\$ $price",
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: branco),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () => _addPedido(context),
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: const BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Row(
          children: [
            Spacer(),
            IconButton(
              onPressed: null,
              icon: Icon(Icons.add_alert),
              color: branco,
            ),
            Spacer(),
            Spacer(),
            IconButton(
              onPressed: null,
              icon: Icon(Icons.turned_in),
              color: branco,
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
