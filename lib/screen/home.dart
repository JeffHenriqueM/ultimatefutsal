import 'package:flutter/material.dart';
import 'package:ultimatefutsal/widgets/app_bar_customizado.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarCustomizado(titulo: 'Ultimate Futsal'),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              return SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: FittedBox(
                  fit: BoxFit
                      .fill, // Preenche o container sem manter a proporção
                  child: Image.asset(
                    orientation == Orientation.portrait
                        ? 'assets/imagem_cel.jpg'
                        : 'assets/imagem_web.jpg',
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
