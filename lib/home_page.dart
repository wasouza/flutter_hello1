import 'package:flutter/material.dart';
import 'package:flutter_hello1/pages/hello_page1.dart';
import 'package:flutter_hello1/pages/hello_page2.dart';
import 'package:flutter_hello1/pages/hello_page3.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello Flutter"),
        centerTitle: true,
      ),
      body: _body(context),
    );
  }

  _body(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _text(),
          _pageview(),
          _buttons(context)
        ],
      ),
    );
  }

  Container _pageview() {
    return Container(
          margin: EdgeInsets.only(top: 20, bottom: 20),
          height: 300,
          child: PageView(
            children: <Widget> [
              _img("assets/images/dog1.png"),
              _img("assets/images/dog2.png"),
              _img("assets/images/dog3.png"),
              _img("assets/images/dog4.png"),
              _img("assets/images/dog5.png")
            ],
          ),
        );
  }

  Column _buttons(BuildContext context) {
    return Column(
          children: <Widget> [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget> [
                _button(context, "ListView", () => _onClickNavigator(context)),
                _button(context, "Page 2", _onClickSnack),
                _button(context, "Page 3", _onClickSnack)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget> [
                _button(context, "Snack", _onClickSnack),
                _button(context, "Dialog", _onClickDialog),
                _button(context, "Toast", _onClickToast)
              ],
            )
          ],
        );
  }

  void _onClickNavigator(BuildContext context) {
     Navigator.push(context,  MaterialPageRoute(builder: (BuildContext context) {
       return HelloPage1();
     }));
  }

  _onClickSnack() {
  }

  _onClickDialog() {
  }

  _onClickToast() {
  }

  _button(BuildContext context, String text, Function onPressed){
    return ElevatedButton(
      //color: Colors.blue,
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 30,
        ),
      ),
      onPressed: onPressed()
    );
  }

  _img(String img){
    return Image.asset(
        img,
        fit: BoxFit.cover,
    );
  }

  _text() {
    return Text(
      "Hello World",
      style: TextStyle(
          fontSize: 30,
          color: Colors.blue,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          decoration: TextDecoration.underline,
          decorationColor: Colors.red,
          decorationStyle: TextDecorationStyle.wavy),
    );
  }
}
