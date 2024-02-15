import 'dart:convert';

import 'package:flutter/cupertino.dart';

VisaProcess visaProcessFromJson(String str) =>
    VisaProcess.fromJson(json.decode(str));

String visaProcessToJson(VisaProcess data) => json.encode(data.toJson());

class VisaProcess {
  IconData? icon;
  String? name;
  bool? done;
  String? date;
  String? message;
  String? alert;

  VisaProcess({
    this.icon,
    this.name,
    this.done,
    this.date,
    this.message,
    this.alert,
  });

  VisaProcess copyWith({
    IconData? icon,
    String? name,
    bool? done,
    String? date,
    String? message,
    String? alert,
  }) =>
      VisaProcess(
        icon: icon ?? this.icon,
        name: name ?? this.name,
        done: done ?? this.done,
        date: date ?? this.date,
        message: message ?? this.message,
        alert: alert ?? this.alert,
      );

  factory VisaProcess.fromJson(Map<String, dynamic> json) => VisaProcess(
        icon: json["Icon"],
        name: json["Name"],
        done: json["Done"],
        date: json["Date"],
        message: json["Message"],
        alert: json["Alert"],
      );

  Map<String, dynamic> toJson() => {
        "Icon": icon,
        "Name": name,
        "Done": done,
        "Date": date,
        "Message": message,
        "Alert": alert,
      };
}
