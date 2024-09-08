import 'package:flutter/material.dart';

class HoverProvider with ChangeNotifier {
  bool _isHovering = false;

  bool get isHovering => _isHovering;

  void setHovering(bool value) {
    _isHovering = value;
    notifyListeners(); 
  }
}
