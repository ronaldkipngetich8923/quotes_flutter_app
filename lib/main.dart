
import 'package:flutter/material.dart';
import 'qoute.dart';
import 'qoute_card.dart';
void main() => runApp(const MaterialApp(home: QoutesList(),
));

class QoutesList extends StatefulWidget {
  const QoutesList({super.key});

  @override
  State<QoutesList> createState() => _QoutesListState();
}

class _QoutesListState extends State<QoutesList> {

  List<Quote> qoutes = [
    Quote(text: "Be yourself; everyone else is already taken!", author: "Oscar Wilde"),
    Quote(text: "A strong mind can overcome any temptation. Stay focused on your goals!", author: "Nofap"),
    Quote(text: "The only way to do great work is to love what you do!", author: "Steve "),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text("Awesome Qoutes"),
          centerTitle: true,
          backgroundColor: Colors.amberAccent,
        ),
        body: Container(
          child: Column(
            children: qoutes.map((quote) => QouteCard(
                quote: quote,
              delete: (){
                  setState(() {
                    qoutes.remove(quote);
                  });
              }
            )).toList(),
          ),
        ),
      ),
    );
  }
}


