import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  const NewTransaction(this.addTx);

  @override
  Widget build(BuildContext context) {
    final titleController = TextEditingController();
    final amountController = TextEditingController();

    void newTransaction() {
      addTx(
        titleController.text,
        double.parse(amountController.text),
      );
    }

    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              controller: titleController,
              decoration: InputDecoration(
                labelText: "Title",
              ),
            ),
            TextField(
              controller: amountController,
              decoration: InputDecoration(
                labelText: "Amount",
              ),
              keyboardType: TextInputType.numberWithOptions(
                decimal: true,
              ),
              onSubmitted: (_) => newTransaction(),
            ),
            FlatButton(
              child: Text('Add Transaction'),
              textColor: Colors.purple,
              onPressed: newTransaction,
            )
          ],
        ),
      ),
    );
  }
}
