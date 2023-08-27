import 'package:flutter_test/flutter_test.dart';
import 'package:testing/myself.dart';

void main (){
  testWidgets('Probando quie aparezcan name y age', (WidgetTester widgetTester) async {
    await widgetTester.pumpWidget(MySelf(29, 'Dani'));

    expect(find.text('Dani'), findsOneWidget);
    expect(find.text('29'), findsOneWidget);
  });

}