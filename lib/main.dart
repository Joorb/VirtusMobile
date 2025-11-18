import 'package:flutter/material.dart';

void main() {
  runApp(const VirtusApp());
}

class VirtusApp extends StatelessWidget {
  const VirtusApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: const Color.fromRGBO(35, 35, 35, 1),
                child: SafeArea(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              'assets/img/logo.png',
                              height: 32,
                            ),

                            Row(
                              children: const [
                                Icon(Icons.person_outline, color: Colors.white),
                                SizedBox(width: 12),
                                Icon(Icons.shopping_bag_outlined, color: Colors.white),
                                SizedBox(width: 12),
                                Icon(Icons.menu, color: Colors.white),
                              ],
                            ),
                          ],
                        ),
                      ),


                      Padding(
                        padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'O que você está procurando?',
                            suffixIcon: const Icon(Icons.search, color: Colors.black,),
                            hintStyle: const TextStyle(color: Color.fromRGBO(86, 86, 86, 1)),
                            fillColor: Color.fromRGBO(248, 247, 247, 1),
                            filled: true,
                            contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 12),
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

              Padding(
                padding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 230,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color.fromRGBO(179, 177, 177, 1),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child:Column(
                          children: [

                            ClipRRect(
                              borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                            child: SizedBox(
                              width: 230,
                              height: 190,
                              child: Image.asset(
                              'img/produto.jpg',
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
                                      'Descrição do produto',
                                      style: TextStyle(
                                        fontSize: 15
                                      ),
                                    ),
                                    SizedBox(height:10),
                                    Text(
                                      'R\$ xxx,xx a vista',
                                      style: TextStyle(
                                        color: Color.fromRGBO(9, 11, 84, 1),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15
                                      ),
                                    ),
                                    Text(
                                      'R\$ xxx.xx parcelado em ate x vezes',
                                        style: TextStyle(
                                        fontSize: 12
                                      ),
                                    ),
                                  ]
                                )
                              ),
                            )
                          ]
                        )
                      ),

                      Container(
                        width: 230,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color.fromRGBO(179, 177, 177, 1),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child:Column(
                          children: [

                            ClipRRect(
                              borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                            child: SizedBox(
                              width: 230,
                              height: 190,
                              child: Image.asset(
                              'img/produto.jpg',
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
                                      'Descrição do produto',
                                      style: TextStyle(
                                        fontSize: 15
                                      ),
                                    ),
                                    SizedBox(height:10),
                                    Text(
                                      'R\$ xxx,xx a vista',
                                      style: TextStyle(
                                        color: Color.fromRGBO(9, 11, 84, 1),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15
                                      ),
                                    ),
                                    Text(
                                      'R\$ xxx.xx parcelado em ate x vezes',
                                        style: TextStyle(
                                        fontSize: 12
                                      ),
                                    ),
                                  ]
                                )
                              ),
                            )
                          ]
                        )
                      )
                    ],
                    )
                )
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 230,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color.fromRGBO(179, 177, 177, 1),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child:Column(
                          children: [

                            ClipRRect(
                              borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                            child: SizedBox(
                              width: 230,
                              height: 190,
                              child: Image.asset(
                              'img/produto.jpg',
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
                                      'Descrição do produto',
                                      style: TextStyle(
                                        fontSize: 15
                                      ),
                                    ),
                                    SizedBox(height:10),
                                    Text(
                                      'R\$ xxx,xx a vista',
                                      style: TextStyle(
                                        color: Color.fromRGBO(9, 11, 84, 1),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15
                                      ),
                                    ),
                                    Text(
                                      'R\$ xxx.xx parcelado em ate x vezes',
                                        style: TextStyle(
                                        fontSize: 12
                                      ),
                                    ),
                                  ]
                                )
                              ),
                            )
                          ]
                        )
                      ),

                      Container(
                        width: 230,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color.fromRGBO(179, 177, 177, 1),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child:Column(
                          children: [

                            ClipRRect(
                              borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                            child: SizedBox(
                              width: 230,
                              height: 190,
                              child: Image.asset(
                              'img/produto.jpg',
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
                                      'Descrição do produto',
                                      style: TextStyle(
                                        fontSize: 15
                                      ),
                                    ),
                                    SizedBox(height:10),
                                    Text(
                                      'R\$ xxx,xx a vista',
                                      style: TextStyle(
                                        color: Color.fromRGBO(9, 11, 84, 1),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15
                                      ),
                                    ),
                                    Text(
                                      'R\$ xxx.xx parcelado em ate x vezes',
                                        style: TextStyle(
                                        fontSize: 12
                                      ),
                                    ),
                                  ]
                                )
                              ),
                            )
                          ]
                        )
                      )
                    ],
                    )
                )
              ),

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

              Padding(
                padding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 230,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color.fromRGBO(179, 177, 177, 1),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child:Column(
                          children: [

                            ClipRRect(
                              borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                            child: SizedBox(
                              width: 230,
                              height: 190,
                              child: Image.asset(
                              'img/produto.jpg',
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
                                      'Descrição do produto',
                                      style: TextStyle(
                                        fontSize: 15
                                      ),
                                    ),
                                    SizedBox(height:10),
                                    Text(
                                      'R\$ xxx,xx a vista',
                                      style: TextStyle(
                                        color: Color.fromRGBO(9, 11, 84, 1),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15
                                      ),
                                    ),
                                    Text(
                                      'R\$ xxx.xx parcelado em ate x vezes',
                                        style: TextStyle(
                                        fontSize: 12
                                      ),
                                    ),
                                  ]
                                )
                              ),
                            )
                          ]
                        )
                      ),

                      Container(
                        width: 230,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color.fromRGBO(179, 177, 177, 1),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child:Column(
                          children: [

                            ClipRRect(
                              borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                            child: SizedBox(
                              width: 230,
                              height: 190,
                              child: Image.asset(
                              'img/produto.jpg',
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
                                      'Descrição do produto',
                                      style: TextStyle(
                                        fontSize: 15
                                      ),
                                    ),
                                    SizedBox(height:10),
                                    Text(
                                      'R\$ xxx,xx a vista',
                                      style: TextStyle(
                                        color: Color.fromRGBO(9, 11, 84, 1),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15
                                      ),
                                    ),
                                    Text(
                                      'R\$ xxx.xx parcelado em ate x vezes',
                                        style: TextStyle(
                                        fontSize: 12
                                      ),
                                    ),
                                  ]
                                )
                              ),
                            )
                          ]
                        )
                      )
                    ],
                    )
                )
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 230,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color.fromRGBO(179, 177, 177, 1),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child:Column(
                          children: [

                            ClipRRect(
                              borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                            child: SizedBox(
                              width: 230,
                              height: 190,
                              child: Image.asset(
                              'img/produto.jpg',
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
                                      'Descrição do produto',
                                      style: TextStyle(
                                        fontSize: 15
                                      ),
                                    ),
                                    SizedBox(height:10),
                                    Text(
                                      'R\$ xxx,xx a vista',
                                      style: TextStyle(
                                        color: Color.fromRGBO(9, 11, 84, 1),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15
                                      ),
                                    ),
                                    Text(
                                      'R\$ xxx.xx parcelado em ate x vezes',
                                        style: TextStyle(
                                        fontSize: 12
                                      ),
                                    ),
                                  ]
                                )
                              ),
                            )
                          ]
                        )
                      ),

                      Container(
                        width: 230,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color.fromRGBO(179, 177, 177, 1),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child:Column(
                          children: [

                            ClipRRect(
                              borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                            child: SizedBox(
                              width: 230,
                              height: 190,
                              child: Image.asset(
                              'img/produto.jpg',
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
                                      'Descrição do produto',
                                      style: TextStyle(
                                        fontSize: 15
                                      ),
                                    ),
                                    SizedBox(height:10),
                                    Text(
                                      'R\$ xxx,xx a vista',
                                      style: TextStyle(
                                        color: Color.fromRGBO(9, 11, 84, 1),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15
                                      ),
                                    ),
                                    Text(
                                      'R\$ xxx.xx parcelado em ate x vezes',
                                        style: TextStyle(
                                        fontSize: 12
                                      ),
                                    ),
                                  ]
                                )
                              ),
                            )
                          ]
                        )
                      )
                    ],
                    )
                )
              ),

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

              Padding(
                padding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 230,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color.fromRGBO(179, 177, 177, 1),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child:Column(
                          children: [

                            ClipRRect(
                              borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                            child: SizedBox(
                              width: 230,
                              height: 190,
                              child: Image.asset(
                              'img/produto.jpg',
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
                                      'Descrição do produto',
                                      style: TextStyle(
                                        fontSize: 15
                                      ),
                                    ),
                                    SizedBox(height:10),
                                    Text(
                                      'R\$ xxx,xx a vista',
                                      style: TextStyle(
                                        color: Color.fromRGBO(9, 11, 84, 1),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15
                                      ),
                                    ),
                                    Text(
                                      'R\$ xxx.xx parcelado em ate x vezes',
                                        style: TextStyle(
                                        fontSize: 12
                                      ),
                                    ),
                                  ]
                                )
                              ),
                            )
                          ]
                        )
                      ),

                      Container(
                        width: 230,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color.fromRGBO(179, 177, 177, 1),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child:Column(
                          children: [

                            ClipRRect(
                              borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                            child: SizedBox(
                              width: 230,
                              height: 190,
                              child: Image.asset(
                              'img/produto.jpg',
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
                                      'Descrição do produto',
                                      style: TextStyle(
                                        fontSize: 15
                                      ),
                                    ),
                                    SizedBox(height:10),
                                    Text(
                                      'R\$ xxx,xx a vista',
                                      style: TextStyle(
                                        color: Color.fromRGBO(9, 11, 84, 1),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15
                                      ),
                                    ),
                                    Text(
                                      'R\$ xxx.xx parcelado em ate x vezes',
                                        style: TextStyle(
                                        fontSize: 12
                                      ),
                                    ),
                                  ]
                                )
                              ),
                            )
                          ]
                        )
                      )
                    ],
                    )
                )
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 230,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color.fromRGBO(179, 177, 177, 1),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child:Column(
                          children: [

                            ClipRRect(
                              borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                            child: SizedBox(
                              width: 230,
                              height: 190,
                              child: Image.asset(
                              'img/produto.jpg',
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
                                      'Descrição do produto',
                                      style: TextStyle(
                                        fontSize: 15
                                      ),
                                    ),
                                    SizedBox(height:10),
                                    Text(
                                      'R\$ xxx,xx a vista',
                                      style: TextStyle(
                                        color: Color.fromRGBO(9, 11, 84, 1),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15
                                      ),
                                    ),
                                    Text(
                                      'R\$ xxx.xx parcelado em ate x vezes',
                                        style: TextStyle(
                                        fontSize: 12
                                      ),
                                    ),
                                  ]
                                )
                              ),
                            )
                          ]
                        )
                      ),

                      Container(
                        width: 230,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color.fromRGBO(179, 177, 177, 1),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child:Column(
                          children: [

                            ClipRRect(
                              borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                            child: SizedBox(
                              width: 230,
                              height: 190,
                              child: Image.asset(
                              'img/produto.jpg',
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
                                      'Descrição do produto',
                                      style: TextStyle(
                                        fontSize: 15
                                      ),
                                    ),
                                    SizedBox(height:10),
                                    Text(
                                      'R\$ xxx,xx a vista',
                                      style: TextStyle(
                                        color: Color.fromRGBO(9, 11, 84, 1),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15
                                      ),
                                    ),
                                    Text(
                                      'R\$ xxx.xx parcelado em ate x vezes',
                                        style: TextStyle(
                                        fontSize: 12
                                      ),
                                    ),
                                  ]
                                )
                              ),
                            )
                          ]
                        )
                      )
                    ],
                    )
                )
              ),

              SizedBox(height: 70),
              
                Container(
                  width: double.infinity,
                  color: Color.fromRGBO(35, 35, 35, 1),
                  child: Padding(padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                    child: Column(
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
                      SizedBox(height: 20),
                      Padding(padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                        child: Column(
                        children: [
                          Text(
                            'Endereço: blablabla blabla',
                            style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontSize: 14,
                            ),
                          ),
                        ]
                      )
                      )
                    ]
                  )
                )
                )
            ],
          ),
        ),
      ),
    );
  }
}
