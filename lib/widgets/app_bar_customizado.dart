import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppBarCustomizado extends StatelessWidget implements PreferredSizeWidget {
  final String titulo;

  const AppBarCustomizado({super.key, required this.titulo});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        titulo,
        style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
      actions: [
        IconButton(
          icon: const Icon(Icons.person),
          onPressed: () {
            context.go('/login');
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
