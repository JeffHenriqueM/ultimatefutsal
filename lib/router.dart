import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ultimatefutsal/screen/cadastro_page.dart';
import 'package:ultimatefutsal/screen/login_page.dart';

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
      path: '/login',
      builder: (BuildContext context, GoRouterState state) {
        return LoginPage();
      },
    ),
    GoRoute(
      path: '/cadastro',
      builder: (BuildContext context, GoRouterState state) {
        return CadastroPage();
      },
    ),
  ],
);
