class TipModel {
  String id;
  String title;
  String date;
  double amount;
  double tip;
  TipModel({
    required this.id,
    required this.title,
    required this.date,
    required this.amount,
    required this.tip,
  });

  factory TipModel.fromJson(Map<String, dynamic> json) {
    return TipModel(
      id: json['id'],
      title: json['title'],
      date: json['date'],
      amount: json['amount'].toDouble(),
      tip: json['tip'].toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> jsonData = {
      'id': id,
      'title': title,
      'date': date,
      'amount': amount,
      'tip': tip,
    };
    return jsonData;
  }
}
