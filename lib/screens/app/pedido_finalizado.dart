import 'package:flutter/material.dart';
import 'package:haburguer_app/main.dart';

import '../../component/app/variaveis_globais.dart';

class FinalizedOrdersScreen extends StatelessWidget {
  const FinalizedOrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: branco,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Pedidos Finalizados",
          style: TextStyle(color: branco),
        ),
      ),
      body: ListView.builder(
        itemCount: pedidosFinalizados.length,
        itemBuilder: (BuildContext context, int index) {
          final pedido = pedidosFinalizados[index];
          return ListTile(
            title: Text(pedido['name']),
            subtitle: Text('R\$ ${pedido['price']} x ${pedido['amount']}'),
            trailing: Text('Pedido nº ${pedido['numeroPedido']}'),
          );
        },
      ),
    );
  }
}
