import 'package:flutter_test/flutter_test.dart';
import 'package:triangle_tdd/triangle_app.dart';

void main() {
  group('Detec the triangle', () {
    //! on test describe can be like "should <expected result> when <condition>"

    //* Detected if side value < 1
    test(
        'Test/pengujian sebaiknya melemparkan Error ketika ada sisi yang kurang dari 1',
        () {
      expect(() => detectTriangle(-1, 2, 2), throwsA(isA<Exception>()));
      expect(() => detectTriangle(1, -2, 2), throwsA(isA<Exception>()));
      expect(() => detectTriangle(1, 2, -2), throwsA(isA<Exception>()));
    });

    //* Detected if side a + b <= c
    test('Should throw error when side a + b <= c', () {
      expect(() => detectTriangle(4, 1, 2), throwsA(isA<Exception>()));
      expect(() => detectTriangle(5, 1, 3), throwsA(isA<Exception>()));
    });

    //* Detected if all side are equal
    test('Should return "Segitiga Sama Sisi" when all sides are equal', () {
      expect(detectTriangle(1, 1, 1), "Segitiga sama sisi");
      expect(detectTriangle(2, 2, 2), isNot("Segitiga Sama Sisi"));
    });

    //* Detected if two side triangle is equal
    test('Should return "Segitiga Sama kaki" when two sides are equal', () {
      expect(detectTriangle(4, 2, 4), "Segitiga sama kaki");
      expect(detectTriangle(1, 2, 2), "Segitiga sama kaki");
      expect(detectTriangle(2, 2, 3), "Segitiga sama kaki");
      expect(detectTriangle(4, 1, 4), "Segitiga sama kaki");
    });

    //* Detect if is a "Segitiga sembarang"
    test('Should return "Segitiga Sama kaki" when no side is equal', () {
      expect(detectTriangle(2, 4, 3), "Segitiga sembarang");
    });
  });
}
