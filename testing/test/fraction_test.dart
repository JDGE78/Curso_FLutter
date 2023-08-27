import 'package:flutter_test/flutter_test.dart';
import 'package:testing/fraction.dart';

void main(){
  group('Testeando', () {
    test('10 dividio ente 2 deberia ser 5', (){
      final fraction = Fraction(
          numerator: 10,
          denominator: 2
      );
      expect(fraction.toDouble, 5);
    });

    test('Negate deberia dar el signo opuesto', ()  {
        final fraction = Fraction(
            numerator: 10,
            denominator: 2
        );
       fraction.negate();
       expect(fraction.toDouble, -5);

    });

  });


}