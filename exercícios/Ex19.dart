
void main() {
  Pessoa n1 = Pessoa("Ana Carolina Augusto", 23);
  Pessoa n2 = Pessoa("Isabella Puttini", 20);
  Pessoa n3 = Pessoa("Laís Leme", 19);
  Pessoa n4 = Pessoa("Nicole Ribeiro", 20);

  final pessoas = [n1, n2, n3, n4];

  for (Pessoa p in pessoas) {
    print(" Aluno: ${p.nome}, ${p.idade} anos");
  }
}

class Pessoa {
  String nome;
  int idade;

  Pessoa(this.nome, this.idade);

  String toString() {
    return "$nome, $idade anos";
  }
}
