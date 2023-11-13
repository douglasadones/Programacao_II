import './account.dart';

class CurrentAccount extends Account {
  // CurrentAccount({
  //   required int agency,
  //   required int number,
  //   required String clientName,
  // }) : super(
  //         agency: agency,
  //         number: number,
  //         clientName: clientName,
  //       );

  // Assim já vai direto para a super classe.
  CurrentAccount({
    required super.agency,
    required super.number,
    required super.clientName,
  }) : super(type: AccountType.current);
}
