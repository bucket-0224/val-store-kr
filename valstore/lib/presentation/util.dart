import 'dart:convert';

String defaultPlayerCardPlaceHolderUrl = "https://media.valorant-api.com/playercards/9fb348bc-41a0-91ad-8a3e-818035c4e561/wideart.png";

String? extractPlayerUUID(String idToken) {
  try {
    // JWT는 `header.payload.signature` 형식 -> 중간 부분(payload) 디코딩
    List<String> parts = idToken.split('.');
    if (parts.length != 3) {
      print("Invalid ID Token");
      return null;
    }

    // Base64 디코딩
    String payload = utf8.decode(base64Url.decode(base64Url.normalize(parts[1])));
    Map<String, dynamic> decodedJson = jsonDecode(payload);

    print(decodedJson["sub"]);

    // "sub" 필드가 PUUID
    return decodedJson["sub"];
  } catch (e) {
    print("Error decoding ID Token: $e");
    return null;
  }
}

Duration timeUntilNextRotationDays() {
  final now = DateTime.now();
  final nowUtc = now.toUtc();
  final nextMidnightUtc = DateTime.utc(nowUtc.year, nowUtc.month, nowUtc.day + 1);

  return nextMidnightUtc.difference(nowUtc);
}

