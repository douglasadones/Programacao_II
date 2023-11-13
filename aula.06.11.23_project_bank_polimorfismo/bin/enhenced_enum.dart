// enhanced enum
enum TransactionType {
  withdrawal(-1),
  deposit(1),
  payment(-1),
  revenue(1),
  interest(-1), // juros
  transfer(0);

  const TransactionType(this.signal);

  final int signal;
}

void main() {
  TransactionType t = TransactionType.deposit;

  for (var t in TransactionType.values) {
    print('${t.index}: ${t.name}, ${t.signal}');
  }
}
