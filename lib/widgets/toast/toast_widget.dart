import 'package:fluttertoast/fluttertoast.dart';

Future<bool?> showToastWithoutContext({required String message}) {
  return Fluttertoast.showToast(
    msg: message,
    gravity: ToastGravity.BOTTOM,
    fontSize: 16,
    toastLength: Toast.LENGTH_LONG,
  );
}
