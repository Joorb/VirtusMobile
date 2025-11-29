import 'package:flutter/material.dart';
import '../produtocard.dart';
import '../produtoclass.dart';

Widget exibirprod(List<Produto> lista) {
  List<Widget> rows = [];

  for (int i = 0; i < lista.length; i += 2) {
    rows.add(
      Padding(
        padding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ProdutoCard(produto: lista[i]),
            if (i + 1 < lista.length)
              ProdutoCard(produto: lista[i + 1]),
          ],
        ),
      ),
    );
  }

  return Column(children: rows);
}
