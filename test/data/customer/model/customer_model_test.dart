import 'package:flutter_test/flutter_test.dart';
import 'package:mc_crud_test/data/customer/model/customer_model.dart';

void main() async {
  late CustomerModel customerModelA;
  late CustomerModel customerModelB;
  late CustomerModel customerModelC;

  setUp(() {
    customerModelA = CustomerModel(
        firstName: 'mohammad',
        lastName: 'pourbafrani',
        dateOfBirth: '2024/06/07',
        phoneNumber: '+989910459746',
        bankAccountNumber: '123131321332',
        email: 'm.pourbafarani@gmail.com');
    customerModelB = CustomerModel(
        firstName: 'mohammadd',
        lastName: 'pourbafrani',
        dateOfBirth: '2024/06/08',
        phoneNumber: '+989910459746',
        bankAccountNumber: '123131321332',
        email: 'm.pourbafarani@gmail.com');
    customerModelC = CustomerModel(
        firstName: 'mohammad',
        lastName: 'pourbafrani',
        dateOfBirth: '2024/06/07',
        phoneNumber: '+989910459746',
        bankAccountNumber: '123131321332',
        email: 'm.pourbafarani@gmail.com');
  });

  group('test hashCode and == operator for customer model', () {
    test('== operator Test for Customer model', () {
      expect(customerModelA == customerModelB, false);
      expect(customerModelA == customerModelC, true);
    });

    test('hashCode Test for ip model', () {
      expect(customerModelA.hashCode != customerModelB.hashCode, true);
    });
  });
}
