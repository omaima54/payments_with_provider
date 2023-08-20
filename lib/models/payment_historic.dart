// To parse this JSON data, do
//
//     final paymentHistoric = paymentHistoricFromJson(jsonString);

import 'dart:convert';

List<PaymentHistoric> paymentHistoricFromJson(String str) => List<PaymentHistoric>.from(json.decode(str).map((x) => PaymentHistoric.fromJson(x)));

String paymentHistoricToJson(List<PaymentHistoric> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PaymentHistoric {
  String date;
  String titleState;
  String state;
  dynamic amount;

  PaymentHistoric({
    required this.date,
    required this.titleState,
    required this.state,
    required this.amount,
  });

  factory PaymentHistoric.fromJson(Map<String, dynamic> json) => PaymentHistoric(
    date: json["date"],
    titleState: json["title_state"],
    state: json["state"],
    amount: json["amount"],
  );

  Map<String, dynamic> toJson() => {
    "date": date,
    "title_state": titleState,
    "state": state,
    "amount": amount,
  };
}
