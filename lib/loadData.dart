import 'package:flutter/foundation.dart';

class LoadData {
  final String username;
  final String email;
  LoadData({required this.username, required this.email});

  // Json dosyadan çekmek için return
  factory LoadData.fromJson(Map<String, dynamic> json) {
    return LoadData(username: json['username'], email: json['email']);
  }
}
