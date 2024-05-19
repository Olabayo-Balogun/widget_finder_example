// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:widget_finder_example/main.dart';

void main() {
  testWidgets('Use Keys and Accessibility in tests', (tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    //Find widgets by key
    expect(find.byKey(Key('item_1')), findsOneWidget);
    expect(find.byKey(Key('item_2')), findsOneWidget);

    //Find widgets by tooltip
    expect(find.byTooltip('Item 1 Tooltip'), findsOneWidget);
    expect(find.byTooltip('Item 2 Tooltip'), findsOneWidget);

    //Find widgets by text
    expect(find.text('Item 1 Text'), findsOneWidget);
    expect(find.text('Item 2 Text'), findsOneWidget);

    //Verify accessibility with semantics
    expect(
        tester.getSemantics(find.text('Item 1 Text')),
        matchesSemantics(
          label: 'Item 1 text',
        ));
    expect(
        tester.getSemantics(find.text('Item 2 Text')),
        matchesSemantics(
          label: 'Item 2 text',
        ));
  });
}
