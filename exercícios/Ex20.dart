void main() {
 Pessoa n1 = Pessoa("Ana Carolina Augusto", 23, "F");
  Pessoa n2 = Pessoa("Isabella Puttini", 20, "F");
  Pessoa n3 = Pessoa("Laís Leme", 19, "F");
  Pessoa n4 = Pessoa("Nicole Ribeiro", 20, "F");

  final pessoas = [n1, n2, n3, n4];

  for (Pessoa p in pessoas) {
    if (p.genero == "F") {
      print(" Aluno: ${p.nome}, ${p.idade} anos, gênero feminino");
    }
  }
}

class Pessoa {
  String nome;
  int idade;
  String genero;

  Pessoa(this.nome, this.idade, this.genero);
}
