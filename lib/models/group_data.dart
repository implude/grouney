import 'package:flutter/material.dart';

class GroupData {
  final String name;
  final List<String> people;
  final DateTimeRange dateRange;
  final String destination;

  const GroupData({
    required this.name,
    required this.people,
    required this.dateRange,
    required this.destination,
  });
}
