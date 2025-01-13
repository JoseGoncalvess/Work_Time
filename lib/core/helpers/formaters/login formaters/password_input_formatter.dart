import 'package:flutter/services.dart';

class PasswordInputFormatter extends TextInputFormatter {
  final int maxLength;

  PasswordInputFormatter(this.maxLength);

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.text.length > maxLength) {
      return oldValue;
    }
    return newValue;
  }

  String? validate(String value) {
    if (value.isEmpty) {
      return 'O Password não pode ser vazio';
    } else if (value.length != maxLength) {
      return 'O password deve ter $maxLength dígitos';
    }
    return null;
  }
}
