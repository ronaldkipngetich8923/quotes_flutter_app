import 'package:flutter/material.dart';
import 'package:qoutes_list_app/qoute.dart';
import 'qoute.dart';

class QouteCard extends StatelessWidget {

  final Quote quote;
  final Function delete;
  QouteCard({required this.quote, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(quote.text, style: TextStyle(
              fontSize: 18.0,
              color: Colors.grey[600],
            ),
            ),
            SizedBox(height: 5.0,),
            Text(quote.author,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey[600],
              ),),
            SizedBox(height: 5.0),
            TextButton.icon(
              onPressed: (){
                   delete();
              },
              icon: Icon(Icons.delete, size: 15),
              label: Text("Delete Quote"),
            ),
          ],
        ),
      ),
    );
  }
}