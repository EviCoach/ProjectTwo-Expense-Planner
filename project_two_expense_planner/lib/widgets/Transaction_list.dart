import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/Transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      child: ListView.builder(
        itemBuilder: (ctx, index) {
          return Card(
            elevation: 5,
            margin: EdgeInsets.symmetric(horizontal: 5, vertical: 8),
            child: ListTile(
              leading: CircleAvatar(
                radius: 30,
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: FittedBox(
                    child: Text(
                      '\$${transactions[index].amount}',
                    ),
                  ),
                ),
              ),
              title: Text(
                /* element in the middle */
                transactions[index].title,
                style: Theme.of(context).textTheme.title,
              ),
              subtitle: Text(/* additional content displayed below the title */
                  DateFormat.yMMMd().format(transactions[index].date)),
              trailing: IconButton(
                icon: Icon(Icons.delete),
                onPressed: () {},
              ),
            ),
          );
        },
        itemCount: transactions.length,
      ),
    );
  }
}
