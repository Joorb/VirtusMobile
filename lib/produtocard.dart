import 'package:flutter/material.dart';
import 'produto.dart'; // Sua página de produto

class ProdutoCard extends StatelessWidget {
  final String imagem;
  final String descricao;
  final String precoVista;
  final String precoParcelado;

  const ProdutoCard({
    super.key,
    required this.imagem,
    required this.descricao,
    required this.precoVista,
    required this.precoParcelado,
  });

  @override
  Widget build(BuildContext context) {
  return MouseRegion(
  cursor: SystemMouseCursors.click, // muda o cursor para "mãozinha"
  child: GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ProdutoPage()),
      );
    },
      child: Container(
        width: 210,
        decoration: BoxDecoration(
          border: Border.all(
            color: Color.fromRGBO(179, 177, 177, 1),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
              child: SizedBox(
                width: 210,
                height: 180,
                child: Image.asset(
                  imagem,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Container(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      descricao,
                      style: TextStyle(
                        fontSize: 15
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      precoVista,
                      style: TextStyle(
                        color: Color.fromRGBO(9, 11, 84, 1),
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      precoParcelado,
                      style: TextStyle(
                        fontSize: 12
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
    );
  }
}
