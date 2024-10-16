import 'package:flutter_integration_test/screens/home_controller.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Test HomeController', () {
    test('Counter must initialize to 0', () {
      expect(HomeController().counter.value, 0);
    });
    test('Increment the counter by 1x', () {
      final controller = HomeController();
      controller.counter.value++;
      expect(controller.counter.value, 1);
    });
    test('Initial title must be Home', () {
      expect(HomeController().title.value, 'Home');
    });
    test('Change the title Home to Home Page', () {
      final controller = HomeController();
      controller.title.value = 'Home Page';
      expect(controller.title.value, 'Home Page');
    });
  });
}
