import 'package:flutter/material.dart';
import 'package:shoe_vault/core/di/locator.dart';
import 'package:shoe_vault/shoe_vault_app.dart';

void main() {
  setupLocator();
  runApp(ShoeVaultApp());
}
