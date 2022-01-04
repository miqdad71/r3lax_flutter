import 'package:flutter/material.dart';

class SortModel {
  final String code;
  final String name;
  final IconData icon;

  SortModel(
    this.code,
    this.name,
    this.icon,
  );

  factory SortModel.fromJson(Map<String, dynamic> json) {
    // if (json == null) return null;
    return SortModel(
      json['code'] ?? "Unknown",
      json['name'] ?? "Unknown",
      json['icon'] ?? Icons.help,
    );
  }
}
