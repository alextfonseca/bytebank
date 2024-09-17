// classe que representa uma transferência
class Transfer {
  final double valor;
  final int accountNumber;

  Transfer(
    this.valor,
    this.accountNumber,
  );

  @override
  String toString() {
    return 'Transferência{valor: $valor, accountNumber: $accountNumber}';
  }
}
