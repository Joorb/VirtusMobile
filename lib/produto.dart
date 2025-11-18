import 'package:flutter/material.dart';
import 'produtocard.dart';

class ProdutoPage extends StatelessWidget {
  const ProdutoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            endDrawer: Drawer(
        child: Column(
          children: [
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Feminino',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600
                  ),
                ),
                SizedBox(width: 30),
                IconButton(
                  onPressed: () {
                    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ProdutoPage()),
    );
                  },
                  icon: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.black,
                  )
                )
                ]
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Masculino',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600
                  ),
                ),
                SizedBox(width: 30),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.black,
                  )
                )
                ]
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Esporte',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600
                  ),
                ),
                SizedBox(width: 30),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.black,
                  )
                )
                ]
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Infantil',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600
                  ),
                ),
                SizedBox(width: 30),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.black,
                  )
                )
                ]
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Marcas',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600
                  ),
                ),
                SizedBox(width: 30),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.black,
                  )
                )
                ]
            ),
          ],
        ),
      ),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(150),
        child: AppBar(
          automaticallyImplyLeading: false,
            iconTheme: IconThemeData(
            color: Color.fromRGBO(35, 35, 35, 1),
            ),
          backgroundColor: const Color.fromRGBO(35, 35, 35, 1),
          flexibleSpace: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/img/logo.png',
                        height: 32,
                      ),
                      Row(
                        children: [
                          Icon(Icons.person_outline, color: Colors.white),
                          SizedBox(width: 12),
                          Icon(Icons.shopping_bag_outlined, color: Colors.white),
                          SizedBox(width: 12),
                          Builder(
                            builder: (context) {
                              return IconButton(
                                icon: Icon(Icons.menu, color: Colors.white),
                                onPressed: () {
                                  Scaffold.of(context).openEndDrawer();
                                },
                              );
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'O que você está procurando?',
                      suffixIcon: const Icon(Icons.search, color: Colors.black),
                      hintStyle: const TextStyle(
                        color: Color.fromRGBO(86, 86, 86, 1),
                      ),
                      fillColor: const Color.fromRGBO(248, 247, 247, 1),
                      filled: true,
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 0,
                        horizontal: 12,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30),
                  Text(
                    'Nome do Produto',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'Tipo do produto',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec molestie sem met',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'R\$ xxx,xx à vista ou',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),        
                  Text(
                    'R\$ xxx,xx parcelado em até x vezes',
                    style: TextStyle(fontSize: 14),
                  ),

                  SizedBox(height: 30),

                  Container(
                    width: double.infinity,
                    height: 300,
                    child: Image.asset(
                    'img/produto.jpg',
                    fit: BoxFit.cover,
                    ),
                  ),

                  SizedBox(height: 30),
                  
                  Container(
                    width: 100,
                    height: 100,
                    color: Color.fromRGBO(140, 140, 140, 1),
                  )
                ],
              ),
            ),

            Padding(
                padding: const EdgeInsets.fromLTRB(12, 60, 0, 0),
                child: Row(
                  children: [
                    Text(
                      'Os mais vendidos',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                  ]
                )
            ),
            
            SizedBox(height: 30),

            Padding(
              padding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  ProdutoCard(
                    imagem: 'img/produto.jpg',
                    descricao: 'Produto 1',
                    precoVista: 'R\$ 100,00 à vista',
                    precoParcelado: 'R\$ 10,00 parcelado em até x vezes',
                  ),
                  ProdutoCard(
                    imagem: 'img/produto.jpg',
                    descricao: 'Produto 2',
                    precoVista: 'R\$ 150,00 à vista',
                    precoParcelado: 'R\$ 15,00 parcelado em até x vezes',
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  ProdutoCard(
                    imagem: 'img/produto.jpg',
                    descricao: 'Produto 1',
                    precoVista: 'R\$ 100,00 à vista',
                    precoParcelado: 'R\$ 10,00 parcelado em até x vezes',
                  ),
                  ProdutoCard(
                    imagem: 'img/produto.jpg',
                    descricao: 'Produto 2',
                    precoVista: 'R\$ 150,00 à vista',
                    precoParcelado: 'R\$ 15,00 parcelado em até x vezes',
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  ProdutoCard(
                    imagem: 'img/produto.jpg',
                    descricao: 'Produto 1',
                    precoVista: 'R\$ 100,00 à vista',
                    precoParcelado: 'R\$ 10,00 parcelado em até x vezes',
                  ),
                  ProdutoCard(
                    imagem: 'img/produto.jpg',
                    descricao: 'Produto 2',
                    precoVista: 'R\$ 150,00 à vista',
                    precoParcelado: 'R\$ 15,00 parcelado em até x vezes',
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  ProdutoCard(
                    imagem: 'img/produto.jpg',
                    descricao: 'Produto 1',
                    precoVista: 'R\$ 100,00 à vista',
                    precoParcelado: 'R\$ 10,00 parcelado em até x vezes',
                  ),
                  ProdutoCard(
                    imagem: 'img/produto.jpg',
                    descricao: 'Produto 2',
                    precoVista: 'R\$ 150,00 à vista',
                    precoParcelado: 'R\$ 15,00 parcelado em até x vezes',
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  ProdutoCard(
                    imagem: 'img/produto.jpg',
                    descricao: 'Produto 1',
                    precoVista: 'R\$ 100,00 à vista',
                    precoParcelado: 'R\$ 10,00 parcelado em até x vezes',
                  ),
                  ProdutoCard(
                    imagem: 'img/produto.jpg',
                    descricao: 'Produto 2',
                    precoVista: 'R\$ 150,00 à vista',
                    precoParcelado: 'R\$ 15,00 parcelado em até x vezes',
                  ),
                ],
              ),
            ),

            SizedBox(height: 100),

            Container(
                  width: double.infinity,
                  color: Color.fromRGBO(35, 35, 35, 1),
                  child: Padding(padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                    child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Redes sociais',
                        style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontSize: 16,
                        ),
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'img/fyoutube.png',
                            width: 25,
                          ),
                          SizedBox(width: 5),
                          Image.asset(
                            'img/finstagram.png',
                            width: 25,
                          ),
                          SizedBox(width: 5),
                          Image.asset(
                            'img/ftiktok.png',
                            width: 25,
                          ),
                        ],
                      ),
                      Padding(padding: const EdgeInsets.fromLTRB(0, 25, 0, 25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Endereço: blablabla blabla',
                              style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              'Telefone: xxxxxxxx',
                              style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              'Email: blablabla@gmail.com',
                              style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontSize: 14,
                              ),
                            ),
                          ]
                        )
                      ),
                      Text(
                        'Formas de Pagamento',
                        style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 1),
                      Row(
                      children: [
                        Container(
                          width: 40,
                          height: 20,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(217, 217, 217, 1),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Image.asset(
                            'img/fp1.png',
                          ),
                        ),
                        SizedBox(width:8),
                        Container(
                          width: 40,
                          height: 20,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(217, 217, 217, 1),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Image.asset(
                            'img/fp2.png',
                          ),
                        ),
                        SizedBox(width:8),
                        Container(
                          width: 40,
                          height: 20,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(217, 217, 217, 1),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Image.asset(
                            'img/fp3.png',
                          ),
                        ),
                        SizedBox(width:8),
                        Container(
                          width: 40,
                          height: 20,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(217, 217, 217, 1),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Image.asset(
                            'img/fp4.png',
                          ),
                        ),
                        SizedBox(width:8),
                        Container(
                          width: 40,
                          height: 20,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(217, 217, 217, 1),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Image.asset(
                            'img/fp5.png',
                          ),
                        )
                      ]
                      ),

                      SizedBox(height: 30),
                                        

                    ]
                    )
                )
              ),

              Container(
                width: double.infinity,
                height: 1,
                color: Color.fromRGBO(255, 255, 255, 1),
              ),
              
              Container(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                width: double.infinity,
                color: Color.fromRGBO(35, 35, 35, 1),
                alignment: Alignment.center,
                child: Text(
                  '© 2025 Virtus. Todos os direitos reservados.',
                  style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontSize: 12
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
