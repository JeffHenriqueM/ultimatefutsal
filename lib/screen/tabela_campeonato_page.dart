import 'package:flutter/material.dart';
import 'dart:convert';

class TabelaCampeonatoPage extends StatelessWidget {
  final String jsonData = '''
    [
      {"time": "Time A", "logo": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRODvqksjkqMma8Jt6htFS3uVtM4ouR1BsaKQ&s", "pontos": 30, "vitorias": 10, "derrotas": 2, "empates": 0, "golsFeitos": 35, "golsSofridos": 15},
      {"time": "Time B", "logo": "https://images-americanas.b2w.io/produtos/01/00/img/1512755/3/1512755394_1SZ.jpg", "pontos": 25, "vitorias": 8, "derrotas": 3, "empates": 1, "golsFeitos": 28, "golsSofridos": 20},
      {"time": "Time C", "logo": "data:image/png;base64,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", "pontos": 20, "vitorias": 6, "derrotas": 4, "empates": 2, "golsFeitos": 22, "golsSofridos": 18}
    ]
  ''';

  @override
  Widget build(BuildContext context) {
    final List<dynamic> dados = json.decode(jsonData);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Tabela do Campeonato'),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              return SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: ConstrainedBox(
                  constraints: BoxConstraints(minWidth: constraints.maxWidth),
                  child: DataTable(
                    columnSpacing: constraints.maxWidth < 600 ? 10 : 20,
                    dataRowHeight: constraints.maxWidth < 600 ? 40 : 56,
                    headingRowHeight: 56,
                    columns: const [
                      DataColumn(label: Text('')), // Coluna vazia para a logo
                      DataColumn(label: Text('Time')),
                      DataColumn(label: Text('Pontos')),
                      DataColumn(label: Text('Vitórias')),
                      DataColumn(label: Text('Derrotas')),
                      DataColumn(label: Text('Empate')),
                      DataColumn(label: Text('Gols Feitos')),
                      DataColumn(label: Text('Gols Sofridos')),
                      DataColumn(label: Text('Saldo de Gols')),
                    ],
                    rows: dados.map((item) {
                      return DataRow(cells: [
                        DataCell(
                          Image.network(
                            item['logo'],
                            height: 30,
                            width: 30,
                          ),
                        ),
                        DataCell(Text(item['time'])),
                        DataCell(Text(item['pontos'].toString())),
                        DataCell(Text(item['vitorias'].toString())),
                        DataCell(Text(item['derrotas'].toString())),
                        DataCell(Text(item['empates'].toString())),
                        DataCell(Text(item['golsFeitos'].toString())),
                        DataCell(Text(item['golsSofridos'].toString())),
                        DataCell(Text(
                            (item['golsFeitos'] - item['golsSofridos'])
                                .toString())),
                      ]);
                    }).toList(),
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
