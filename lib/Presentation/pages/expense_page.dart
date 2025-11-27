import 'package:expense_tracker/Data/models/expense_model.dart';
import 'package:expense_tracker/Presentation/widgets/expense_list.dart';
import 'package:expense_tracker/Presentation/widgets/new_expense.dart';
import 'package:expense_tracker/core/enums/category_enum.dart';
import 'package:flutter/material.dart';

class ExpensePage extends StatefulWidget {
  const ExpensePage({super.key});

  @override
  State<ExpensePage> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<ExpensePage> {
  final List<ExpenseModel> _registeredExpneses = [
    ExpenseModel(
      title: 'flutter Course',
      category: CategoryEnum.work,
      amount: 150000,
      date: DateTime.now(),
    ),
    ExpenseModel(
      title: 'Cinema',
      category: CategoryEnum.leisure,
      amount: 50000,
      date: DateTime.now(),
    ),
  ];

  void _openAddExpenseOverlay() {
    showModalBottomSheet(
      context: context,
      builder: (ctx) {
        return const NewExpense();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expanse Tracker'),
        actions: [
          IconButton(
            onPressed: _openAddExpenseOverlay,
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Text('the chart'),
            Expanded(child: ExpenseList(expenses: _registeredExpneses)),
          ],
        ),
      ),
    );
  }
}
