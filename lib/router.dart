import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// Importe as páginas que você quer adicionar às rotas
import 'screen/home.dart';

final GoRouter router = GoRouter(
  routes: <GoRoute>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const Home();
      },
    ),
    GoRoute(
      path: '/sobre',
      builder: (BuildContext context, GoRouterState state) {
        return const Home();
      },
    ),
  ],
);
