import 'package:flutter/material.dart';
import 'package:flutter_aog/widgets/logo.widgets.dart';
import 'package:flutter_aog/widgets/submit-form.dart';
import 'package:flutter_aog/widgets/success.widget.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _gasCtrl = MoneyMaskedTextController();

  var _alcCtrl = MoneyMaskedTextController();

  Color _color = Colors.deepPurple;

  var _busy = false;

  var _completed = false;

  var _resultText = "Compensa utilizar álcool?";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: AnimatedContainer(
        duration: Duration(milliseconds: 1200),
        color: this._color,
        child: ListView(
          children: <Widget>[
            Logo(),
            this._completed
                ? Success(this._resultText, this.reset)
                : SubmitForm(
                    _gasCtrl,
                    _alcCtrl,
                    this._busy,
                    this.calculate,
                  )
          ],
        ),
      ),
    );
  }

  Future calculate() {
    double alc =
        double.parse(this._alcCtrl.text.replaceAll(RegExp(r'[,.]'), ''));
    double gas =
        double.parse(this._gasCtrl.text.replaceAll(RegExp(r'[,.]'), ''));
    double res = alc / gas;

    setState(() {
      this._completed = false;
      this._busy = true;
      this._color = Colors.deepPurpleAccent;
    });

    return Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        if (res >= 0.7) {
          this._resultText = "Compensa utilizar Gasolina!";
        } else {
          this._resultText = "Compensa utilizar Álcool!";
        }
        this._completed = true;
        this._busy = false;
      });
    });
  }

  reset() {
    setState(() {
      this._alcCtrl = MoneyMaskedTextController();
      this._gasCtrl = MoneyMaskedTextController();
      this._completed = false;
      this._busy = false;
      this._color = Colors.deepPurple;
    });
  }
}
