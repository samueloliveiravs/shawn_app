import 'package:flutter_test/flutter_test.dart';
import 'package:shawn_app/controllers/fake_api_controller.dart';

void main() {
  group("Fake API Teste", () {
    test("estado inicial", () {
      final api = FakeApiController();

      expect(api.isLoading, isFalse);
      expect(api.dados, isEmpty);
    });

    test("buscou dados corretamente", () async {
      final api = FakeApiController();

      api.getData();
      expect(api.dados, isEmpty);
    });
  });
}
