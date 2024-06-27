// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

import '../../main.dart';
import '../../screens/app/pedido_finalizado.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: principal,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 80),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 70,
                  child: Image.asset("assets/img/logo.png"),
                ),
                const Text(
                  "ABACAXIZEIRO",
                  style: TextStyle(
                      color: branco, fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FinalizedOrdersScreen(),
                  ),
                );
              },
              child: const Text(
                "Pedidos finalizados",
                style: TextStyle(color: branco),
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {},
              child: const Text(
                "Valores",
                style: TextStyle(color: branco),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
