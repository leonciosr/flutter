import 'package:flutter/material.dart';

import 'loading-button.widget.dart';

class Success extends StatelessWidget {
  var result = "";
  Function reset;
  var _font = "Big Shoulders Display";

  Success(
    @required this.result,
    @required this.reset, 
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.8),
        borderRadius: BorderRadius.circular(
          25,
        ),
      ),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 50,
          ),
          Text(
            this.result,
            style: TextStyle(
              fontFamily: this._font,
              fontSize: 40,
              color: Theme.of(context).primaryColor,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          LoadingButton(false, this.reset, true, "CALCULAR NOVAMENTE"),
        ],
      ),
    );
  }
}
