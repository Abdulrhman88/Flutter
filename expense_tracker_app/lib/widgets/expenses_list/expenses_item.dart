import 'package:expense_tracker_app/models/expense.dart';
import 'package:flutter/material.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem(this.expense, {super.key});

  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              expense.title,
              style: Theme.of(context).textTheme.titleLarge,
            ), //Bold Text for the title for expense
            const SizedBox(
              height: 4,
            ),
            Row(
              children: [
                Text(
                    '\$${expense.amount.toStringAsFixed(2)}'), //<< 12.3443 =>12.34 usfal AsExponential + this how to show the amount of expenses
                const Spacer(), // create Widget to take all the space between other widget
                Row(
                  children: [
                    Icon(categoryIcons[expense.category]),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(expense.formattedDate),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
