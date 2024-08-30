
// aqui é uma lista json de exemplo
import 'dart:convert';
void main(){
String jsonlist = '''[{
  "dia/mes": "1/3",
  "faturamento": "250.0"
},
{
  "dia/mes": "2/3",
  "faturamento": "0.0"
},
{
  "dia/mes": "3/3",
  "faturamento": "700.0"
},
{
  "dia/mes": "4/3",
  "faturamento": "900.0"
},
{
  "dia/mes": "5/3",
  "faturamento": "100.0"
}]
''';

// agora vou pegar esta lista e tirar do json pra lista dart
// com dart convert, e tipo dinamico pra não perder tempo
List<dynamic> parsedList = jsonDecode(jsonlist);

// pra testar vou imprimir no terminal
for(var item in parsedList){
  print('Data:${item['dia/mes']}');
  print('Fat: ${item['faturamento']}');
}

// agora vou tratar para ignorar dias sem faturamento
//criar uma lista double
// mapear cada item da chave faturamento excluindo se for menor que zero
List<double> faturamento = parsedList.map((item) => double.parse(item['faturamento']))
.where((valor) => valor > 0).toList();

// agora já da pra tirar algumas informações
// menor e maior valor do mês
// basicamente vai ficar fazendo leitura exaustiva até achar o menor e maior
double menor = faturamento.reduce((atual, prox) => atual < prox ? atual : prox);
double maior = faturamento.reduce((atual, prox) => atual > prox ? atual : prox);

// média mensal
// media = x1 + x2 + x3 + ... + xn / n
// vai pegar soma e dividir pelo todo de itens
double media = faturamento.reduce((a, b) => a + b) / faturamento.length;

// agora com a média, dá pra listar os dias de maior faturamento
// criar uma lista com string pra retornar os dias
List acimaMedia = parsedList.where((fat_dia) => double.parse(fat_dia['faturamento']) > media)
.toList();

// Agora é necessário exibir os dados
print('Menor valor de faturamento: $menor');
print('Maior valor de faturamento: $maior');
print('Média mensal do faturamento: ${media.toStringAsFixed(2)}');

print('\nDias com faturamento acima da média: ');
for (var dia in acimaMedia){
  print('Dia ${dia['dia/mes']}: ${dia['faturamento']}');
}

}