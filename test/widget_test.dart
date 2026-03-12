import 'package:flutter_test/flutter_test.dart';

import 'package:pulse/main.dart';

void main() {
  testWidgets('PulseApp renders', (WidgetTester tester) async {
    await tester.pumpWidget(const PulseApp());
    expect(find.text('Pulse'), findsOneWidget);
  });
}
