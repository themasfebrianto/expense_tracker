import 'package:expense_tracker/Data/models/expense_model.dart';
import 'package:expense_tracker/core/constant/app_constant.dart';
import 'package:expense_tracker/core/utils/number_helper.dart';
import 'package:flutter/material.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem({super.key, required this.expenseModel});

  final ExpenseModel expenseModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          children: [
            Text(expenseModel.title),
            const SizedBox(height: 4),
            Row(
              children: [
                Text(NumberHelper.format(expenseModel.amount)),
                const Spacer(),
                Row(
                  children: [
                    Icon(categoryIcons[expenseModel.category]),
                    const SizedBox(width: 8),
                    Text(expenseModel.formattedDate),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
