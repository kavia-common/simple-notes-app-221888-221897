import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:notes_app_frontend/main.dart';

void main() {
  testWidgets('Initial empty state and FAB present', (WidgetTester tester) async {
    await tester.pumpWidget(const NotesApp());
    await tester.pumpAndSettle();

    // AppBar title
    expect(find.text('Notes'), findsOneWidget);

    // Empty state text
    expect(find.text('No notes yet'), findsOneWidget);
    expect(find.text('Tap + to create your first note.'), findsOneWidget);

    // FAB present
    expect(find.byType(FloatingActionButton), findsOneWidget);
  });
}
