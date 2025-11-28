class Produto {
  final String nome;
  final String tipo;
  final String especificacao;
  final String precoVista;
  final String precoParcelado;
  final String img1;
  final String img2;

Produto({
  required this.nome,
  required this.tipo,
  required this.especificacao,
  required this.precoVista,
  required this.precoParcelado,
  required this.img1,
  required this.img2
});

factory Produto.fromJson(Map<String, dynamic> json){
  return Produto(
    nome : json['nome'] as String,
    tipo : json['tipo'] as String,
    especificacao : json['especificacao'] as String,
    precoVista : json['precoVista'] as String,
    precoParcelado : json['precoParcelado'] as String,
    img1 : json['img1'] as String,
    img2 : json['img2'] as String,
  );
}

  Map<String, dynamic> toJson() => {
    'nome': nome,
    'tipo': tipo,
    'especificacao': especificacao,
    'precoParcelado': precoParcelado,
    'precoVista': precoVista,
    'img1': img1,
    'img2': img2,
  };
}