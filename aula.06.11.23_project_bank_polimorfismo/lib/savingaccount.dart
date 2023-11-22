import 'package:project_bank_polimorfismo/account.dart';
import 'package:project_bank_polimorfismo/revenueaccount.dart';

class SavingAccount extends RevenueAccount {
  static const _yieldRatePerYear = 6.00;
  static const _yieldPeriodInDays = 30;

  SavingAccount({
    required super.agency,
    required super.number,
    required super.clientName,
  }) : super(yieldRatePerYear: _yieldRatePerYear, yieldPeriodInDays: _yieldPeriodInDays, type: AccountType.saving);
}
