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
      isScrollControlled: true,
      context: context,
      builder: (ctx) {
        return NewExpense(onAddExpense: _addExpense);
      },
    );
  }

  void _addExpense(ExpenseModel expense) {
    setState(() {
      _registeredExpneses.add(expense);
    });
  }

  void _removeExpense(ExpenseModel expense) {
    final expenseIndex = _registeredExpneses.indexOf(expense);
    setState(() {
      _registeredExpneses.remove(expense);
    });
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: Duration(seconds: 5),
        content: Text('Expense deleted'),
        action: SnackBarAction(
          label: 'Undo',
          onPressed: () {
            setState(() {
              _registeredExpneses.insert(expenseIndex, expense);
            });
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget mainContent = const Center(
      child: Text('No expenses found. Start doing some!'),
    ); // Widget type can be assigned with Widget Tree like ExpenseList

    if (_registeredExpneses.isNotEmpty) {
      mainContent = ExpenseList(
        expenses: _registeredExpneses,
        onRemoveExpense: _removeExpense,
      );
    } // conditional render
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
            Expanded(child: mainContent),
          ],
        ),
      ),
    );
  }
}
