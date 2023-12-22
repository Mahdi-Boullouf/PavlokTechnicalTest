import 'package:flutter/material.dart';
import 'package:pavlok_app/core/extensions/string_extension.dart';


abstract class Validators {
  Validators._();

  static FormFieldValidator<String>? getValidator(TextInputType? keyboardType, {bool isConfirmation = false}) {

    return switch (keyboardType) {
      TextInputType.emailAddress => Validators.email,
      TextInputType.number => Validators.number,
      _ => null,
    };
  }

  static String? required(String? input) {
    if (input?.trim().isEmpty ?? true) {
      return 'Required';
    }

    return null;
  }





  static String? email(String? email) {
    if (email == null || email.isEmpty) {
      return 'Required';
    }

    if (!email.isValidEmail()) {
      return 'Enter valid email';
    }

    return null;
  }

  static String? password(String? password) {
    if (password == null || password.isEmpty) {
      return 'Required';
    }

    if (password.length < 6) {
      return 'Password must be at least 6 characters long';
    }



    return null;
  }

  static String? number(String? input) {
    if (input == null) {
      return 'Required';
    }

    final number = num.tryParse(input);
    if (number == null) {
      return 'Enter valid number';
    }

    return null;
  }

  static String? positiveInteger(String? input) {
    if (input == null) {
      return 'Required';
    }

    final integer = int.tryParse(input);
    if (integer == null || integer <= 0) {
      return 'Enter positive integer';
    }

    return null;
  }
}
