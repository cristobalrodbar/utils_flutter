import 'package:connectivity/connectivity.dart';
import 'package:data_connection_checker/data_connection_checker.dart';

Future<bool> hayInternet() async {
  var connectivityResult = await (Connectivity().checkConnectivity());
  bool hayInternet = false;
  if (connectivityResult == ConnectivityResult.mobile ||
      connectivityResult == ConnectivityResult.wifi) {
    hayInternet = await _revisarConexion();
  }
  return hayInternet;
}

Future<bool> _revisarConexion() async {
  bool conexion = false;
  await DataConnectionChecker().hasConnection.then((pingResultado) {
    if (pingResultado) {
      // Mobile data detected & internet connection confirmed.
      conexion = true;
    } else {
      // Mobile data detected but no internet connection found.
      conexion = false;
    }
  }).catchError((onError) {
    conexion = false;
  });
  return conexion;
}
