import 'package:expense_tracker/Presentation/pages/expense_page.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initializeDateFormatting('id_ID', null);
  runApp(
    const MaterialApp(
      title: 'Expense Tracker',
      debugShowCheckedModeBanner: false,
      home: ExpensePage(),
    ),
  );
}
