import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TipCalculatorPage extends StatefulWidget {
  const TipCalculatorPage({super.key, required this.title});

  final String title;

  @override
  State<TipCalculatorPage> createState() => _TipCalculatorPageState();
}

class _TipCalculatorPageState extends State<TipCalculatorPage> {
  double _billAmount = 0.0;
  double _tipAmount = 0.0;
  double _tipPercentage = 0.15;

  bool _roundUpTip = false;

  void _calculateTip() {
    if (_roundUpTip) {
      setState(() {
        _tipAmount = (_tipPercentage * _billAmount).ceilToDouble();
      });
    } else {
      setState(() {
        _tipAmount = _tipPercentage * _billAmount;
      });
    }
  }

  double _verifiedInput(String value) {
    if (value.isEmpty) {
      return 0.0;
    }
    return double.parse(value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(children: [const Text('Calculate Tip')]),
            const SizedBox(height: 16),
            TextField(
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.allow(RegExp(r'^(\d+)?\.?\d{0,2}')),
              ],
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.money),
                border: OutlineInputBorder(),
                hintText: 'Bill Amount',
              ),
              onChanged: (String value) {
                setState(() {
                  _billAmount = _verifiedInput(value);
                });
                _calculateTip();
              },
            ),
            const SizedBox(height: 16),
            TextField(
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly,
              ],
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.percent),
                border: OutlineInputBorder(),
                hintText: 'Tip Percentage',
              ),
              onChanged: (String value) {
                setState(() {
                  _tipPercentage = _verifiedInput(value) / 100;
                });
                _calculateTip();
              },
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                const Text('Round up tip?'),
                Spacer(),
                Switch(
                  key: Key('roundup_key'),
                  value: _roundUpTip,
                  onChanged: (bool value) {
                    setState(() {
                      _roundUpTip = value;
                    });
                    _calculateTip();
                  },
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              'Tip Amount: \$${_tipAmount.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
