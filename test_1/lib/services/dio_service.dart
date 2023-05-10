part of 'service.dart';

class WizardDio {
  Future<List<Wizard>?> getAllWizardByDio() async {
    try {
      Dio dio = Dio();
      final response = await dio.get(url);
      if (response.statusCode != 200) {
        return [];
      }
      return (response.data as List).map((e) => Wizard.fromMap(e)).toList();
    } catch (e) {
      rethrow;
    }
  }
}
