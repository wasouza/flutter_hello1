import 'package:flutter/material.dart';

class HelloPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 2"),
      ),
      body: _body(context),
    );
  }

  _body(BuildContext context) {
    return Center(
      child: RaisedButton(
        child: Text("Voltar"),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}
