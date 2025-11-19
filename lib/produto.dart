import 'package:flutter/material.dart';
import 'produtocard.dart';
import 'main.dart';
import 'categoria.dart';

class ProdutoPage extends StatelessWidget {
  const ProdutoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          endDrawer: Drawer(
        child: Builder(
          builder: (context) => Column(
            children: [
              SizedBox(height: 30),
              ListTile(
                title: Text(
                  'Feminino',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                trailing: Icon(Icons.arrow_forward_ios_rounded, color: Colors.black),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => CategoriaPage()),
                  );
                },
              ),
              SizedBox(height: 10),
              ListTile(
                title: Text(
                  'Masculino',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                trailing: Icon(Icons.arrow_forward_ios_rounded, color: Colors.black),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => CategoriaPage()),
                  );
                },
              ),
              SizedBox(height: 10),
              ListTile(
                title: Text(
                  'Esporte',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                trailing: Icon(Icons.arrow_forward_ios_rounded, color: Colors.black),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => CategoriaPage()),
                  );
                },
              ),
              SizedBox(height: 10),
              ListTile(
                title: Text(
                  'Infantil',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                trailing: Icon(Icons.arrow_forward_ios_rounded, color: Colors.black),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => CategoriaPage()),
                  );
                },
              ),
              SizedBox(height: 10),
              ListTile(
                title: Text(
                  'Marcas',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                trailing: Icon(Icons.arrow_forward_ios_rounded, color: Colors.black),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => CategoriaPage()),
                  );
                },
              ),
            ],
          ),
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
                      MouseRegion(
                        cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(builder: (context) => VirtusApp()),
                            );
                          },
                        child: Image.asset(
                          'assets/img/logo.png',
                          height: 32,
                        ),
                      ),
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
                    'Top Adidas Suporte Leve Colorblock Feminino - Roxo',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'Tipo: Roupa',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    'Especificação: Roupa Feminina',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'R\$ 153,42 à vista ou',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),        
                  Text(
                    'R\$ 161,49 em até 2x sem juros',
                    style: TextStyle(fontSize: 14),
                  ),

                  SizedBox(height: 30),

                  Container(
                    width: double.infinity,
                    height: 300,
                    child: Image.asset(
                    'img/produto1.1.jpg',
                    fit: BoxFit.cover,
                    ),
                  ),

                  SizedBox(height: 30),
                  
                  Container(
                    width: 100,
                    height: 100,
                    child: Image.asset(
                    'img/produto1.2.jpg',
                    fit: BoxFit.cover,
                    ),
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
                    imagem: 'img/produto3.1.jpg',
                    descricao: 'Calça Legging Adidas Essentials 3 Listras Feminina - Preto+Branco',
                    precoVista: 'R\$ 161,91 à vista',
                    precoParcelado: 'R\$ 179,90 em até 2x sem juros',
                  ),
                  ProdutoCard(
                    imagem: 'img/produto4.1.jpg',
                    descricao: 'Camisa Palmeiras III 25/26 s/n Torcedor Puma Masculina - Amarelo',
                    precoVista: 'R\$ 380,00 à vista',
                    precoParcelado: 'R\$ 400,00 em até 5x sem juros',
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
                    imagem: 'img/produto5.1.jpg',
                    descricao: 'Camisa Flamengo III 25/26 Torcedor Adidas Masculina - Off White',
                    precoVista: 'R\$ 380,00 à vista',
                    precoParcelado: 'R\$ 400,00 em até 5x sem juros',
                  ),
                  ProdutoCard(
                    imagem: 'img/produto6.1.jpg',
                    descricao: 'Chuteira Nike Zoom Vapor 15 Academy Infantil Futsal - Rosa',
                    precoVista: 'R\$ 237,49 à vista',
                    precoParcelado: 'R\$ 249,99 em até 3x sem juros',
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
                    imagem: 'img/produto7.1.jpg',
                    descricao: 'Chuteira Campo Adidas Predator 24 0 Unissex - Roxo',
                    precoVista: 'R\$ 959,99 à vista',
                    precoParcelado: 'R\$ 999,99 em até 10x sem juros',
                  ),
                  ProdutoCard(
                    imagem: 'img/produto8.1.jpg',
                    descricao: 'Tênis Asics Gel Rebound Unissex 2025 - Azul e Branco  ',
                    precoVista: 'R\$ 284,90 à vista',
                    precoParcelado: 'R\$ 299,90 em até 2x sem juros',
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
                    imagem: 'img/produto1.1.jpg',
                    descricao: 'Top Adidas Suporte Leve Colorblock Feminino - Roxo',
                    precoVista: 'R\$ 153,42 à vista',
                    precoParcelado: 'R\$ 161,49 em até 2x sem juros',
                  ),
                  ProdutoCard(
                    imagem: 'img/produto2.1.jpg',
                    descricao: 'Top Nike Dri-FIT Swoosh Bra Média Sustentação - Preto+Branco',
                    precoVista: 'R\$ 139,99 à vista',
                    precoParcelado: 'R\$ 147,36 em até 2x sem juros',
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
                              'Endereço: Rua Camândulas n°112',
                              style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              'Telefone: +55 (11)991103232',
                              style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              'Email: virtuscomercio3@gmail.com',
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
