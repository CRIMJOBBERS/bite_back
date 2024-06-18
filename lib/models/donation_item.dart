class DonationItem {
  String type;
  int quantity;
  DateTime? expiryDate;
  String location;

  DonationItem({
    required this.type,
    required this.quantity,
    this.expiryDate,
    required this.location,
  });
}
