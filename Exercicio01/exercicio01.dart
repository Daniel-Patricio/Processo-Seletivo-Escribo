import 'dart:io';

//Verifica se o número é válido
bool eNumero(String string) {
  if (double.tryParse(string) == null) {
    return false;
  }
  return true;
}

void main() {
  //Recebe uma string para verificar se é um número válido
  print("Digite um numero inteiro positivo: ");
  String numero = stdin.readLineSync()!;

  //Se tiver letra, for nulo ou não for um número inteiro positivo ele entra no while
  while (eNumero(numero) == false ||
      double.parse(numero).isNegative ||
      double.parse(numero) % 2 != 0.0 && double.parse(numero) % 2 != 1.0) {
    //Pede um novo número para re-validar
    print("Numero invalido. Digite outro numero inteiro positivo: ");
    numero = stdin.readLineSync()!;
  }

  int soma = 0;
  for (var i = 1; i < double.parse(numero); i++) {
    //Verifica se os numeros são divisiveis por 3 ou 5 inferiores ao numero válido recebido
    if (i % 3 == 0 || i % 5 == 0) {
      //Somatoria de valores
      soma = soma + i;
    }
  }

  print("A soma dos valores divisíveis por 3 e 5 entre 1 e $numero é: ");
  print(soma);
}

//Daniel Martins Patricio
