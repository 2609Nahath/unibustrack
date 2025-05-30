import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> sendPushMessage(String token, String title, String body) async {
  String serverKey =
      "ya29.c.c0ASRK0GbxdJ2oaeyBfw1U1D_zq4YqtN7u9b8O8BTCsn6yn-9pjjhRg11E-Eq2OsaTbZ2E6ow4pgNPaD6pQm_q1WFz1u2HPoBX-cskGDBbtF26zuBC0XxE1CWWu8CobP7FQd6H65nWMlIJL-x1-LKOh3X-xVb8UOthye7nhGWicXWjTXpuJh6kaFgiqKqxG8x3QR61ZBRX5h5L04uHnLyvvMByHrJt-ee4aZwfaT1ZT9-v4q55j_wZIb5WVO6IxRlFrCEaXg7YClGnhq2TBgBeN-oZWWDK1if6WAyduu62KNFi7NnrH0WPNZLDpcu0xUNbd5SFYU7uTalDBRkBYj5-9PvbjQIV1Hcbc73UKSiyL2jJQDQaDk54Pn275ajkZgG391P49wtd6s4Y73mWf_Jmr72clhQkjyasIyl7ztIcIggl24w2e3v8xyMzd0eWletbbX7d8Iyf8RqUf4pnR0bn8iaUWJ64Uu5q26elyS-eO3Uptikt948RBfvlrzcF4FRub0XW_mxpyo343z0ppS9vt4cmgRzlYihws6YgRRt1sU6vSlXmhw_MOw5q9UQm7-e-v3W2rR8_ZeQSk74hB6023edeqp6IYZ0714VqQ1aZ_Bh37jvOyw4jkk_u_IguhIZo0a21-fxYbdxwFv4nUekO4yskkF8S7QMiaxq9s80oXt_OSbIahoXwFtcUxRO4BBjx08Vy_J_x805a2MugxnQm1XYcmO960ehkysBRhyxQVlo358fu8qpivjxyfMztkc13OwaXpSzj8jhSO_Rm-aaZRtvSJQXdoQoBWYdS_3F7ubcI9y-vnc9VsZ0ZlkjMgyMoe_-OUSSVphexIpacaOBbV2qztQ80hXej-OIeYziq0xiupdO1JUdkFUvXMYSMxYXMv28hpSVocVrM4fUqug2kqie4ozeBwS2ieJYbBIvJ8ejffjQlSQqQh2xkYYisUa6m0aI5j1Rs4QMjuptqJbQzamWotaV11tYQez3RhsakOg";
  try {
    final response = await http.post(
      Uri.parse('https://fcm.googleapis.com/fcm/send'),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'key=$serverKey', // Replace with your FCM server key
      },
      body: jsonEncode({
        'to': token,
        'notification': {'title': title, 'body': body},
        'priority': 'high',
        'data': {'click_action': 'FLUTTER_NOTIFICATION_CLICK'},
      }),
    );

    print('FCM request for device sent! Response: ${response.body}');
  } catch (e) {
    print('Error sending push notification: $e');
  }
}
