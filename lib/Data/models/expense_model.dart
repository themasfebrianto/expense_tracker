import 'package:expense_tracker/core/enums/category_enum.dart';
import 'package:expense_tracker/core/utils/date_formater.dart';
import 'package:uuid/uuid.dart';

const uuid = Uuid();

class ExpenseModel {
  ExpenseModel({
    required this.title,
    required this.category,
    required this.amount,
    required this.date,
  }) : id = uuid.v4();
  final String id;
  final String title;
  final CategoryEnum category;
  final double amount;
  final DateTime date;

  String get formattedDate {
    return localDateWithHm.format(date);
  }
}
