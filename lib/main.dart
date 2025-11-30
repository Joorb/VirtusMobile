import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'produtocard.dart';
import 'categoria.dart';
import 'produtoclass.dart';
import 'widget/exibirprod.dart';

void main() {
  runApp(const VirtusApp());
}

List<Produto> produto = [];
List<Produto> maisVendidos = produto.take(4).toList();
List<Produto> lancamentos = produto.skip(4).take(4).toList();
List<Produto> recomendados = produto.skip(8).take(4).toList();



class VirtusApp extends StatefulWidget {
  const VirtusApp({super.key});

  @override
  State<VirtusApp> createState() => _VirtusAppState();
}

class _VirtusAppState extends State<VirtusApp> {
  Future<List<Produto>> loadProdutos() async {
    final String response = await rootBundle.loadString('assets/produto.json');
    Iterable data = json.decode(response);
    return List<Produto>.from(data.map((model) => Produto.fromJson(model)));
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: loadProdutos(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return MaterialApp(
            home: Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            ),
          );
        }

        produto = snapshot.data!;


        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomePage(
                listaMaisVendidos: maisVendidos,
                listaLancamentos: lancamentos,
                listaRecomendados: recomendados,
          ),
        );
      },
    );
  }
}

class HomePage extends StatelessWidget {
  
  final List<Produto> listaMaisVendidos;
  final List<Produto> listaLancamentos;
  final List<Produto> listaRecomendados;

  const HomePage({
    Key? key,
    required this.listaMaisVendidos,
    required this.listaLancamentos,
    required this.listaRecomendados,
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
     return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
                    MaterialPageRoute(builder: (context) => CategoriaPage(especificacao: "Feminino")),
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
                    MaterialPageRoute(builder: (context) => CategoriaPage(especificacao: "Masculino")),
                  );
                },
              ),
              SizedBox(height: 10),
              ListTile(
                title: Text(
                  'Unissex',
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
                    MaterialPageRoute(builder: (context) => CategoriaPage(especificacao: "Unissex")),
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
                    MaterialPageRoute(builder: (context) => CategoriaPage(especificacao: "Infantil")),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
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
              Container(
                width: double.infinity,
                color: Colors.grey.shade400,
                child: Image.asset(
                  'img/principal.png',
                  fit: BoxFit.cover,
                ),
              ),


              Padding(
                padding: const EdgeInsets.fromLTRB(12, 50, 0, 0),
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

              exibirprod(listaMaisVendidos),

              SizedBox(height: 50),
            
              Padding(padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Container(
                  width: 280,
                  height: 360,
                  color: Color.fromRGBO(113, 113, 113, 1),
                  child: SizedBox(
                    width: 280,
                    height: 320,
                    child: Image.asset(
                      'img/colecao1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              ),

              Padding(padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Container(
                  width: 280,
                  height: 360,
                  color: Color.fromRGBO(113, 113, 113, 1),
                  child: SizedBox(
                    width: 280,
                    height: 320,
                    child: Image.asset(
                      'img/colecao2.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              ),

              Padding(padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Container(
                  width: 280,
                  height: 360,
                  color: Color.fromRGBO(113, 113, 113, 1),
                  child: SizedBox(
                    width: 280,
                    height: 320,
                    child: Image.asset(
                      'img/colecao3.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              ),

              SizedBox(height: 20),

              Padding(
                padding: const EdgeInsets.fromLTRB(12, 50, 0, 0),
                child: Row(
                  children: [
                    Text(
                      'Você pode gostar',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                  ]
                )
              ),

              SizedBox(height: 30),

              exibirprod(listaRecomendados),

              SizedBox(height: 30),

              Padding(
                padding: const EdgeInsets.fromLTRB(12, 50, 0, 0),
                child: Row(
                  children: [
                    Text(
                      'Lançamentos',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                  ]
                )
              ),

              SizedBox(height: 30),

              exibirprod(listaLancamentos),

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
                      SizedBox(height: 5),
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
      ),
     );
  }
}
