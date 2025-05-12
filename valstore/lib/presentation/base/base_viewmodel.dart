import 'package:flutter/cupertino.dart';

abstract class BaseViewModel extends ChangeNotifier {
  bool isDisposed = false;

  void onDispose();

  @override
  void notifyListeners() {
    if(!isDisposed && hasListeners) {
      super.notifyListeners();
    }
  }

  @override
  void dispose() {
    isDisposed = true;
    super.dispose();
  }

  void safeNotifyListeners() {
    if(isDisposed) return;
    if (!isDisposed) {
      notifyListeners();
    }
  }
}