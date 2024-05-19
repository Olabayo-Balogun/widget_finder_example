import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:widget_finder_example/main.dart';

void main() {
  testWidgets('WidgetTester Test', (WidgetTester tester) async {
    // Build the widget tree
    await tester.pumpWidget(MyApp());

    //Find widgets by key and perform an action
    await tester.tap(find.byKey(Key('item_1')));

    //Allow time for animations to complete
    await tester.pumpAndSettle();

    //Verify the expected changes in the widget tree
    expect(find.text('Item 1 Text'), findsNothing);
    expect(find.text('Item 2 Text'), findsOneWidget);
  });
}
