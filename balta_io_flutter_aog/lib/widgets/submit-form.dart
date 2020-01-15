import 'package:flutter/material.dart';
import 'package:flutter_aog/widgets/input.widget.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

import 'loading-button.widget.dart';

class SubmitForm extends StatelessWidget {
  var _gasCtrl = MoneyMaskedTextController();
  var _alcCtrl = MoneyMaskedTextController();
  var busy = false;
  Function func;

  SubmitForm(
    @required this._gasCtrl,
    @required this._alcCtrl,
    @required this.busy,
    @required this.func,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(
            left: 30,
            right: 30,
          ),
          child: Input("Gasolina", this._gasCtrl),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 30,
            right: 30,
          ),
          child: Input("Álcool", this._alcCtrl),
        ),
        LoadingButton(this.busy, this.func, false, "CALCULAR"),
      ],
    );
  }
}
