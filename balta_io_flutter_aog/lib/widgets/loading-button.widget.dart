import 'package:flutter/material.dart';

class LoadingButton extends StatelessWidget {
  var _font = "Big Shoulders Display";
  var busy = false;
  var invert = false;
  Function func;
  var text = "";

  LoadingButton(
    @required this.busy,
    @required this.func,
    @required this.invert,
    @required this.text,
  );

  @override
  Widget build(BuildContext context) {
    return this.busy ? Container(
      alignment: Alignment.center,
      height: 50,
      child: CircularProgressIndicator(
        backgroundColor: Colors.white,
      ),
    )
    :
    Container(
      margin: EdgeInsets.all(30),
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        color: this.invert ?
        Theme.of(context).primaryColor : Colors.white.withOpacity(0.8),
        borderRadius: BorderRadius.circular(
          60,
        ),
      ),
      child: FlatButton(
        child: Text(
          this.text,
          style: TextStyle(
            fontFamily: this._font,
            fontSize: 25,
            color: this.invert ? Colors.white.withOpacity(0.8) : Theme.of(context).primaryColor,
          ),
        ),
        onPressed: this.func,
      ),
    );
  }
}
