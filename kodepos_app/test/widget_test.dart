import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:kodepos_app/main.dart';

void main() {
  testWidgets('Kodepos App Test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(KodeposApp());

    // Verify that our counter starts at 0.
    expect(find.text('Kecamatan 1'), findsNothing);
    expect(find.text('Kelurahan: Kelurahan 1\nKodepos: 10001'), findsNothing);

    // Wait for the data to load.
    await tester.pumpAndSettle();

    // Verify that the data is loaded successfully.
    expect(find.text('Kecamatan 1'), findsOneWidget);
    expect(find.text('Kelurahan: Kelurahan 1\nKodepos: 10001'), findsOneWidget);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('Kecamatan 1'), findsOneWidget);
    expect(find.text('Kelurahan: Kelurahan 1\nKodepos: 10001'), findsOneWidget);
    expect(find.text('Kecamatan 2'), findsOneWidget);
    expect(find.text('Kelurahan: Kelurahan 2\nKodepos: 10002'), findsOneWidget);
  });
}
