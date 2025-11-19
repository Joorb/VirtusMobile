import 'package:flutter/material.dart';
import 'produto.dart';

class CategoriaPage extends StatelessWidget {
  const CategoriaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(35, 35, 35, 1),
        iconTheme: IconThemeData(color: Colors.white),
        title: Text('Categorias', style: TextStyle(color: Colors.white)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),

            // Exemplo de categorias como botões/clickables
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  CategoriaCard(
                    titulo: 'Feminino',
                    onTap: () {
                      // aqui você pode ir para a lista de produtos da categoria
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProdutoPage()),
                      );
                    },
                  ),
                  SizedBox(height: 16),
                  CategoriaCard(
                    titulo: 'Masculino',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProdutoPage()),
                      );
                    },
                  ),
                  SizedBox(height: 16),
                  CategoriaCard(
                    titulo: 'Esporte',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProdutoPage()),
                      );
                    },
                  ),
                  SizedBox(height: 16),
                  CategoriaCard(
                    titulo: 'Infantil',
                    onTap: () {},
                  ),
                  SizedBox(height: 16),
                  CategoriaCard(
                    titulo: 'Marcas',
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class CategoriaCard extends StatelessWidget {
  final String titulo;
  final VoidCallback onTap;

  const CategoriaCard({
    super.key,
    required this.titulo,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Color.fromRGBO(248, 247, 247, 1),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Color.fromRGBO(179, 177, 177, 1)),
        ),
        child: Text(
          titulo,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
