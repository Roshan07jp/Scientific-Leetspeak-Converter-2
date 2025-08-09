// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:scientific_leetspeak_app/main.dart';

void main() {
  testWidgets('TranslatePage UI test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that the initial text is displayed.
    expect(find.text('Translated text will appear here'), findsOneWidget);

    // Verify that the input field is present.
    expect(find.byType(TextField), findsOneWidget);

    // Verify that the action buttons are present.
    expect(find.byIcon(Icons.undo), findsOneWidget);
    expect(find.byIcon(Icons.redo), findsOneWidget);
    expect(find.byIcon(Icons.copy), findsOneWidget);
    expect(find.byIcon(Icons.mic), findsOneWidget);
    expect(find.byIcon(Icons.camera_alt), findsOneWidget);

    // Verify that the clear button is present.
    expect(find.byIcon(Icons.clear), findsOneWidget);
  });
}
