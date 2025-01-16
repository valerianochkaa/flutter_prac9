import 'package:flutter/material.dart';

class ThemeService {
  String _theme = 'Светлая тема';
  String get theme => _theme;
  void toggleTheme() {
    _theme = _theme == 'Светлая тема' ? 'Темная тема' : 'Светлая тема';
  }
}