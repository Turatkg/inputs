import 'package:flutter/material.dart';
import 'package:inputs_app/esepte.dart';
import 'package:inputs_app/user_data.dart';
import 'package:inputs_app/widgets/constanst.dart';

class ResultPage extends StatelessWidget {
  final UserData _userData;

  ResultPage(this._userData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Жыйынтык бети'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 8,
            child: Center(
              child: Text(
                Esepte(_userData).eseptegich().round().toString(),
                style: bTextStilderi,
                textScaleFactor: 2,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Артка кайт',
                style: bTextStilderi,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
