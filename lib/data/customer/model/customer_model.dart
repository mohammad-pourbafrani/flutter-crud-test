class CustomerModel {
  String firstName;
  String lastName;
  String dateOfBirth;
  String phoneNumber;
  String email;
  String bankAccountNumber;

  CustomerModel(
      {required this.firstName,
      required this.lastName,
      required this.dateOfBirth,
      required this.phoneNumber,
      required this.email,
      required this.bankAccountNumber});

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CustomerModel &&
          runtimeType == other.runtimeType &&
          firstName == other.firstName &&
          lastName == other.lastName &&
          dateOfBirth == other.dateOfBirth;

  @override
  int get hashCode => firstName.hashCode ^ lastName.hashCode ^ dateOfBirth.hashCode;
}
