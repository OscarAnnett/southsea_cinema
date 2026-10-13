import 'package:flutter_test/flutter_test.dart';
import 'package:southsea_cinema/main.dart';

void main() {
  group('Widget tests', () {
    testWidgets('Testing app title, movie titles, and booking buttons',
        (WidgetTester tester) async {
      await tester.pumpWidget(const SouthseaCinemaApp());
      await tester.pumpAndSettle();

      expect(find.text('Southsea Cinema'), findsOneWidget);

      expect(find.text('The Naked Gun 4'), findsOneWidget);
      expect(find.text('Eyes Wide Shut'), findsOneWidget);

      expect(find.text('Book Tickets'), findsNWidgets(2));
    });
  });
}
