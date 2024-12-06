class Reservation {
  String headName;
  String detail;
  String price;
  String cad;
  String sqft;
  int count = 0;

  Reservation({
    required this.headName,
    required this.detail,
    required this.price,
    required this.cad,
    required this.sqft,
    required this.count,
  });
}

List<Reservation> renovationDetails = [
  Reservation(
    headName: "Full Remodel",
    detail:
        "Every shoe and bag will assessment and pricing based on factors such as material, condition, and overall value.",
    price: "\$05 ",
    cad: "CAD ",
    sqft: "sqft ",
    count: 0,
  ),
  Reservation(
    headName: "Fixture Replacement ",
    detail:
        "Every shoe and bag will assessment and pricing based on factors such as material, condition, and overall value.",
    price: "\$05 ",
    cad: "CAD ",
    sqft: "sqft ",
    count: 0,
  ),
  Reservation(
    headName: "Tile Installation",
    detail:
    "Every shoe and bag will assessment and pricing based on factors such as material, condition, and overall value.",
    price: "\$05 ",
    cad: "CAD ",
    sqft: "sqft ",
    count: 0,
  ),
  Reservation(
    headName: "Plumbing Upgrades",
    detail:
    "Every shoe and bag will assessment and pricing based on factors such as material, condition, and overall value.",
    price: "\$05 ",
    cad: "CAD ",
    sqft: "sqft ",
    count: 0,
  ),
  Reservation(
    headName: "Vanity Installation",
    detail:
    "Every shoe and bag will assessment and pricing based on factors such as material, condition, and overall value.",
    price: "\$05 ",
    cad: "CAD ",
    sqft: "sqft ",
    count: 0,
  ),
  // Reservation(
  //   headName: "Tile Installation",
  //   detail:
  //       "Every shoe and bag will assessment and pricing based on factors such as material, condition, and overall value.",
  //   price: "\$05 ",
  //   cad: "CAD ",
  //   sqft: "sqft ",
  //   count:0,
  // ),
  // Reservation(
  //   headName: "Plumbing Upgrades",
  //   detail:
  //       "Every shoe and bag will assessment and pricing based on factors such as material, condition, and overall value.",
  //   price: "\$05 ",
  //   cad: "PC ",
  //   sqft: "sqft ",
  // ),
  // Reservation(
  //   headName: "Vanity Installation",
  //   detail:
  //       "Every shoe and bag will assessment and pricing based on factors such as material, condition, and overall value.",
  //   price: "\$05 ",
  //   cad: "PC ",
  //   sqft: "sqft ",
  // ),
];
