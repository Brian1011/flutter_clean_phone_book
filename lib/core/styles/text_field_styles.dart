import 'package:flutter/material.dart';

final textFieldDecoration = InputDecoration(
  fillColor: Colors.white,
  filled: true,
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.0),
  ),
  contentPadding: const EdgeInsets.all(16.0),
  isDense: true,
  focusedBorder: OutlineInputBorder(
    borderSide: const BorderSide(
      color: Colors.green,
      width: 2.0,
    ),
    borderRadius: BorderRadius.circular(8.0),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: const BorderSide(
      color: Colors.black,
      width: 1.0,
    ),
    borderRadius: BorderRadius.circular(8.0),
  ),
);
