import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'widget_test.dart' as widget_test;

const _lanesNumber = 5;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('Shaders warm up tests', () {
    for (var i = 0; i < _lanesNumber; i++) {
      widget_test.main();
    }
  });
}
