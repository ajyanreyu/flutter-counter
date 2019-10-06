import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CounterPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CounterrPageState();
}

class _CounterrPageState extends State<CounterPage> {
  final _textStyle = new TextStyle(fontSize: 25);

  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Counter Example'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Click number:', style: _textStyle),
            Text('$_count', style: _textStyle),
          ],
        )),
        floatingActionButton: _createButtons());
  }

  Widget _createButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30.0),
        FloatingActionButton(
            child: Icon(Icons.exposure_zero), onPressed: _reset),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(),
        )),
        FloatingActionButton(child: Icon(Icons.remove), onPressed: _subtract),
        SizedBox(
          width: 5.0,
        ),
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: _added,
        )
      ],
    );
  }

  
  Future _added() async {
    setState(() => _count++);
  }

  void _subtract() {
    setState(() => _count--);
  }

  void _reset() {
    setState(() => _count = 0);
  }
}
