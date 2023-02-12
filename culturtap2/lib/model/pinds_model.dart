import 'dart:convert';


List<pings_model> pings_modelFromJson(String str) => List<pings_model>.from(json.decode(str).map((x) => pings_model.fromJson(x)));

String pings_modelToJson(List<pings_model> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class pings_model {
    pings_model({
        required this.callId,
        required this.requestFrom,
        required this.requestTo,
        required this.title,
        required this.from,
        required this.to,
        required this.status,
    });

    String callId;
    int requestFrom;
    int requestTo;
    String title;
    DateTime from;
    DateTime to;
    String status;

    factory pings_model.fromJson(Map<String, dynamic> json) => pings_model(
        callId: json["callId"],
        requestFrom: json["requestFrom"],
        requestTo: json["requestTo"],
        title: json["title"],
        from: DateTime.parse(json["from_"]),
        to: DateTime.parse(json["to"]),
        status: json["status"],
    );

    Map<String, dynamic> toJson() => {
        "callId": callId,
        "requestFrom": requestFrom,
        "requestTo": requestTo,
        "title": title,
        "from_": from.toIso8601String(),
        "to": to.toIso8601String(),
        "status": status,
    };
}
