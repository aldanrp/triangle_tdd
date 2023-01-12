detectTriangle(num sideA, num sideB, num sideC) {
  final side = [sideA, sideB, sideC];
  side.sort();

  side.forEach((side) {
    if (side < 1) {
      throw Exception();
    }
  });

  if (side[0] + side[1] <= side[2]) {
    throw Exception('Inequal Triangle');
  }

  if (side[0] == side[1] && side[0] == side[2]) {
    return "Segitiga sama sisi";
  }

  if (side[0] == side[1] || side[0] == side[2] || side[1] == side[2]) {
    return "Segitiga sama kaki";
  }

  return "Segitiga sembarang";
}
