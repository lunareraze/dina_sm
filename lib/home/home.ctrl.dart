part of '_index.dart';

class HomeCtrl {
  void tambah() {
    _dt.rxCount.state = _dt.rxCount.state + 5;
  }

  void kurang() {
    _dt.rxCount.state = _dt.rxCount.state - 5;
  }
}
