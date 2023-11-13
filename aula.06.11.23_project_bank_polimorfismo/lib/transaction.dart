enum TransactionType {
  withdrawal,
  deposit,
  payment,
  revenue,
  interest, // Débito na conta de juros (conta especial)
  transfer, // Retirada da conta
}

enum TransactionNature {
  credit,
  debit,
}

class Transaction {
  static const _transactionTypeName = {
    TransactionType.withdrawal: 'SAQUE',
    TransactionType.deposit: 'DEPÓSITO',
    TransactionType.payment: 'PAGAMENTO',
    TransactionType.revenue: 'RENDIMENTO',
    TransactionType.interest: 'JUROS',
    TransactionType.transfer: 'TRANSFERÊNCIA',
  };

  final TransactionType type;
  final DateTime date;
  final String? _description;
  late final double _value;

  Transaction({
    required TransactionNature nature, // para verificar o sinal.
    required this.type,
    required this.date,
    required double value,
    String? description,
  }) : _description = description {
    _setValue(value, nature);
  }

  Transaction.now({
    required TransactionNature nature,
    required this.type,
    required double value,
    String? description,
  })  : date = DateTime.now(),
        _description = description {
    _setValue(value, nature);
  }

  void _setValue(double value, nature) {
    if (value.isNegative) {
      throw Exception('Negative transaction value');
    }
    _value =
        (nature == TransactionNature.credit) ? value : -value; // tratar o sinal
  }

  // null é apontar para o endereço "0" da memória. Ir lá é ir fora do escopo que o SO deu para o seu programa.
  // String get description {
  //   if (_description != null) {
  //     return _description!;
  //   } else {
  //     switch (type) {
  //       case TransactionType.withdrawal:
  //         return 'SAQUE';
  //       case TransactionType.deposit:
  //         return 'DEPÓSITO';
  //       case TransactionType.payment:
  //         return 'PAGAMENTO';
  //       case TransactionType.revenue:
  //         return 'RENDIMENTO';
  //       case TransactionType.interest:
  //         return 'JUROS';
  //       case TransactionType.transfer:
  //         return 'TRANSFERÊNCIA';
  //     }
  //   }
  // }

  // Lógica difernete para o código acima
  String get description => _description ?? _transactionTypeName[type]!;

  double get value => _value;

  // verifica se vamos retirar ou adicionar um valor na conta (verifica o sinal)
  bool get isCredit => _value >= 0.0;

  bool get isDebit => _value < 0.0;
}
