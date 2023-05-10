part of 'service.dart';

class WizardHttp {
  Future<List<Wizard>?> getAllWizardByHttp() async {
    try {
      var response = await http.get(uri);
      if (response.statusCode != 200) {
        return [];
      }
      var data = jsonDecode(response.body);
      return (data as List).map((data) => Wizard.fromMap(data)).toList();
    } catch (e) {
      rethrow;
    }
  }
}
