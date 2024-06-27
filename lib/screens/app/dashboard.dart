// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

import '../../component/app/bar.dart';
import '../../component/app/variaveis_globais.dart';
import '../../main.dart';
import '/component/app/categories.dart';
import '../../component/app/hamburguer.dart';

class Hamberger extends StatefulWidget {
  const Hamberger({super.key});

  @override
  State<Hamberger> createState() => _HambergerState();
}

class _HambergerState extends State<Hamberger> {
  void _showCart() {
    double total = pedidos.fold(0, (sum, item) => sum + item['price']);

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Pedidos'),
          content: SizedBox(
            width: double.maxFinite,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: pedidos.length,
              itemBuilder: (BuildContext context, int index) {
                final pedido = pedidos[index];
                return ListTile(
                  title: Text(pedido['name']),
                  subtitle:
                      Text('R\$ ${pedido['price']} x ${pedido['amount']}'),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () {
                      setState(() {
                        pedidos.removeAt(index);
                      });
                      Navigator.of(context).pop();
                      _showCart();
                    },
                  ),
                );
              },
            ),
          ),
          actions: [
            Text('Total: R\$ $total',
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            TextButton(
              child: const Text('Finalizar Pedido'),
              onPressed: () {
                setState(() {
                  pedidosFinalizados.addAll(
                    pedidos.map((pedido) => {
                          ...pedido,
                          'numeroPedido': numeroPedido,
                        }),
                  );

                  pedidos.clear();
                  numeroPedido++;
                });
                Navigator.of(context).pop();

                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Pedido finalizado com sucesso!'),
                  ),
                );
              },
            ),
            TextButton(
              child: const Text('Fechar'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: branco),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
              child: Image.asset("assets/img/logo.png"),
            ),
            const Text(
              "ABACAXIZEIRO",
              style: TextStyle(color: branco),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: _showCart,
            icon: const Icon(
              Icons.shopping_cart,
              color: branco,
            ),
          ),
        ],
      ),
      backgroundColor: branco,
      drawer: const MyDrawer(),
      body: CustomScrollView(
        slivers: [
          const Categories(),
          ...Menu.expand((section) => [
                _buildSectionTitle(section['title']),
                hamburguerList(
                  items: section['items'],
                  prices: List<double>.from(section['prices']),
                  names: List<String>.from(section['names']),
                  images: List<String>.from(section['images']),
                  description: List<String>.from(section['descriptions']),
                ),
              ])
        ],
      ),
    );
  }

  SliverToBoxAdapter _buildSectionTitle(String title) {
    return SliverToBoxAdapter(
      child: Container(
        margin: const EdgeInsets.only(left: 50, top: 30),
        child: Text(
          title,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
