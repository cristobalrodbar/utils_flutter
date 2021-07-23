import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void mostrarToast(String mensaje, bool msgCorto) {
  Fluttertoast.showToast(
    msg: mensaje,
    toastLength: msgCorto == true ? Toast.LENGTH_SHORT : Toast.LENGTH_LONG,
    gravity: ToastGravity.CENTER,
    backgroundColor: Colors.black54,
    textColor: Colors.white,
    fontSize: 16.0,
  );
}
