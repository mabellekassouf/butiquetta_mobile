class UserAddresses {
  final int id;
  final String name, street, building, city, state, country, phone;
  final int number;

  UserAddresses({
    required this.id,
    required this.name,
    required this.street,
    required this.building,
    required this.city,
    required this.state,
    required this.number,
    required this.country,
    required this.phone,
  });
}

List<UserAddresses> useraddress = [
  UserAddresses(
      id: 1,
      name: "John Smith",
      street: "X",
      building: "Y",
      city: "Z",
      state: "NY",
      number: 0000,
      country: "United States",
      phone: "00 123 4567"),
  UserAddresses(
      id: 2,
      name: "John Smith",
      street: "X",
      building: "Y",
      city: "Z",
      state: "NY",
      number: 0000,
      country: "United States",
      phone: "00 123 4567"),
];
