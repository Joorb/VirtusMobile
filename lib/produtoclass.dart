class Produto {
  late String nome;
  late String tipo;
  late String especificacao;
  late String precoVista;
  late String precoParcelado;
  late String img1;
  late String img2;

  Produto()
  {
    nome = "";
    tipo = "";
    especificacao = "";
    precoVista = "";
    precoParcelado = "";
    img1 = "";
    img2 = "";
  }

Produto.v(this.nome, this.tipo, this.especificacao, this.precoVista, this.precoParcelado, this.img1, this.img2);



Produto.fromJson(Map<String, dynamic> json)
  : nome = json['nome'] as String,
    tipo = json['tipo'] as String,
    especificacao = json['especificacao'] as String,
    precoVista = json['tipo'] as String,
    precoParcelado = json['tipo'] as String,
    img1 = json['img1'] as String,
    img2 = json['img2'] as String;

  Map<String, dynamic> toJson() => {
    'nome': nome,
    'tipo': tipo,
    'especificacao': especificacao,
    'precoparcelado': precoParcelado,
    'precovista': precoVista,
    'img1': img1,
    'img2': img2,
    };
}