import 'package:flutter/services.dart';

class MatriculaInputFormatter extends TextInputFormatter {
  final int maxLength;

  MatriculaInputFormatter(this.maxLength);

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.text.length > maxLength) {
      return oldValue;
    }

    final newText = newValue.text.replaceAll(RegExp(r'[^0-9]'), '');
    return newValue.copyWith(
      text: newText,
      selection: newValue.selection,
    );
  }

  String? validate(String value) {
    if (value.isEmpty) {
      return 'Matrícula não pode ser vazia';
    } else if (value.length != maxLength) {
      return 'Matrícula deve ter $maxLength dígitos';
    }
    return null;
  }
}
