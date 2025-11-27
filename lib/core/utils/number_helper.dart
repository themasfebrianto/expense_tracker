import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NumberHelper {
  static String format(num value) {
    return NumberFormat.currency(
      locale: 'id_ID',
      symbol: 'Rp.',
      decimalDigits: 0,
    ).format(value);
  }

  static TextEditingValue formatRupiahInput(String value) {
    final cleaned = value.replaceAll(RegExp(r'[^0-9]'), '');

    if (cleaned.isEmpty) {
      return const TextEditingValue(text: '');
    }

    final number = int.parse(cleaned);
    final formatted = format(number);

    return TextEditingValue(
      text: formatted,
      selection: TextSelection.collapsed(offset: formatted.length),
    );
  }
}
