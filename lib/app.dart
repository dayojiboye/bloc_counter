import 'package:bloc_counter/counter/view/counter_page.dart';
import 'package:flutter/material.dart';

// A material app that sets the home to CounterPage
class CounterApp extends MaterialApp {
  const CounterApp({super.key}) : super(home: const CounterPage());
}
