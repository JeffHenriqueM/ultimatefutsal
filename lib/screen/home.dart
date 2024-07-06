import 'package:flutter/foundation.dart'; // Importar foundation para detecção de plataforma
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        // Use LayoutBuilder para obter informações sobre o layout
        builder: (BuildContext context, BoxConstraints constraints) {
          // Verifica se a plataforma é web ou mobile
          bool isWeb = kIsWeb;
          bool isMobile = !isWeb &&
              (defaultTargetPlatform == TargetPlatform.android ||
                  defaultTargetPlatform == TargetPlatform.iOS);

          return Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  isMobile
                      ? 'assets/imagem_mobile.jpg'
                      : 'assets/imagem_web.jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}
