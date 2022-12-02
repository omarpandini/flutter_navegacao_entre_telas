// ignore_for_file: unnecessary_this

class Pessoa {
  String _nome = '';
  int _idade = 0;

  Pessoa(String nome, int idade) {
    this._nome = nome;
    this._idade = idade;
  }

  String get nome => this._nome;
  set nome(String value) => this._nome = value;
  get idade => this._idade;
  set idade(value) => this._idade = value;
}
