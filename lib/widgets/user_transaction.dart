import 'package:flutter/material.dart';
import '../models/transaction.dart';

import './new_transaction.dart';
import './transaction_list.dart';

class UserTransaction extends StatefulWidget {
  UserTransaction({Key key}) : super(key: key);

  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> userTransactions = [
    Transaction(
      id: 'gp1',
      title: "New Iphone",
      amount: 99999.0,
      date: DateTime.now(),
    ),
    Transaction(
      id: 'gp2',
      title: "Shoes",
      amount: 65.76,
      date: DateTime.now(),
    ),
  ];

  void _addNewTransaction(String title, double amount) {
    final newTx = Transaction(
      title: title,
      amount: amount,
      date: DateTime.now(),
      id: DateTime.now().toString(),
    );

    setState(() {
      userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addNewTransaction),
        TransactionList(
          transaction: userTransactions,
        ),
      ],
    );
  }
}
