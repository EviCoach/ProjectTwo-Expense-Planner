import 'package:flutter/foundation.dart';

class Transaction {
  // blueprint of a normal dart object
  // define how a transaction should look like
  final String id;
  final String title;
  final double amount;
  final DateTime date;

  Transaction(
      {@required this.id,
      @required this.title,
      @required this.amount,
      @required this.date});
}
