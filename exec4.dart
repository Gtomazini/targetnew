// faturamento mensal da distribuidora por estado
// sp - 67836.43
// rj - 36678.66
// mg - 29229.88
// es - 27165.48
// outros - 19849.53
// output = percentual de cada estado encima do total
void main(){

// criar uma lista com os valores e estados

List<Map<String, dynamic>> faturamento = [

{"estado" : "sp", "valor": 67836.43},
{"estado" : "rj", "valor": 36678.66},
{"estado" : "mg", "valor": 29229.88},
{"estado" : "es", "valor": 27165.48},
{"estado" : "outros", "valor": 19849.53}

];

// somar tudo pra saber o total
double total = faturamento.fold(0.0, (soma, particular) => soma + particular['valor']);

// pegar cada porcentagem
print('Representação Percentual por estado:');
for(var fat in faturamento){
  String estado = fat['estado'];
  double valor = fat['valor'];
  double percentual = (valor / total) * 100;

  // exibir na tela com casa decimal corrigida
  print('${estado}: ${percentual.toStringAsFixed(2)}%');
}

print('\n Total de faturamento mensal: R\$ ${total.toStringAsFixed(2)}');



}