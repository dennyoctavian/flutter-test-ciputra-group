import 'package:dio/dio.dart';

class PushNotificationService {
  Future<void> sendNotif(int number) async {
    Dio dio = Dio();
    await dio.post(
      'https://onesignal.com/api/v1/notifications',
      data: {
        "app_id": "e7dfb6bc-7b82-4633-89ca-94de8721f46b",
        "included_segments": ["Subscribed Users"],
        "contents": {
          "en":
              "Notification send every 6 increment of counter and now counter value is $number",
          "id":
              "Notifikasi ini muncul karena sudah penambahan setiap 6 kali dan counter bernilai $number"
        },
        "name": "INTERNAL_CAMPAIGN_NAME"
      },
      options: Options(
        headers: {
          "accept": "application/json",
          "Authorization":
              "Basic NWEwNTQ5NzctNjM5ZC00MTA0LThiNWUtMTQwNjdlMjcwYWQ0",
          "content-type": "application/json",
        },
      ),
    );
  }
}
